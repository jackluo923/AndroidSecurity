package com.admarvel.android.admarvelheyzapadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.util.Logging;
import com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener;

public class InternalHeyZapIncentiveInterstitialListener implements OnIncentiveResultListener {
    AdMarvelAd adMarvelAd;
    private AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener;

    public InternalHeyZapIncentiveInterstitialListener(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, AdMarvelAd adMarvelAd) {
        this.adMarvelInterstitialAdapterListener = adMarvelInterstitialAdapterListener;
        this.adMarvelAd = adMarvelAd;
    }

    public void onComplete(String str) {
        Logging.log("Heyzap: onComplete ");
    }

    public void onIncomplete(String str) {
        Logging.log("Heyzap: onIncomplete ");
    }
}