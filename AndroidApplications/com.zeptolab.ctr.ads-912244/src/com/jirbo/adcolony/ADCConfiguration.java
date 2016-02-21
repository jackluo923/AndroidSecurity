package com.jirbo.adcolony;

import android.os.Build.VERSION;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.zbuild.ZBuildConfig;

class ADCConfiguration {
    static String ad_manifest_url;
    String android_id;
    String android_id_sha1;
    String app_id;
    String app_version;
    String available_stores;
    String carrier_name;
    boolean configured;
    ADCController controller;
    Ad current_ad;
    double current_progress;
    Zone current_zone;
    String custom_id;
    String device_api;
    String device_id;
    String device_manufacturer;
    String device_model;
    String device_type;
    boolean fatal_error;
    String imei;
    String imei_sha1;
    String info_string;
    String language;
    String memory_class;
    String memory_used;
    String open_udid;
    String origin_store;
    String os_name;
    String os_version;
    Table properties;
    String sdk_type;
    String sdk_version;
    int session_timeout_seconds;
    boolean skippable;
    String[] zone_ids;

    static {
        ad_manifest_url = VERSION.SDK_INT >= 10 ? "https://androidads20.adcolony.com/configure" : "http://androidads20staging.adcolony.com/configure";
    }

    ADCConfiguration(ADCController aDCController) {
        this.sdk_version = "2.0.7";
        this.session_timeout_seconds = 300;
        this.fatal_error = false;
        this.configured = false;
        this.properties = new Table();
        this.current_progress = 0.0d;
        this.os_name = "android";
        this.sdk_type = "android_native";
        this.app_version = "1.0";
        this.origin_store = ZBuildConfig.market;
        this.skippable = false;
        this.custom_id = AdTrackerConstants.BLANK;
        this.controller = aDCController;
    }

    void configure() {
        while (!AdColony.advertising_id_ready) {
            try {
                Thread.sleep(50);
            } catch (Exception e) {
            }
        }
        this.controller.zone_state_manager.load();
        this.android_id = either_or(ADCDevice.android_id(), AdTrackerConstants.BLANK);
        this.android_id_sha1 = either_or(ADCUtil.calculate_sha1(this.android_id), AdTrackerConstants.BLANK);
        this.carrier_name = either_or(ADCDevice.carrier_name(), AdTrackerConstants.BLANK);
        if (this.device_id == null) {
            this.device_id = either_or(ADCDevice.device_id(), AdTrackerConstants.BLANK);
        }
        this.device_manufacturer = either_or(ADCDevice.manufacturer(), AdTrackerConstants.BLANK);
        this.device_model = either_or(ADCDevice.model(), AdTrackerConstants.BLANK);
        this.language = either_or(ADCDevice.language(), "en");
        this.open_udid = either_or(ADCDevice.open_udid(), AdTrackerConstants.BLANK);
        this.os_version = either_or(ADCDevice.os_version(), AdTrackerConstants.BLANK);
        this.device_api = either_or(AdTrackerConstants.BLANK + VERSION.SDK_INT, AdTrackerConstants.BLANK);
        this.imei = either_or(ADCDevice.imei(), AdTrackerConstants.BLANK);
        this.imei_sha1 = either_or(ADCUtil.calculate_sha1(this.imei), AdTrackerConstants.BLANK);
        this.memory_class = either_or(AdTrackerConstants.BLANK + ADCDevice.memory_class(), AdTrackerConstants.BLANK);
        this.memory_used = either_or(AdTrackerConstants.BLANK + ADCDevice.memory_used(), AdTrackerConstants.BLANK);
        os_version = this.os_version;
        sdk_version = this.sdk_version;
        if (is_tablet) {
            this.device_type = "tablet";
        } else {
            this.device_type = ZBuildConfig.device;
        }
        this.available_stores = AdTrackerConstants.BLANK;
        if (ADCUtil.application_exists(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE) || ADCUtil.application_exists("com.android.market")) {
            this.available_stores = ZBuildConfig.market;
        }
        if (ADCUtil.application_exists("com.amazon.venezia")) {
            if (this.available_stores.length() > 0) {
                this.available_stores += ",";
            }
            this.available_stores += "amazon";
        }
        if (ADCLog.debug.enabled) {
            ADCLog.debug.print("sdk_version:").println(this.sdk_version);
            ADCLog.debug.print("ad_manifest_url:").println(ad_manifest_url);
            ADCLog.debug.print("app_id:").println(this.app_id);
            ADCLog.debug.print("zone_ids:").println(this.zone_ids);
            ADCLog.debug.print("os_name:").println(this.os_name);
            ADCLog.debug.print("sdk_type:").println(this.sdk_type);
            ADCLog.debug.print("app_version:").println(this.app_version);
            ADCLog.debug.print("origin_store:").println(this.origin_store);
            ADCLog.debug.print("skippable:").println(this.skippable);
            ADCLog.debug.print("android_id:").println(this.android_id);
            ADCLog.debug.print("android_id_sha1:").println(this.android_id_sha1);
            ADCLog.debug.print("available_stores:").println(this.available_stores);
            ADCLog.debug.print("carrier_name:").println(this.carrier_name);
            ADCLog.debug.print("custom_id:").println(this.custom_id);
            ADCLog.debug.print("device_id:").println(this.device_id);
            ADCLog.debug.print("device_manufacturer:").println(this.device_manufacturer);
            ADCLog.debug.print("device_model:").println(this.device_model);
            ADCLog.debug.print("device_type:").println(this.device_type);
            ADCLog.debug.print("imei:").println(this.imei);
            ADCLog.debug.print("imei_sha1:").println(this.imei_sha1);
            ADCLog.debug.print("language:").println(this.language);
            ADCLog.debug.print("open_udid:").println(this.open_udid);
            ADCLog.debug.print("os_version:").println(this.os_version);
        }
        ADCStringBuilder aDCStringBuilder = new ADCStringBuilder();
        aDCStringBuilder.print("&os_name=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.os_name));
        aDCStringBuilder.print("&os_version=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.os_version));
        aDCStringBuilder.print("&device_api=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.device_api));
        aDCStringBuilder.print("&app_version=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.app_version));
        aDCStringBuilder.print("&android_id_sha1=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.android_id_sha1));
        aDCStringBuilder.print("&device_id=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.device_id));
        aDCStringBuilder.print("&open_udid=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.open_udid));
        aDCStringBuilder.print("&device_type=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.device_type));
        aDCStringBuilder.print("&ln=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.language));
        aDCStringBuilder.print("&device_brand=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.device_manufacturer));
        aDCStringBuilder.print("&device_model=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.device_model));
        aDCStringBuilder.print("&screen_width=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(AdTrackerConstants.BLANK + ADCDevice.display_width()));
        aDCStringBuilder.print("&screen_height=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(AdTrackerConstants.BLANK + ADCDevice.display_height()));
        aDCStringBuilder.print("&sdk_type=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.sdk_type));
        aDCStringBuilder.print("&sdk_version=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.sdk_version));
        aDCStringBuilder.print("&origin_store=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.origin_store));
        aDCStringBuilder.print("&available_stores=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.available_stores));
        aDCStringBuilder.print("&imei_sha1=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.imei_sha1));
        aDCStringBuilder.print("&memory_class=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.memory_class));
        aDCStringBuilder.print("&memory_used_mb=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(this.memory_used));
        aDCStringBuilder.print("&advertiser_id=");
        aDCStringBuilder.print(ADCNetwork.url_encoded(ADCDevice.advertising_id));
        aDCStringBuilder.print("&limit_tracking=");
        aDCStringBuilder.print(ADCDevice.limit_ad_tracking);
        this.info_string = aDCStringBuilder.toString();
        this.controller.storage.configure();
        this.controller.media_manager.configure();
        this.controller.reporting_manager.configure();
        this.controller.ad_manager.configure();
        this.controller.session_manager.configure();
        this.controller.play_history.configure();
        this.configured = true;
        this.controller.ad_manager.refresh();
        if (this.controller.ad_manager.app.view_network_pass_filter == null || this.controller.ad_manager.app.view_network_pass_filter.equals(AdTrackerConstants.BLANK)) {
            this.controller.ad_manager.app.view_network_pass_filter = "all";
        }
        if (this.controller.ad_manager.app.cache_network_pass_filter == null || this.controller.ad_manager.app.cache_network_pass_filter.equals(AdTrackerConstants.BLANK)) {
            this.controller.ad_manager.app.cache_network_pass_filter = "all";
        }
    }

    String either_or(String str, String str2) {
        return str != null ? str : str2;
    }

    void parse_client_options(String str) {
        if (str == null) {
            str = AdTrackerConstants.BLANK;
        }
        String[] split = str.split(",");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String[] split2 = split[i].split(":");
            if (split2.length == 2) {
                String str2 = split2[0];
                String str3 = split2[1];
                if (str2.equals("version")) {
                    this.app_version = str3;
                } else if (str2.equals("store")) {
                    if (str3.toLowerCase().equals(ZBuildConfig.market) || str3.toLowerCase().equals("amazon")) {
                        this.origin_store = str3;
                    } else {
                        throw new AdColonyException("Origin store in client options must be set to either 'google' or 'amazon'");
                    }
                } else if (str2.equals("skippable")) {
                    this.skippable = str3.equals("true");
                }
            } else if (split2[0].equals("skippable")) {
                this.skippable = true;
            }
            i++;
        }
    }

    void prepare_end_card() {
        StaticCompanionAdInfo staticCompanionAdInfo = this.current_ad.companion_ad._static;
        HTML5CompanionAdInfo hTML5CompanionAdInfo = this.current_ad.companion_ad.html5;
        ADCMediaManager aDCMediaManager = this.controller.media_manager;
        if (this.current_ad.companion_ad.enabled) {
            if (hTML5CompanionAdInfo.is_ready()) {
                end_card_is_html5 = true;
                end_card_url = hTML5CompanionAdInfo.html5_tag;
                end_card_mraid_filepath = aDCMediaManager.local_filepath(hTML5CompanionAdInfo.mraid_js.url);
                this.properties.set("close_image_normal", aDCMediaManager.local_filepath(hTML5CompanionAdInfo.close.image_normal));
                this.properties.set("close_image_down", aDCMediaManager.local_filepath(hTML5CompanionAdInfo.close.image_down));
                this.properties.set("reload_image_normal", aDCMediaManager.local_filepath(hTML5CompanionAdInfo.replay.image_normal));
                this.properties.set("reload_image_down", aDCMediaManager.local_filepath(hTML5CompanionAdInfo.replay.image_down));
            } else {
                end_card_is_html5 = false;
                this.properties.set("end_card_filepath", aDCMediaManager.local_filepath(staticCompanionAdInfo.background_image));
                this.properties.set("info_image_normal", aDCMediaManager.local_filepath(staticCompanionAdInfo.info.image_normal));
                this.properties.set("info_image_down", aDCMediaManager.local_filepath(staticCompanionAdInfo.info.image_down));
                this.properties.set("info_url", staticCompanionAdInfo.info.click_action);
                this.properties.set("replay_image_normal", aDCMediaManager.local_filepath(staticCompanionAdInfo.replay.image_normal));
                this.properties.set("replay_image_down", aDCMediaManager.local_filepath(staticCompanionAdInfo.replay.image_down));
                this.properties.set("continue_image_normal", aDCMediaManager.local_filepath(staticCompanionAdInfo._continue.image_normal));
                this.properties.set("continue_image_down", aDCMediaManager.local_filepath(staticCompanionAdInfo._continue.image_down));
                this.properties.set("download_image_normal", aDCMediaManager.local_filepath(staticCompanionAdInfo.download.image_normal));
                this.properties.set("download_image_down", aDCMediaManager.local_filepath(staticCompanionAdInfo.download.image_down));
                this.properties.set("download_url", staticCompanionAdInfo.download.click_action);
            }
            Video video = this.current_ad.video;
            this.properties.set("end_card_enabled", this.current_ad.companion_ad.enabled);
            this.properties.set("load_timeout_enabled", this.current_ad.companion_ad.html5.load_timeout_enabled);
            this.properties.set("load_timeout", this.current_ad.companion_ad.html5.load_timeout);
            this.properties.set("hardware_acceleration_disabled", this.controller.ad_manager.app.hardware_acceleration_disabled);
        } else {
            this.properties.set("end_card_enabled", this.current_ad.companion_ad.enabled);
        }
    }

    void prepare_v4vc_ad(String str) {
        this.current_zone = this.controller.ad_manager.app.zones.find(str);
        this.current_ad = this.current_zone.current_ad();
        ADCMediaManager aDCMediaManager = this.controller.media_manager;
        Video video = this.current_ad.video;
        this.properties.set("video_enabled", video.enabled);
        this.properties.set("video_filepath", video.filepath());
        this.properties.set("video_width", video.width);
        this.properties.set("video_height", video.height);
        this.properties.set("video_duration", video.duration);
        this.properties.set("engagement_delay", video.in_video_engagement.delay);
        this.properties.set("skip_delay", video.skip_video.delay);
        prepare_end_card();
        AdV4VC adV4VC = this.current_ad.v4vc;
        this.properties.set("pre_popup_bg", aDCMediaManager.local_filepath(adV4VC.pre_popup.dialog.image));
        this.properties.set("v4vc_logo", aDCMediaManager.local_filepath(adV4VC.pre_popup.dialog.logo.image));
        this.properties.set("no_button_normal", aDCMediaManager.local_filepath(adV4VC.pre_popup.dialog.option_no.image_normal));
        this.properties.set("no_button_down", aDCMediaManager.local_filepath(adV4VC.pre_popup.dialog.option_no.image_down));
        this.properties.set("yes_button_normal", aDCMediaManager.local_filepath(adV4VC.pre_popup.dialog.option_yes.image_normal));
        this.properties.set("yes_button_down", aDCMediaManager.local_filepath(adV4VC.pre_popup.dialog.option_yes.image_down));
        this.properties.set("done_button_normal", aDCMediaManager.local_filepath(adV4VC.post_popup.dialog.option_done.image_normal));
        this.properties.set("done_button_down", aDCMediaManager.local_filepath(adV4VC.post_popup.dialog.option_done.image_down));
        this.properties.set("browser_close_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.close.image_normal));
        this.properties.set("browser_close_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.close.image_down));
        this.properties.set("browser_reload_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.reload.image_normal));
        this.properties.set("browser_reload_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.reload.image_down));
        this.properties.set("browser_back_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.back.image_normal));
        this.properties.set("browser_back_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.back.image_down));
        this.properties.set("browser_forward_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.forward.image_normal));
        this.properties.set("browser_forward_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.forward.image_down));
        this.properties.set("browser_stop_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.stop.image_normal));
        this.properties.set("browser_stop_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.stop.image_down));
        this.properties.set("browser_glow_button", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.tiny_glow_image));
        this.properties.set("browser_icon", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.logo.image));
        this.properties.set("skip_video_image_normal", aDCMediaManager.local_filepath(video.skip_video.image_normal));
        this.properties.set("skip_video_image_down", aDCMediaManager.local_filepath(video.skip_video.image_down));
        this.properties.set("engagement_image_normal", aDCMediaManager.local_filepath(video.in_video_engagement.image_normal));
        this.properties.set("engagement_image_down", aDCMediaManager.local_filepath(video.in_video_engagement.image_down));
    }

    void prepare_video_ad(String str) {
        this.current_zone = this.controller.ad_manager.app.zones.find(str);
        this.current_ad = this.current_zone.current_ad();
        ADCMediaManager aDCMediaManager = this.controller.media_manager;
        Video video = this.current_ad.video;
        this.properties.set("video_enabled", video.enabled);
        this.properties.set("video_filepath", video.filepath());
        this.properties.set("video_width", video.width);
        this.properties.set("video_height", video.height);
        this.properties.set("video_duration", video.duration);
        this.properties.set("engagement_delay", video.in_video_engagement.delay);
        this.properties.set("skip_delay", video.skip_video.delay);
        this.properties.set("browser_close_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.close.image_normal));
        this.properties.set("browser_close_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.close.image_down));
        this.properties.set("browser_reload_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.reload.image_normal));
        this.properties.set("browser_reload_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.reload.image_down));
        this.properties.set("browser_back_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.back.image_normal));
        this.properties.set("browser_back_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.back.image_down));
        this.properties.set("browser_forward_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.forward.image_normal));
        this.properties.set("browser_forward_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.forward.image_down));
        this.properties.set("browser_stop_image_normal", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.stop.image_normal));
        this.properties.set("browser_stop_image_down", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.stop.image_down));
        this.properties.set("browser_glow_button", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.tiny_glow_image));
        this.properties.set("browser_icon", aDCMediaManager.local_filepath(this.current_ad.in_app_browser.logo.image));
        this.properties.set("skip_video_image_normal", aDCMediaManager.local_filepath(video.skip_video.image_normal));
        this.properties.set("skip_video_image_down", aDCMediaManager.local_filepath(video.skip_video.image_down));
        this.properties.set("engagement_image_normal", aDCMediaManager.local_filepath(video.in_video_engagement.image_normal));
        this.properties.set("engagement_image_down", aDCMediaManager.local_filepath(video.in_video_engagement.image_down));
        prepare_end_card();
    }
}