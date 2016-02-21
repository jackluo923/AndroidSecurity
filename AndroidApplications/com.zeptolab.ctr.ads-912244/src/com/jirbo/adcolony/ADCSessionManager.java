package com.jirbo.adcolony;

import com.brightcove.player.event.Event;

class ADCSessionManager {
    boolean active;
    boolean allow_resume;
    ADCController controller;
    String current_session_id;
    double finish_time;
    double session_time;
    boolean should_submit_app_install_event;
    boolean should_submit_session_start_event;
    double start_time;

    ADCSessionManager(ADCController aDCController) {
        this.should_submit_app_install_event = false;
        this.should_submit_session_start_event = false;
        this.current_session_id = Event.UUID;
        this.controller = aDCController;
    }

    void configure() {
    }

    void load() {
        Table load_Table = ADCJSON.load_Table(new ADCDataFile("session_info.txt"));
        if (load_Table != null) {
            this.allow_resume = load_Table.get_Logical("allow_resume");
            this.start_time = load_Table.get_Real("start_time");
            this.finish_time = load_Table.get_Real("finish_time");
            this.session_time = load_Table.get_Real("session_time");
        } else {
            this.should_submit_app_install_event = true;
        }
    }

    void on_new_session() {
        this.should_submit_session_start_event = true;
        this.current_session_id = ADCUtil.create_uuid();
        this.session_time = 0.0d;
        if (controller != null && controller.ad_manager != null && controller.ad_manager.app != null && controller.ad_manager.app.zones != null) {
            int i = 0;
            while (i < controller.ad_manager.app.zones.count()) {
                controller.ad_manager.app.zones.get(i).state.session_play_count = 0;
                i++;
            }
        }
    }

    void on_resume() {
        ADCLog.debug.println((Object)"AdColony resuming");
        active = true;
        if (this.active) {
            ADCLog.error.println((Object)"AdColony.onResume() called multiple times in succession.");
        }
        this.active = true;
        load();
        double current_time = ADCUtil.current_time();
        if (this.allow_resume) {
            if (current_time - this.finish_time > ((double) this.controller.configuration.session_timeout_seconds)) {
                submit_session_duration(this.session_time);
                this.start_time = current_time;
                on_new_session();
            }
            this.allow_resume = false;
            save();
        } else {
            this.start_time = current_time;
            on_new_session();
        }
        ADC.has_ad_availability_changed();
    }

    void on_stop() {
        ADCLog.debug.println((Object)"AdColony terminating");
        active = true;
        submit_session_duration(this.session_time);
        this.allow_resume = false;
        save();
    }

    void on_suspend() {
        ADCLog.debug.println((Object)"AdColony suspending");
        active = true;
        if (!this.active) {
            ADCLog.error.println((Object)"AdColony.onPause() called without initial call to onResume().");
        }
        this.active = false;
        this.allow_resume = true;
        this.finish_time = ADCUtil.current_time();
        save();
    }

    void save() {
        Table table = new Table();
        table.set("allow_resume", this.allow_resume);
        table.set("start_time", this.start_time);
        table.set("finish_time", this.finish_time);
        table.set("session_time", this.session_time);
        ADCJSON.save(new ADCDataFile("session_info.txt"), table);
    }

    void submit_session_duration(double d) {
        ADCLog.dev.print("Submitting session duration ").println(d);
        Table table = new Table();
        table.set("session_length", (int) d);
        this.controller.reporting_manager.track_app_event("session_end", table);
    }

    void update() {
        if (this.controller.ad_manager.is_configured) {
            if (this.should_submit_app_install_event) {
                this.should_submit_app_install_event = false;
                this.controller.reporting_manager.track_app_event("install", null);
            }
            if (this.should_submit_session_start_event) {
                this.should_submit_session_start_event = false;
                this.controller.reporting_manager.track_app_event("session_start", null);
            }
        }
    }
}