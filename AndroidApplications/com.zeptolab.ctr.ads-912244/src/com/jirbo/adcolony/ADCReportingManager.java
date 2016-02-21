package com.jirbo.adcolony;

import com.admarvel.android.ads.Constants;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.jirbo.adcolony.ADCDownload.Listener;
import com.millennialmedia.android.MMException;
import java.util.ArrayList;

class ADCReportingManager implements Listener {
    int active_submissions;
    ADCController controller;
    ArrayList culling_list;
    boolean modified;
    ArrayList pending_events;

    static class Event {
        int attempts;
        boolean discard;
        int next_attempt_delay;
        double next_attempt_time;
        String payload;
        boolean submitting;
        boolean third_party;
        String type;
        String url;
        int v4vc_amount;
        String v4vc_name;

        Event() {
        }
    }

    ADCReportingManager(ADCController aDCController) {
        this.pending_events = new ArrayList();
        this.culling_list = new ArrayList();
        this.active_submissions = 0;
        this.modified = false;
        this.controller = aDCController;
    }

    void configure() {
        load();
        this.active_submissions = 0;
    }

    void dispatch_events() {
        if (this.pending_events.size() != 0) {
            while (this.pending_events.size() > 1000) {
                this.pending_events.remove(this.pending_events.size() - 1);
            }
            if (ADCNetwork.connected()) {
                double current_time = ADCUtil.current_time();
                int i = 0;
                while (i < this.pending_events.size()) {
                    Event event = (Event) this.pending_events.get(i);
                    if (event.next_attempt_time < current_time && !event.submitting && this.active_submissions != 5) {
                        this.active_submissions++;
                        event.submitting = true;
                        ADCDownload with_info = new ADCDownload(this.controller, event.url, this).with_info(event);
                        if (event.third_party) {
                            with_info.third_party_tracking = true;
                        }
                        if (event.payload != null) {
                            with_info.with_post_data(WebRequest.CONTENT_TYPE_JSON, event.payload);
                        }
                        ADCLog.debug.print("Submitting '").print(event.type).println((Object)"' event.");
                        with_info.start();
                        active = true;
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    void load() {
        active = true;
        List load_List = ADCJSON.load_List(new ADCDataFile("tracking_info.txt"));
        if (load_List != null) {
            this.pending_events.clear();
            int i = 0;
            while (i < load_List.count()) {
                Table table = load_List.get_Table(i);
                Event event = new Event();
                event.type = table.get_String(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
                event.url = table.get_String(PlusShare.KEY_CALL_TO_ACTION_URL);
                event.payload = table.get_String("payload", null);
                event.attempts = table.get_Integer("attempts");
                event.third_party = table.get_Logical("third_party");
                if (event.type.equals("v4vc_callback") || event.type.equals("reward_v4vc")) {
                    event.v4vc_name = table.get_String("v4vc_name");
                    event.v4vc_amount = table.get_Integer("v4vc_amount");
                }
                this.pending_events.add(event);
                i++;
            }
        }
        ADCLog.dev.print("Loaded ").print(this.pending_events.size()).println((Object)" events");
    }

    public void on_download_finished(ADCDownload aDCDownload) {
        int i = AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT;
        active = true;
        this.modified = true;
        this.active_submissions--;
        Event event = (Event) aDCDownload.info;
        ADCLog.dev.print("on_download_finished - event.type = ").println(event.type);
        event.submitting = false;
        boolean z = aDCDownload.success;
        if (z && event.payload != null) {
            Table parse_Table = ADCJSON.parse_Table(aDCDownload.data);
            if (parse_Table != null) {
                z = parse_Table.get_String("status").equals("success");
                if (z && event.type.equals("reward_v4vc")) {
                    if (parse_Table.get_Logical("v4vc_status")) {
                        String str = parse_Table.get_String("v4vc_callback");
                        if (str.length() > 0) {
                            Event event2 = new Event();
                            event2.type = "v4vc_callback";
                            event2.url = str;
                            event2.v4vc_name = event.v4vc_name;
                            event2.v4vc_amount = event.v4vc_amount;
                            this.pending_events.add(event2);
                        } else {
                            if (current_video != null) {
                                current_video.rewarded = true;
                            }
                            ADCLog.dev.println((Object)"Client-side V4VC success");
                        }
                    } else {
                        ADCLog.dev.println((Object)"Client-side V4VC failure");
                    }
                }
            } else {
                z = false;
            }
        }
        if (z && event.type.equals("v4vc_callback")) {
            ADCLog.dev.println((Object)"v4vc_callback response:").println(aDCDownload.data);
            if (aDCDownload.data.indexOf("vc_success") != -1) {
                if (current_video != null) {
                    current_video.rewarded = true;
                }
                ADCLog.dev.println((Object)"v4vc_callback success");
                this.controller.on_v4vc_result(true, event.v4vc_name, event.v4vc_amount);
            } else if (aDCDownload.data.indexOf("vc_decline") != -1) {
                ADCLog.info.print("Server-side V4VC failure: ").println(aDCDownload.url);
                ADCLog.dev.println((Object)"v4vc_callback declined");
                this.controller.on_v4vc_result(false, AdTrackerConstants.BLANK, 0);
            } else {
                ADCLog.info.print("Server-side V4VC failure: ").println(aDCDownload.url);
                z = false;
            }
        }
        if (z) {
            ADCLog.dev.print("Event submission SUCCESS for type: ").println(event.type);
            event.discard = true;
        } else {
            ADCLog.dev.print("Event submission FAILED for type: ").print(event.type).print(" on try ").println(event.attempts + 1);
            event.attempts++;
            if (event.attempts >= 24) {
                ADCLog.error.println((Object)"Discarding event after 24 attempts to report.");
                event.discard = true;
                if (event.type.equals("v4vc_callback")) {
                    this.controller.on_v4vc_result(false, AdTrackerConstants.BLANK, 0);
                }
            } else {
                int i2 = MMException.DISPLAY_AD_NOT_READY;
                if (event.next_attempt_delay > 0) {
                    i2 = event.next_attempt_delay * 3;
                }
                if (i2 <= 10000) {
                    i = i2;
                }
                ADCLog.dev.print("Retrying in ").print(i).print(" seconds (attempt ").print(event.attempts).println((Object)")");
                event.next_attempt_delay = i;
                event.next_attempt_time = ADCUtil.current_time() + ((double) i);
            }
        }
        if (!this.controller.session_manager.active) {
            save();
        }
    }

    void save() {
        this.culling_list.clear();
        this.culling_list.addAll(this.pending_events);
        this.pending_events.clear();
        List list = new List();
        int i = 0;
        while (i < this.culling_list.size()) {
            Event event = (Event) this.culling_list.get(i);
            if (!event.discard) {
                this.pending_events.add(event);
                Value table = new Table();
                table.set(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, event.type);
                table.set(PlusShare.KEY_CALL_TO_ACTION_URL, event.url);
                if (event.payload != null) {
                    table.set("payload", event.payload);
                }
                table.set("attempts", event.attempts);
                if (event.v4vc_name != null) {
                    table.set("v4vc_name", event.v4vc_name);
                    table.set("v4vc_amount", event.v4vc_amount);
                }
                if (event.third_party) {
                    table.set("third_party", true);
                }
                list.add(table);
            }
            i++;
        }
        this.culling_list.clear();
        ADCLog.dev.print("Saving tracking_info (").print(this.pending_events.size()).println((Object)" events)");
        ADCJSON.save(new ADCDataFile("tracking_info.txt"), list);
    }

    void track_ad_event(String str) {
        track_ad_event(str, null);
    }

    void track_ad_event(Object obj, Table table) {
        if (obj == null) {
            ADCLog.error.println((Object)"No such event type:").println(obj);
        } else {
            track_adcolony_event(obj, this.controller.configuration.current_ad.ad_tracking.lookup.get_String(obj), table);
            track_third_party_event(obj, (ArrayList) this.controller.configuration.current_ad.third_party_tracking.lookup.get(obj));
        }
    }

    void track_ad_request(Object obj) {
        if (this.controller != null && this.controller.ad_manager != null && this.controller.ad_manager.app != null && this.controller.ad_manager.app.zones != null && this.controller.ad_manager.app.zones.find(obj) != null) {
            ADCLog.dev.print("Ad request for zone ").println(obj);
            Zone find = this.controller.ad_manager.app.zones.find(obj);
            if (find != null && find.zone_tracking != null && find.zone_tracking.request != null) {
                track_adcolony_event(Constants.AD_REQUEST, find.zone_tracking.request, null);
                ADCLog.dev.print("Tracking ad request - URL : ").println(find.zone_tracking.request);
            }
        }
    }

    void track_adcolony_event(Object obj, Object obj2, Table table) {
        if (obj2 != null && !obj2.equals(AdTrackerConstants.BLANK)) {
            if (table == null) {
                table = new Table();
            }
            String create_uuid = ADCUtil.create_uuid();
            table.set("asi", this.controller.session_manager.current_session_id);
            table.set("guid", create_uuid);
            table.set("guid_key", ADCUtil.calculate_sha1(create_uuid + "DUBu6wJ27y6xs7VWmNDw67DD"));
            Event event = new Event();
            event.type = obj;
            event.url = obj2;
            ADCLog.dev.println((Object)"EVENT ----------------------------");
            ADCLog.dev.print("EVENT - TYPE = ").println(obj);
            ADCLog.dev.print("EVENT - URL  = ").println(obj2);
            event.payload = table.to_json();
            if (obj.equals("reward_v4vc")) {
                event.v4vc_name = table.get_String("v4vc_name");
                event.v4vc_amount = table.get_Integer("v4vc_amount");
            }
            this.pending_events.add(event);
            this.modified = true;
            active = true;
        }
    }

    void track_app_event(String str, Table table) {
        AppTracking appTracking = this.controller.ad_manager.app.app_tracking;
        if (appTracking != null) {
            track_adcolony_event(str, appTracking.lookup.get_String(str), table);
        }
        ThirdPartyAppTracking thirdPartyAppTracking = this.controller.ad_manager.app.third_party_app_tracking;
        if (thirdPartyAppTracking != null) {
            track_third_party_event(str, (ArrayList) thirdPartyAppTracking.lookup.get(str));
        }
    }

    void track_third_party_event(String str, ArrayList arrayList) {
        if (arrayList != null && arrayList.size() != 0) {
            int i = 0;
            while (i < arrayList.size()) {
                String str2 = (String) arrayList.get(i);
                Event event = new Event();
                event.type = str;
                event.url = str2;
                event.third_party = true;
                this.pending_events.add(event);
                i++;
            }
            this.modified = true;
            active = true;
        }
    }

    void track_video_progress(double d) {
        double d2 = this.controller.configuration.current_progress;
        if (d >= d2) {
            if (d2 < 0.25d && d >= 0.25d) {
                track_ad_event("first_quartile");
            }
            if (d2 < 0.5d && d >= 0.5d) {
                track_ad_event("midpoint");
            }
            if (d2 < 0.75d && d >= 0.75d) {
                track_ad_event("third_quartile");
            }
            if (d2 < 1.0d && d >= 1.0d) {
                ADCLog.dev.print("Tracking ad event - complete");
                Table table = new Table();
                table.set("ad_slot", current_ad.zone_info.state.session_play_count);
                track_ad_event(Constants.NATIVE_AD_COMPLETE_ELEMENT, table);
            }
            this.controller.configuration.current_progress = d;
        }
    }

    void update() {
        if (this.modified) {
            this.modified = false;
            save();
        }
        dispatch_events();
    }
}