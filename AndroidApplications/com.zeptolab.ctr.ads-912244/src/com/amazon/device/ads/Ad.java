package com.amazon.device.ads;

public interface Ad {
    int getTimeout();

    boolean isLoading();

    boolean loadAd();

    boolean loadAd(AdTargetingOptions adTargetingOptions);

    void setListener(AdListener adListener);

    void setTimeout(int i);
}