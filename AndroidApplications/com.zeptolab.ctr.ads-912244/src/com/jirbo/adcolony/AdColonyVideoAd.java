package com.jirbo.adcolony;

import android.graphics.Bitmap;

public class AdColonyVideoAd extends AdColonyAd {
    AdColonyAdListener listener;

    class AnonymousClass_1 extends ADCEvent {
        AnonymousClass_1(ADCController aDCController) {
            super(aDCController);
        }

        void dispatch() {
            if (AdColonyVideoAd.this.zone_id != null) {
                this.controller.reporting_manager.track_ad_request(AdColonyVideoAd.this.zone_id);
            }
        }
    }

    class AnonymousClass_2 extends ADCEvent {
        AnonymousClass_2(ADCController aDCController) {
            super(aDCController);
        }

        void dispatch() {
            this.controller.reporting_manager.track_ad_request(AdColonyVideoAd.this.zone_id);
        }
    }

    public AdColonyVideoAd() {
        ADC.show_post_popup = false;
        ADC.ensure_configured();
    }

    public AdColonyVideoAd(String str) {
        ADC.ensure_configured();
        this.zone_id = str;
    }

    public boolean isReady() {
        if (this.zone_id == null) {
            this.zone_id = ADC.controller.find_video_zone();
            if (this.zone_id == null) {
                return false;
            }
        }
        return ADC.controller.is_video_ad_available(this.zone_id);
    }

    boolean is_v4vc() {
        return false;
    }

    void on_video_finished() {
        if (this.listener != null) {
            this.listener.onAdColonyAdAttemptFinished(this);
        }
        ADC.has_ad_availability_changed();
        System.gc();
        if (!(ADC.show_post_popup || AdColonyBrowser.is_open)) {
            int i = 0;
            while (i < ADC.bitmaps.size()) {
                ((Bitmap) ADC.bitmaps.get(i)).recycle();
                i++;
            }
            ADC.bitmaps.clear();
        }
        ADC.current_video = null;
        ADC.show = true;
    }

    public void show() {
        ADCController aDCController;
        if (isReady()) {
            if (ADC.show) {
                aDCController = ADC.controller;
                ADC.show = false;
                set_up_info();
                if (!ADC.controller.show_video_ad(this)) {
                    if (this.listener != null) {
                        this.listener.onAdColonyAdAttemptFinished(this);
                    }
                    ADC.show = true;
                    return;
                } else if (this.listener != null) {
                    this.listener.onAdColonyAdStarted(this);
                }
            }
            this.status = 4;
        } else {
            aDCController = ADC.controller;
            this.status = 2;
            if (this.listener != null) {
                this.listener.onAdColonyAdAttemptFinished(this);
            }
        }
    }

    public AdColonyVideoAd withListener(AdColonyAdListener adColonyAdListener) {
        this.listener = adColonyAdListener;
        return this;
    }
}