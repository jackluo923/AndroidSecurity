package com.amazon.device.ads;

class InterstitialAdWrapper implements AdWrapper {
    private final InterstitialAd a;

    InterstitialAdWrapper(InterstitialAd interstitialAd) {
        this.a = interstitialAd;
    }

    public Ad getAd() {
        return this.a;
    }

    public AdData getAdData() {
        return this.a.b();
    }

    public IAdLoaderCallback getAdLoaderCallback() {
        return this.a.o();
    }

    public int prepareAd(AdReadyToLoadListener adReadyToLoadListener) {
        return this.a.a(adReadyToLoadListener);
    }
}