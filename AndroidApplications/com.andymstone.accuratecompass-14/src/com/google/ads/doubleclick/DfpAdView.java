package com.google.ads.doubleclick;

import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.AppEventListener;

public class DfpAdView extends AdView {
    public void setAppEventListener(AppEventListener appEventListener) {
        super.setAppEventListener(appEventListener);
    }

    public void setSupportedAdSizes(AdSize... adSizeArr) {
        super.setSupportedAdSizes(adSizeArr);
    }
}