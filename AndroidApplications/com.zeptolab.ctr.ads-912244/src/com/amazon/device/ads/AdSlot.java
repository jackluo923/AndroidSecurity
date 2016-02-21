package com.amazon.device.ads;

class AdSlot {
    private int a;
    private final AdWrapper b;
    private final AdTargetingOptions c;
    private AdError d;

    public AdSlot(Ad ad, AdTargetingOptions adTargetingOptions) {
        this(a(ad), adTargetingOptions);
    }

    AdSlot(AdWrapper adWrapper, AdTargetingOptions adTargetingOptions) {
        this.b = adWrapper;
        if (adTargetingOptions == null) {
            this.c = new AdTargetingOptions();
        } else {
            this.c = adTargetingOptions;
        }
    }

    static AdWrapper a(Ad ad) {
        if (ad instanceof AdLayout) {
            return new AdLayoutWrapper((AdLayout) ad);
        }
        return ad instanceof InterstitialAd ? new InterstitialAdWrapper((InterstitialAd) ad) : null;
    }

    int a() {
        return this.a;
    }

    void a(int i) {
        this.a = i;
    }

    void a(AdError adError) {
        this.d = adError;
    }

    AdError b() {
        return this.d;
    }

    AdWrapper c() {
        return this.b;
    }

    AdData d() {
        return this.b.getAdData();
    }

    IAdLoaderCallback e() {
        return this.b.getAdLoaderCallback();
    }

    public Ad getAd() {
        return this.b.getAd();
    }

    public AdTargetingOptions getAdTargetingOptions() {
        return this.c;
    }
}