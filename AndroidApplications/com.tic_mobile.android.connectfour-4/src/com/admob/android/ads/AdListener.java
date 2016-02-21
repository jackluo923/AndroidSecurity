package com.admob.android.ads;

public interface AdListener {
    void onFailedToReceiveAd(AdView adView);

    void onFailedToReceiveRefreshedAd(AdView adView);

    void onReceiveAd(AdView adView);

    void onReceiveRefreshedAd(AdView adView);
}