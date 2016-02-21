package com.facebook.ads.internal;

import com.facebook.ads.internal.AdHandler.ImpressionHelper;

public class NativeAdHandler extends AdHandler {
    public NativeAdHandler(ImpressionHelper impressionHelper, long j, NativeAdDataModel nativeAdDataModel) {
        super(impressionHelper, j);
        setAdDataModel(nativeAdDataModel);
    }

    protected synchronized void sendImpression() {
        ((NativeAdDataModel) this.adDataModel).logImpression();
    }
}