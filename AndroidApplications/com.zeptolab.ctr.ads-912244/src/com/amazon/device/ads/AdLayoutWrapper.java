package com.amazon.device.ads;

class AdLayoutWrapper implements AdWrapper {
    private final AdLayout a;

    AdLayoutWrapper(AdLayout adLayout) {
        this.a = adLayout;
    }

    public Ad getAd() {
        return this.a;
    }

    public AdData getAdData() {
        return this.a.getAdController().c();
    }

    public IAdLoaderCallback getAdLoaderCallback() {
        return this.a.getAdController();
    }

    public int prepareAd(AdReadyToLoadListener adReadyToLoadListener) {
        return this.a.a(adReadyToLoadListener);
    }
}