package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent.AdErrorListener;

public interface AdsLoader {

    public static interface AdsLoadedListener {
        void onAdsManagerLoaded(AdsManagerLoadedEvent adsManagerLoadedEvent);
    }

    void addAdErrorListener(AdErrorListener adErrorListener);

    void addAdsLoadedListener(AdsLoadedListener adsLoadedListener);

    void contentComplete();

    ImaSdkSettings getSettings();

    void removeAdErrorListener(AdErrorListener adErrorListener);

    void removeAdsLoadedListener(AdsLoadedListener adsLoadedListener);

    void requestAds(AdsRequest adsRequest);
}