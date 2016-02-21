package com.google.ads.interactivemedia.v3.api;

public interface AdErrorEvent {

    public static interface AdErrorListener {
        void onAdError(AdErrorEvent adErrorEvent);
    }

    AdError getError();

    Object getUserRequestContext();
}