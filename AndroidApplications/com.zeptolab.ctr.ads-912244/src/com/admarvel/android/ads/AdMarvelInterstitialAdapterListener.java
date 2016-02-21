package com.admarvel.android.ads;

import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;

public interface AdMarvelInterstitialAdapterListener {
    void onClickInterstitialAd(String str);

    void onCloseInterstitialAd();

    void onFailedToReceiveInterstitialAd(SDKAdNetwork sDKAdNetwork, String str, int i, ErrorReason errorReason, AdMarvelAd adMarvelAd);

    void onReceiveInterstitialAd(SDKAdNetwork sDKAdNetwork, String str, AdMarvelAd adMarvelAd);

    void onRequestInterstitialAd();
}