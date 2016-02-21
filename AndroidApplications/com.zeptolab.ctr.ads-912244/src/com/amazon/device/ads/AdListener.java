package com.amazon.device.ads;

public interface AdListener {
    void onAdCollapsed(Ad ad);

    void onAdDismissed(Ad ad);

    void onAdExpanded(Ad ad);

    void onAdFailedToLoad(Ad ad, AdError adError);

    void onAdLoaded(Ad ad, AdProperties adProperties);
}