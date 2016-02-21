package com.jirbo.adcolony;

public abstract class AdColonyAd {
    static final int status_canceled = 1;
    static final int status_no_fill = 2;
    static final int status_no_request = 0;
    static final int status_shown = 4;
    static final int status_skipped = 3;
    Ad ad_info;
    int status;
    String zone_id;
    Zone zone_info;

    public AdColonyAd() {
        this.status = 0;
    }

    public boolean canceled() {
        return this.status == 1;
    }

    public int getAvailableViews() {
        return (isReady() && set_up_info()) ? this.zone_info.get_available_plays() : status_no_request;
    }

    public abstract boolean isReady();

    abstract boolean is_v4vc();

    public boolean noFill() {
        return this.status == 2;
    }

    public boolean notShown() {
        return this.status != 4;
    }

    abstract void on_video_finished();

    boolean set_up_info() {
        if (this.status == 4) {
            return true;
        }
        if (!isReady()) {
            return false;
        }
        this.zone_info = ADC.controller.get_zone_info(this.zone_id);
        this.ad_info = this.zone_info.current_ad();
        return this.ad_info != null;
    }

    public boolean shown() {
        return this.status == 4;
    }

    public boolean skipped() {
        return this.status == 3;
    }
}