package com.jirbo.adcolony;

import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.jirbo.adcolony.ADCDownload.Listener;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

class ADCMediaManager implements Listener {
    int active_downloads;
    ArrayList assets;
    boolean configured;
    ADCController controller;
    HashMap lookup;
    boolean modified;
    int next_file_number;
    ArrayList pending_downloads;
    Timer save_timer;
    double total_media_bytes;

    static class Asset {
        boolean downloading;
        int file_number;
        String filepath;
        double last_accessed;
        String last_modified;
        boolean ready;
        int size;
        String url;

        Asset() {
        }
    }

    ADCMediaManager(ADCController aDCController) {
        this.assets = new ArrayList();
        this.lookup = new HashMap();
        this.next_file_number = 1;
        this.save_timer = new Timer(2.0d);
        this.pending_downloads = new ArrayList();
        this.controller = aDCController;
    }

    void cache(String str, String str2) {
        if (str != null && !str.equals(AdTrackerConstants.BLANK)) {
            if (str2 == null) {
                str2 = AdTrackerConstants.BLANK;
            }
            Asset asset = (Asset) this.lookup.get(str);
            if (asset != null) {
                asset.last_accessed = ADCUtil.current_time();
                if (asset.last_modified.equals(str2) && (asset.ready || asset.downloading)) {
                    return;
                }
            } else {
                asset = new Asset();
                asset.url = str;
                this.assets.add(asset);
                asset.last_accessed = ADCUtil.current_time();
                this.lookup.put(str, asset);
            }
            if (asset.file_number == 0) {
                int i = get_next_file_number();
                String str3 = this.controller.storage.media_path + url_to_filename(str, i);
                asset.file_number = i;
                asset.filepath = str3;
            }
            asset.last_modified = str2;
            asset.downloading = true;
            asset.ready = false;
            ADCLog.dev.print("Adding ").print(str).println((Object)" to pending downloads.");
            this.pending_downloads.add(str);
            this.modified = true;
            this.save_timer.restart(2.0d);
            active = true;
        }
    }

    void configure() {
        load();
        this.configured = true;
    }

    int get_next_file_number() {
        this.modified = true;
        this.save_timer.restart(2.0d);
        int i = this.next_file_number;
        this.next_file_number = i + 1;
        return i;
    }

    boolean is_cached(String str) {
        if (str == null || str.equals(AdTrackerConstants.BLANK)) {
            return false;
        }
        Asset asset = (Asset) this.lookup.get(str);
        if (asset == null) {
            this.controller.ad_manager.app.cache_media();
            return false;
        } else if (!asset.ready) {
            if (!asset.downloading) {
                this.controller.ad_manager.app.cache_media();
            }
            return false;
        } else if (asset.downloading) {
            return false;
        } else {
            asset.last_accessed = ADCUtil.current_time();
            return true;
        }
    }

    void load() {
        ADCLog.dev.println((Object)"Loading media info");
        Table load_Table = ADCJSON.load_Table(new ADCDataFile("media_info.txt"));
        if (load_Table == null) {
            load_Table = new Table();
            ADCLog.dev.println((Object)"No saved media info exists.");
        } else {
            ADCLog.dev.println((Object)"Loaded media info");
        }
        this.next_file_number = load_Table.get_Integer("next_file_number");
        if (this.next_file_number <= 0) {
            this.next_file_number = 1;
        }
        List list = load_Table.get_List("assets");
        if (list != null) {
            this.assets.clear();
            int i = 0;
            while (i < list.count()) {
                Table table = list.get_Table(i);
                Asset asset = new Asset();
                asset.url = table.get_String(PlusShare.KEY_CALL_TO_ACTION_URL);
                asset.filepath = table.get_String("filepath");
                asset.last_modified = table.get_String("last_modified");
                asset.file_number = table.get_Integer("file_number");
                asset.size = table.get_Integer("size");
                asset.ready = table.get_Logical("ready");
                asset.last_accessed = table.get_Real("last_accessed");
                if (asset.file_number > this.next_file_number) {
                    this.next_file_number = asset.file_number + 1;
                }
                this.assets.add(asset);
                i++;
            }
        }
        refresh();
    }

    String local_filepath(String str) {
        Asset asset = (Asset) this.lookup.get(str);
        if (asset == null || asset.filepath == null) {
            return "(file not found)";
        }
        asset.last_accessed = ADCUtil.current_time();
        this.modified = true;
        this.save_timer.restart(2.0d);
        return asset.filepath;
    }

    public void on_download_finished(ADCDownload aDCDownload) {
        Asset asset = (Asset) aDCDownload.info;
        this.active_downloads--;
        this.modified = true;
        this.save_timer.restart(2.0d);
        asset.ready = aDCDownload.success;
        asset.downloading = false;
        if (aDCDownload.success) {
            asset.size = aDCDownload.size;
            this.total_media_bytes += (double) asset.size;
            ADCLog.dev.print("Downloaded ").println(asset.url);
        }
        ADC.has_ad_availability_changed();
        start_next_download();
    }

    void purge_old_assets() {
        double d = this.controller.ad_manager.app.media_pool_size;
        if (d != 0.0d) {
            while (this.total_media_bytes > this.controller.ad_manager.app.media_pool_size) {
                int i = 0;
                Asset asset = null;
                while (i < this.assets.size()) {
                    Asset asset2 = (Asset) this.assets.get(i);
                    if (!asset2.ready || (asset != null && asset2.last_accessed >= asset.last_accessed)) {
                        asset2 = asset;
                    }
                    i++;
                    asset = asset2;
                }
                if (asset != null) {
                    ADCLog.debug.print("Deleting ").println(asset.filepath);
                    asset.ready = false;
                    new File(asset.filepath).delete();
                    asset.filepath = null;
                    this.total_media_bytes -= (double) asset.size;
                    ADCLog.debug.print("Media pool now at ").print(this.total_media_bytes / 1048576.0d).print("/").print(d / 1048576.0d).println((Object)" MB");
                    this.modified = true;
                    this.save_timer.restart(2.0d);
                } else {
                    return;
                }
            }
        }
    }

    void refresh() {
        ?[] Arr;
        HashMap hashMap = new HashMap();
        String str = this.controller.storage.media_path;
        String[] list = new File(str).list();
        Arr = list == null ? new String[0] : list;
        int length = Arr.length;
        int i = 0;
        while (i < length) {
            String str2 = str + Arr[i];
            hashMap.put(str2, str2);
            i++;
        }
        HashMap hashMap2 = new HashMap();
        this.total_media_bytes = 0.0d;
        ArrayList arrayList = new ArrayList();
        length = 0;
        while (length < this.assets.size()) {
            Asset asset = (Asset) this.assets.get(length);
            if (!asset.downloading && asset.ready) {
                String str3 = asset.filepath;
                if (hashMap.containsKey(str3) && new File(str3).length() == ((long) asset.size)) {
                    this.total_media_bytes += (double) asset.size;
                    arrayList.add(asset);
                    hashMap2.put(str3, str3);
                }
            }
            length++;
        }
        this.assets = arrayList;
        length = Arr.length;
        i = 0;
        while (i < length) {
            Object obj = str + Arr[i];
            if (!hashMap2.containsKey(obj)) {
                ADCLog.debug.print("Deleting unused media ").println(obj);
                new File(obj).delete();
            }
            i++;
        }
        this.lookup.clear();
        int i2 = 0;
        while (i2 < this.assets.size()) {
            asset = (Asset) this.assets.get(i2);
            this.lookup.put(asset.url, asset);
            i2++;
        }
        double d = this.controller.ad_manager.app.media_pool_size;
        if (d > 0.0d) {
            ADCLog.debug.print("Media pool at ").print(this.total_media_bytes / 1048576.0d).print("/").print(d / 1048576.0d).println((Object)" MB");
        }
    }

    void save() {
        ADCLog.dev.println((Object)"Saving media info");
        Value list = new List();
        int i = 0;
        while (i < this.assets.size()) {
            Asset asset = (Asset) this.assets.get(i);
            if (asset.ready && !asset.downloading) {
                Value table = new Table();
                table.set(PlusShare.KEY_CALL_TO_ACTION_URL, asset.url);
                table.set("filepath", asset.filepath);
                table.set("last_modified", asset.last_modified);
                table.set("file_number", asset.file_number);
                table.set("size", asset.size);
                table.set("ready", asset.ready);
                table.set("last_accessed", asset.last_accessed);
                list.add(table);
            }
            i++;
        }
        Table table2 = new Table();
        table2.set("next_file_number", this.next_file_number);
        table2.set("assets", list);
        ADCJSON.save(new ADCDataFile("media_info.txt"), table2);
        this.modified = false;
    }

    void start_next_download() {
        if (this.controller.ad_manager.app.cache_network_pass_filter.equals("wifi") && !ADCNetwork.using_wifi()) {
            ADCLog.dev.println((Object)"Skipping asset download due to CACHE_FILTER_WIFI");
        } else if (!this.controller.ad_manager.app.cache_network_pass_filter.equals("cell") || ADCNetwork.using_mobile()) {
            while (this.active_downloads < 3 && this.pending_downloads.size() > 0) {
                String str = (String) this.pending_downloads.remove(0);
                Asset asset = (Asset) this.lookup.get(str);
                if (asset != null) {
                    if (str == null || str.equals(AdTrackerConstants.BLANK)) {
                        ADCLog.error.println((Object)"[ADC ERROR] - NULL URL");
                        new RuntimeException().printStackTrace();
                    }
                }
                if (!(asset == null || str == null || str.equals(AdTrackerConstants.BLANK))) {
                    active = true;
                    this.active_downloads++;
                    new ADCDownload(this.controller, str, this, asset.filepath).with_info(asset).start();
                }
            }
        } else {
            ADCLog.dev.println((Object)"Skipping asset download due to CACHE_FILTER_CELL.");
        }
    }

    void update() {
        start_next_download();
        if (this.modified && this.save_timer.expired()) {
            purge_old_assets();
            save();
        }
    }

    String url_to_filename(String str, int i) {
        int lastIndexOf = str.lastIndexOf(ApiEventType.API_MRAID_SEEK_VIDEO);
        return lastIndexOf == -1 ? i + AdTrackerConstants.BLANK : i + str.substring(lastIndexOf);
    }
}