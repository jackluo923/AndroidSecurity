package com.amazon.device.ads;

interface AdWrapper {
    Ad getAd();

    AdData getAdData();

    IAdLoaderCallback getAdLoaderCallback();

    int prepareAd(AdReadyToLoadListener adReadyToLoadListener);
}