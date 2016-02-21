package com.amazon.device.ads;

public class DefaultAdListener implements AdListener {
    final String LOG_TAG;

    public DefaultAdListener() {
        this(DefaultAdListener.class.getSimpleName());
    }

    DefaultAdListener(String str) {
        this.LOG_TAG = str;
    }

    public void onAdCollapsed(Ad ad) {
        Log.d(this.LOG_TAG, "Default ad listener called - Ad Collapsed.");
    }

    public void onAdDismissed(Ad ad) {
        Log.d(this.LOG_TAG, "Default ad listener called - Ad Dismissed.");
    }

    public void onAdExpanded(Ad ad) {
        Log.d(this.LOG_TAG, "Default ad listener called - Ad Will Expand.");
    }

    public void onAdFailedToLoad(Ad ad, AdError adError) {
        Log.d(this.LOG_TAG, "Default ad listener called - Ad Failed to Load. Error code: %s, Error Message: %s", new Object[]{adError.getCode(), adError.getMessage()});
    }

    public void onAdLoaded(Ad ad, AdProperties adProperties) {
        Log.d(this.LOG_TAG, "Default ad listener called - AdLoaded.");
    }
}