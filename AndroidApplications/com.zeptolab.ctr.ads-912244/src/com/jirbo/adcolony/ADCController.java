package com.jirbo.adcolony;

import android.content.Intent;
import java.util.ArrayList;

class ADCController {
    ADCAdManager ad_manager;
    boolean advertising_id_ready;
    ADCConfiguration configuration;
    boolean dispatching_events;
    ArrayList event_queue;
    ADCMediaManager media_manager;
    volatile boolean monitor_thread_active;
    ArrayList pending_events;
    ADCPlayHistory play_history;
    ADCReportingManager reporting_manager;
    ADCSessionManager session_manager;
    ADCStorage storage;
    Stopwatch time_waiting_for_open_udid;
    ADCZoneStateManager zone_state_manager;

    class AnonymousClass_1 extends ADCEvent {
        AnonymousClass_1(ADCController aDCController) {
            super(aDCController);
        }

        void dispatch() {
            this.controller.session_manager.on_resume();
        }
    }

    class AnonymousClass_2 extends ADCEvent {
        AnonymousClass_2(ADCController aDCController) {
            super(aDCController);
        }

        void dispatch() {
            this.controller.session_manager.on_suspend();
        }
    }

    class AnonymousClass_3 extends ADCEvent {
        AnonymousClass_3(ADCController aDCController) {
            super(aDCController);
        }

        void dispatch() {
            this.controller.session_manager.on_stop();
        }
    }

    class AnonymousClass_4 extends ADCEvent {
        final /* synthetic */ AdColonyAd val$ad;

        AnonymousClass_4(ADCController aDCController, AdColonyAd adColonyAd) {
            this.val$ad = adColonyAd;
            super(aDCController);
        }

        void dispatch() {
            ADCController.this.track_ad_event("start", "{\"ad_slot\":" + this.val$ad.zone_info.state.session_play_count + "}");
        }
    }

    class AnonymousClass_5 extends ADCEvent {
        final /* synthetic */ double val$p;

        AnonymousClass_5(ADCController aDCController, double d) {
            this.val$p = d;
            super(aDCController);
        }

        void dispatch() {
            this.controller.reporting_manager.track_video_progress(this.val$p);
        }
    }

    class AnonymousClass_6 extends ADCEvent {
        final /* synthetic */ int val$v4vc_amount;
        final /* synthetic */ String val$v4vc_name;

        AnonymousClass_6(ADCController aDCController, String str, int i) {
            this.val$v4vc_name = str;
            this.val$v4vc_amount = i;
            super(aDCController);
        }

        void dispatch() {
            Table table = new Table();
            table.set("v4vc_name", this.val$v4vc_name);
            table.set("v4vc_amount", this.val$v4vc_amount);
            this.controller.reporting_manager.track_ad_event("reward_v4vc", table);
        }
    }

    class AnonymousClass_7 extends ADCEvent {
        final /* synthetic */ String val$json_payload;
        final /* synthetic */ String val$type;

        AnonymousClass_7(ADCController aDCController, String str, String str2) {
            this.val$type = str;
            this.val$json_payload = str2;
            super(aDCController);
        }

        void dispatch() {
            this.controller.reporting_manager.track_app_event(this.val$type, ADCJSON.parse_Table(this.val$json_payload));
        }
    }

    class AnonymousClass_8 extends ADCEvent {
        final /* synthetic */ String val$json_payload;
        final /* synthetic */ String val$type;

        AnonymousClass_8(ADCController aDCController, String str, String str2) {
            this.val$type = str;
            this.val$json_payload = str2;
            super(aDCController);
        }

        void dispatch() {
            this.controller.reporting_manager.track_ad_event(this.val$type, ADCJSON.parse_Table(this.val$json_payload));
        }
    }

    ADCController() {
        this.configuration = new ADCConfiguration(this);
        this.ad_manager = new ADCAdManager(this);
        this.media_manager = new ADCMediaManager(this);
        this.reporting_manager = new ADCReportingManager(this);
        this.session_manager = new ADCSessionManager(this);
        this.storage = new ADCStorage(this);
        this.zone_state_manager = new ADCZoneStateManager(this);
        this.play_history = new ADCPlayHistory(this);
        this.event_queue = new ArrayList();
        this.pending_events = new ArrayList();
        this.time_waiting_for_open_udid = new Stopwatch();
    }

    synchronized void configure(String str, String str2, String[] strArr) {
        try {
            set_log_level(log_level);
            ADCLog.info.print("==== Configuring AdColony ").print(this.configuration.sdk_version).println((Object)" ====");
            ADCLog.dev.print("package name: ").println(ADCUtil.package_name());
            this.configuration.app_id = str2;
            this.configuration.zone_ids = strArr;
            this.configuration.parse_client_options(str);
            this.time_waiting_for_open_udid.restart();
        } catch (RuntimeException e) {
            ADC.on_fatal_error(e);
        }
    }

    void dispatch_events() {
        if (!this.dispatching_events && ADC.is_ready()) {
            while (true) {
                try {
                    if (!this.dispatching_events || (!this.monitor_thread_active && this.event_queue.size() > 0)) {
                        this.dispatching_events = true;
                        this.pending_events.addAll(this.event_queue);
                        this.event_queue.clear();
                        int i = 0;
                        while (i < this.pending_events.size()) {
                            if (this.pending_events.get(i) != null) {
                                ((ADCEvent) this.pending_events.get(i)).dispatch();
                            }
                            i++;
                        }
                        this.pending_events.clear();
                    } else {
                        this.dispatching_events = false;
                        return;
                    }
                } catch (RuntimeException e) {
                    RuntimeException runtimeException = e;
                    this.dispatching_events = false;
                    this.pending_events.clear();
                    this.event_queue.clear();
                    ADC.on_fatal_error(runtimeException);
                }
            }
        }
    }

    synchronized String find_v4vc_zone() {
        return this.ad_manager.find_v4vc_zone();
    }

    synchronized String find_video_zone() {
        return this.ad_manager.find_video_zone();
    }

    synchronized int get_Integer(String str) {
        int i;
        try {
            i = this.configuration.properties.get_Integer(str);
        } catch (RuntimeException e) {
            ADC.on_fatal_error(e);
            i = 0;
        }
        return i;
    }

    synchronized boolean get_Logical(String str) {
        boolean z;
        try {
            z = this.configuration.properties.get_Logical(str);
        } catch (RuntimeException e) {
            ADC.on_fatal_error(e);
            z = false;
        }
        return z;
    }

    synchronized double get_Real(String str) {
        double d;
        try {
            d = this.configuration.properties.get_Real(str);
        } catch (RuntimeException e) {
            ADC.on_fatal_error(e);
            d = 0.0d;
        }
        return d;
    }

    synchronized String get_String(String str) {
        String str2;
        try {
            str2 = this.configuration.properties.get_String(str);
        } catch (RuntimeException e) {
            ADC.on_fatal_error(e);
            str2 = null;
        }
        return str2;
    }

    synchronized int get_reward_credit(String str) {
        return this.play_history.get_reward_credit(str);
    }

    synchronized Zone get_zone_info(String str) {
        return this.ad_manager.app.zones.find(str);
    }

    synchronized boolean is_v4vc_ad_available(String str) {
        return is_v4vc_ad_available(str, false, true);
    }

    synchronized boolean is_v4vc_ad_available(String str, boolean z, boolean z2) {
        boolean z3 = false;
        synchronized (this) {
            try {
                if (ADC.is_ready()) {
                    if (this.ad_manager.is_ad_available(str, z)) {
                        z3 = this.ad_manager.app.zones.find(str).is_v4vc_zone(z2);
                    }
                }
            } catch (RuntimeException e) {
                ADC.on_fatal_error(e);
            }
        }
        return z3;
    }

    synchronized boolean is_video_ad_available(String str) {
        return is_video_ad_available(str, false, true);
    }

    synchronized boolean is_video_ad_available(String str, boolean z, boolean z2) {
        boolean z3 = false;
        synchronized (this) {
            try {
                if (ADC.is_ready()) {
                    if (this.ad_manager.is_ad_available(str, z)) {
                        z3 = this.ad_manager.app.zones.find(str).is_video_zone(z2);
                    }
                }
            } catch (RuntimeException e) {
                ADC.on_fatal_error(e);
            }
        }
        return z3;
    }

    synchronized boolean launch_video() {
        boolean z;
        if (this.configuration.current_zone.check_for_skip_due_to_interval()) {
            current_ad.status = 3;
            z = false;
        } else {
            on_video_start();
            ADCVideo.reset();
            if (is_tablet) {
                ADCLog.dev.println((Object)"Launching AdColonyOverlay");
                ADC.activity().startActivity(new Intent(ADC.activity(), AdColonyOverlay.class));
            } else {
                ADCLog.dev.println((Object)"Launching AdColonyFullscreen");
                ADC.activity().startActivity(new Intent(ADC.activity(), AdColonyFullscreen.class));
            }
            z = true;
        }
        return z;
    }

    void on_resume() {
        this.monitor_thread_active = true;
    }

    void on_stop() {
    }

    void on_suspend() {
        this.monitor_thread_active = false;
    }

    synchronized void on_v4vc_result(boolean z, String str, int i) {
        v4vc_results_handler.notify_listeners(z, str, i);
    }

    synchronized void on_video_finish(boolean z) {
        int i = 0;
        boolean z2 = 1;
        synchronized (this) {
            on_video_progress(1.0d);
            if (!z && current_ad.is_v4vc()) {
                AdColonyAd adColonyAd = current_ad;
                adColonyAd.zone_info.advance_play_index();
                this.play_history.add_play_event(adColonyAd.zone_id, adColonyAd.ad_info.ad_id);
                AdColonyV4VCAd adColonyV4VCAd = (AdColonyV4VCAd) current_ad;
                String rewardName = adColonyV4VCAd.getRewardName();
                int rewardAmount = adColonyV4VCAd.getRewardAmount();
                int viewsPerReward = adColonyV4VCAd.getViewsPerReward();
                if (viewsPerReward > 1) {
                    int i2 = this.play_history.get_reward_credit(adColonyV4VCAd.getRewardName()) + 1;
                    if (i2 < viewsPerReward) {
                        z2 = false;
                        i = i2;
                    }
                    this.play_history.set_reward_credit(adColonyV4VCAd.getRewardName(), i);
                }
                if (i != 0) {
                    if (adColonyV4VCAd.zone_info.v4vc.client_side) {
                        on_v4vc_result(true, rewardName, rewardAmount);
                    }
                }
            }
        }
    }

    void on_video_progress(double d) {
    }

    synchronized void on_video_start() {
        this.configuration.current_progress = 0.0d;
        ADCLog.dev.println((Object)"Tracking ad event - start");
        AdColonyAd adColonyAd = current_ad;
        ADCZoneState aDCZoneState = adColonyAd.zone_info.state;
        aDCZoneState.session_play_count++;
        if (!current_ad.is_v4vc()) {
            adColonyAd.zone_info.advance_play_index();
            this.play_history.add_play_event(adColonyAd.zone_id, adColonyAd.ad_info.ad_id);
        }
    }

    synchronized void prepare_v4vc_ad(AdColonyV4VCAd adColonyV4VCAd) {
        this.configuration.prepare_v4vc_ad(adColonyV4VCAd.zone_id);
    }

    synchronized void prepare_video_ad(AdColonyVideoAd adColonyVideoAd) {
        this.configuration.prepare_video_ad(adColonyVideoAd.zone_id);
    }

    void queue_event(ADCEvent aDCEvent) {
        synchronized (this.event_queue) {
            if (ADC.is_ready()) {
                this.event_queue.add(aDCEvent);
                if (!this.monitor_thread_active) {
                    update();
                }
            }
        }
    }

    void set_log_level(int i) {
        ADC.set_log_level(i);
    }

    synchronized void set_reward_credit(String str, int i) {
        this.play_history.set_reward_credit(str, i);
    }

    synchronized boolean show_v4vc_ad(AdColonyV4VCAd adColonyV4VCAd) {
        boolean z = false;
        synchronized (this) {
            try {
                current_ad = adColonyV4VCAd;
                Object obj = adColonyV4VCAd.zone_id;
                if (is_v4vc_ad_available(obj)) {
                    ADCLog.dev.print("Showing v4vc for zone ").println(obj);
                    prepare_v4vc_ad(adColonyV4VCAd);
                    z = launch_video();
                }
            } catch (RuntimeException e) {
                ADC.on_fatal_error(e);
            }
        }
        return z;
    }

    synchronized boolean show_video_ad(AdColonyVideoAd adColonyVideoAd) {
        boolean z = false;
        synchronized (this) {
            try {
                current_ad = adColonyVideoAd;
                Object obj = adColonyVideoAd.zone_id;
                if (is_video_ad_available(obj)) {
                    ADCLog.dev.print("Showing ad for zone ").println(obj);
                    prepare_video_ad(adColonyVideoAd);
                    z = launch_video();
                }
            } catch (RuntimeException e) {
                ADC.on_fatal_error(e);
            }
        }
        return z;
    }

    void track_ad_event(String str, String str2) {
    }

    void track_app_event(String str, String str2) {
    }

    synchronized void update() {
        if (!ADC.disabled()) {
            try {
                dispatch_events();
                if (!configured) {
                    if (ADCDevice.open_udid() != null || this.time_waiting_for_open_udid.elapsed_seconds() > 5.0d) {
                        this.configuration.configure();
                        configured = true;
                    }
                    active = true;
                }
                this.ad_manager.update();
                this.media_manager.update();
                this.session_manager.update();
                this.reporting_manager.update();
                this.play_history.update();
                this.zone_state_manager.update();
            } catch (RuntimeException e) {
                ADC.on_fatal_error(e);
            }
        }
    }
}