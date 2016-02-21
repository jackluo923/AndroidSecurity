package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent;

public final class g implements AdsManagerLoadedEvent {
    private final AdsManager a;
    private final Object b;

    g(AdsManager adsManager, Object obj) {
        this.a = adsManager;
        this.b = obj;
    }

    public final AdsManager getAdsManager() {
        return this.a;
    }

    public final Object getUserRequestContext() {
        return this.b;
    }
}