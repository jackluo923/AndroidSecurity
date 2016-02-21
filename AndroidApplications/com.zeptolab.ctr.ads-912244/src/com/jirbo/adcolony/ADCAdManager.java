package com.jirbo.adcolony;

import android.os.Handler;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.jirbo.adcolony.ADCDownload.Listener;
import com.zeptolab.ctr.scorer.GoogleScorer;

class ADCAdManager implements Listener {
    App app;
    boolean attempted_load;
    ADCController controller;
    boolean do_refresh;
    Handler h;
    boolean is_configured;
    boolean needs_refresh;
    double next_refresh_time;
    Runnable r;
    boolean try_refresh;

    ADCAdManager(ADCController aDCController) {
        this.do_refresh = true;
        this.try_refresh = false;
        this.app = new App();
        this.controller = aDCController;
        this.h = new Handler();
        this.r = new Runnable() {
            public void run() {
                ADCAdManager.this.do_refresh = true;
                if (ADCAdManager.this.try_refresh) {
                    ADCAdManager.this.refresh();
                }
            }
        };
    }

    void configure() {
    }

    String find_v4vc_zone() {
        if (!this.is_configured) {
            return null;
        }
        String str = null;
        int i = 0;
        while (i < this.app.zones.count()) {
            Zone zone = this.app.zones.get(i);
            if (zone.is_v4vc_zone()) {
                str = zone.uuid;
                if (zone.is_ad_available()) {
                    return zone.uuid;
                }
            }
            i++;
        }
        return str;
    }

    String find_video_zone() {
        if (!this.is_configured) {
            return null;
        }
        String str = null;
        int i = 0;
        while (i < this.app.zones.count()) {
            Zone zone = this.app.zones.get(i);
            if (zone.is_video_zone()) {
                str = zone.uuid;
                if (zone.is_ad_available()) {
                    return zone.uuid;
                }
            }
            i++;
        }
        return str;
    }

    boolean is_ad_available(String str) {
        return is_ad_available(str, false);
    }

    boolean is_ad_available(String str, boolean z) {
        if (z) {
            return is_ad_available_errorless(str, z);
        }
        if (!this.is_configured) {
            return ADCLog.info.fail("Ads are not ready to be played, as they are still downloading.");
        }
        return z ? this.app.is_ad_available(str, true, false) : this.app.is_ad_available(str, false, true);
    }

    boolean is_ad_available_errorless(String str, boolean z) {
        if (!this.is_configured) {
            return false;
        }
        return z ? this.app.is_ad_available(str, true, false) : this.app.is_ad_available(str, false, true);
    }

    boolean is_zone_v4vc(String str) {
        return is_zone_v4vc(str, true);
    }

    boolean is_zone_v4vc(String str, boolean z) {
        int i = 0;
        while (i < this.app.zones.count()) {
            Zone zone = this.app.zones.get(i);
            if (zone.is_v4vc_zone(z) && zone.uuid.equals(str)) {
                return true;
            }
            i++;
        }
        return false;
    }

    void load() {
        ADCLog.debug.println((Object)"Attempting to load backup manifest from file.");
        ADCDataFile aDCDataFile = new ADCDataFile("manifest.txt");
        Table load_Table = ADCJSON.load_Table(aDCDataFile);
        if (load_Table == null) {
            return;
        }
        if (parse_manifest(load_Table)) {
            this.is_configured = true;
            this.app.cache_media();
        } else {
            ADCLog.debug.println((Object)"Invalid manifest loaded.");
            aDCDataFile.delete();
            this.is_configured = false;
        }
    }

    public void on_download_finished(ADCDownload aDCDownload) {
        active = true;
        if (aDCDownload.success) {
            ADCLog.info.println((Object)"Finished downloading:");
            ADCLog.info.println(aDCDownload.url);
            Table parse_Table = ADCJSON.parse_Table(aDCDownload.data);
            if (parse_Table == null) {
                ADCLog.dev.println((Object)"Invalid JSON in manifest.  Raw data:");
                ADCLog.dev.println(aDCDownload.data);
            } else if (parse_manifest(parse_Table)) {
                ADCLog.debug.println((Object)"Ad manifest updated.");
                new ADCDataFile("manifest.txt").save(aDCDownload.data);
                this.is_configured = true;
                this.app.cache_media();
                if (this.app.view_network_pass_filter == null || this.app.view_network_pass_filter.equals(AdTrackerConstants.BLANK)) {
                    this.app.view_network_pass_filter = "all";
                }
                if (this.app.cache_network_pass_filter == null || this.app.cache_network_pass_filter.equals(AdTrackerConstants.BLANK)) {
                    this.app.cache_network_pass_filter = "all";
                }
                ADC.has_ad_availability_changed();
            } else {
                ADCLog.debug.println((Object)"Invalid manifest.");
            }
        } else {
            ADCLog.info.println((Object)"Error downloading:");
            ADCLog.info.println(aDCDownload.url);
        }
    }

    boolean parse_manifest(Table table) {
        if (table == null || !table.get_String("status").equals("success") || !this.app.parse(table.get_Table("app"))) {
            return false;
        }
        ADCLog.dev.println((Object)"Finished parsing manifest");
        if (this.app.log_level.equalsIgnoreCase("none")) {
            ADC.set_log_level(GoogleScorer.CLIENT_PLUS);
        } else {
            ADCLog.info.println((Object)"Enabling debug logging.");
            ADC.set_log_level(1);
        }
        return true;
    }

    void perform_refresh() {
        boolean z = true;
        active = true;
        ADCLog.debug.println((Object)"Refreshing manifest");
        if (ADCNetwork.connected()) {
            Object aDCStringBuilder = new ADCStringBuilder();
            ADCConfiguration aDCConfiguration = this.controller.configuration;
            aDCStringBuilder.print(ADCConfiguration.ad_manifest_url);
            aDCStringBuilder.print("?app_id=");
            aDCStringBuilder.print(this.controller.configuration.app_id);
            aDCStringBuilder.print("&zones=");
            if (this.controller.configuration.zone_ids != null) {
                String[] strArr = this.controller.configuration.zone_ids;
                int length = strArr.length;
                int i = 0;
                while (i < length) {
                    String str = strArr[i];
                    if (z) {
                        z = false;
                    } else {
                        aDCStringBuilder.print(",");
                    }
                    aDCStringBuilder.print(str);
                    i++;
                }
            }
            aDCStringBuilder.print(this.controller.configuration.info_string);
            aDCStringBuilder.print("&carrier=");
            aDCStringBuilder.print(ADCNetwork.url_encoded(this.controller.configuration.carrier_name));
            aDCStringBuilder.print("&network_type=");
            if (ADCNetwork.using_wifi()) {
                aDCStringBuilder.print("wifi");
            } else if (ADCNetwork.using_mobile()) {
                aDCStringBuilder.print("cell");
            } else {
                aDCStringBuilder.print("none");
            }
            aDCStringBuilder.print("&custom_id=");
            aDCStringBuilder.print(ADCNetwork.url_encoded(this.controller.configuration.custom_id));
            ADCLog.debug.println((Object)"Downloading ad manifest from");
            ADCLog.debug.println(aDCStringBuilder);
            new ADCDownload(this.controller, aDCStringBuilder.toString(), this).start();
        } else {
            ADCLog.debug.println((Object)"Not connected to network.");
            ADCLog.dev.print("attempted_load:").print(this.attempted_load).print(" is_configured:").println(this.is_configured);
            if (!this.attempted_load) {
                this.attempted_load = true;
                if (!this.is_configured) {
                    load();
                }
            }
        }
    }

    void refresh() {
        if (this.do_refresh || disable_block) {
            this.do_refresh = false;
            this.needs_refresh = true;
            this.try_refresh = false;
            this.h.postDelayed(this.r, 60000);
        } else {
            this.try_refresh = true;
        }
    }

    void update() {
        if (ADCUtil.current_time() >= this.next_refresh_time) {
            this.needs_refresh = true;
        }
        if (this.needs_refresh) {
            this.needs_refresh = false;
            if (ADCDevice.memory_class() >= 32) {
                this.next_refresh_time = ADCUtil.current_time() + 600.0d;
                perform_refresh();
            }
        }
        if (ADCNetwork.connected()) {
            if (!connected) {
                ADC.has_ad_availability_changed();
            }
            connected = true;
        } else {
            if (connected) {
                ADC.has_ad_availability_changed();
            }
            connected = false;
        }
    }
}