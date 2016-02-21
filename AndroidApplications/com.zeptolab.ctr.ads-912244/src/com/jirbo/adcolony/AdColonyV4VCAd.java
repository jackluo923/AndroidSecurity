package com.jirbo.adcolony;

import android.graphics.Bitmap;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public final class AdColonyV4VCAd extends AdColonyAd {
    AdColonyAdListener listener;
    boolean show_post_popup;
    boolean show_pre_popup;

    class AnonymousClass_1 extends ADCEvent {
        AnonymousClass_1(ADCController aDCController) {
            super(aDCController);
        }

        void dispatch() {
            if (AdColonyV4VCAd.this.zone_id != null) {
                this.controller.reporting_manager.track_ad_request(AdColonyV4VCAd.this.zone_id);
            }
        }
    }

    class AnonymousClass_2 extends ADCEvent {
        AnonymousClass_2(ADCController aDCController) {
            super(aDCController);
        }

        void dispatch() {
            this.controller.reporting_manager.track_ad_request(AdColonyV4VCAd.this.zone_id);
        }
    }

    public AdColonyV4VCAd() {
        this.show_pre_popup = false;
        this.show_post_popup = false;
        ADC.show_post_popup = false;
        ADC.ensure_configured();
    }

    public AdColonyV4VCAd(String str) {
        this.show_pre_popup = false;
        this.show_post_popup = false;
        ADC.ensure_configured();
        this.zone_id = str;
    }

    public int getRemainingViewsUntilReward() {
        return set_up_info() ? this.zone_info.v4vc.videos_per_reward - ADC.controller.get_reward_credit(this.zone_info.v4vc.reward_name) : 0;
    }

    public int getRewardAmount() {
        return set_up_info() ? this.zone_info.v4vc.reward_amount : 0;
    }

    public String getRewardName() {
        return set_up_info() ? this.zone_info.v4vc.reward_name : AdTrackerConstants.BLANK;
    }

    public int getViewsPerReward() {
        return set_up_info() ? this.zone_info.v4vc.videos_per_reward : 0;
    }

    public boolean isReady() {
        if (this.zone_id == null) {
            this.zone_id = ADC.controller.find_v4vc_zone();
            if (this.zone_id == null) {
                return false;
            }
        }
        return ADC.controller.is_v4vc_ad_available(this.zone_id);
    }

    boolean is_v4vc() {
        return true;
    }

    void on_dialog_finished(boolean z) {
        if (!z) {
            this.status = 1;
        } else if (ADC.controller.show_v4vc_ad(this)) {
            if (this.listener != null) {
                this.listener.onAdColonyAdStarted(this);
            }
            this.status = 4;
        } else {
            this.status = 3;
        }
        if (this.status != 4 && this.listener != null) {
            this.listener.onAdColonyAdAttemptFinished(this);
        }
    }

    void on_video_finished() {
        if (this.status == 4 && this.show_post_popup) {
            setDialog("Result");
        }
        if (this.listener != null) {
            this.listener.onAdColonyAdAttemptFinished(this);
        }
        ADC.has_ad_availability_changed();
        if (!(ADC.show_post_popup || AdColonyBrowser.is_open)) {
            int i = 0;
            while (i < ADC.bitmaps.size()) {
                ((Bitmap) ADC.bitmaps.get(i)).recycle();
                i++;
            }
            ADC.bitmaps.clear();
        }
        ADC.current_video = null;
        if (!this.show_post_popup) {
            ADC.show = true;
        }
        System.gc();
    }

    void setDialog(String str) {
        String rewardName = getRewardName();
        String str2 = AdTrackerConstants.BLANK;
        rewardName = (AdTrackerConstants.BLANK + getRewardAmount()) + " " + rewardName;
        if (str.equals("Confirmation")) {
            ADC.current_dialog = new ADCV4VCConfirmationDialog(rewardName, this);
        } else {
            ADC.current_dialog = new ADCV4VCResultsDialog(rewardName, this);
        }
    }

    public void show() {
        ADCController aDCController;
        if (!isReady()) {
            aDCController = ADC.controller;
            this.status = 2;
            if (this.listener != null) {
                this.listener.onAdColonyAdAttemptFinished(this);
            }
        } else if (ADC.show) {
            aDCController = ADC.controller;
            ADC.show = false;
            set_up_info();
            ADC.current_ad = this;
            ADC.controller.prepare_v4vc_ad(this);
            if (this.show_pre_popup) {
                setDialog("Confirmation");
            } else {
                on_dialog_finished(true);
            }
        }
    }

    public AdColonyV4VCAd withConfirmationDialog() {
        return withConfirmationDialog(true);
    }

    public AdColonyV4VCAd withConfirmationDialog(boolean z) {
        this.show_pre_popup = z;
        return this;
    }

    public AdColonyV4VCAd withListener(AdColonyAdListener adColonyAdListener) {
        this.listener = adColonyAdListener;
        return this;
    }

    public AdColonyV4VCAd withResultsDialog() {
        return withResultsDialog(true);
    }

    public AdColonyV4VCAd withResultsDialog(boolean z) {
        this.show_post_popup = z;
        ADC.show_post_popup = this.show_post_popup;
        return this;
    }
}