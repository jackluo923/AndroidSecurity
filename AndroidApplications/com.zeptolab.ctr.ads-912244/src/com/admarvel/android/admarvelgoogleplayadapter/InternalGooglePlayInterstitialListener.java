package com.admarvel.android.admarvelgoogleplayadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.google.android.gms.ads.AdListener;
import java.lang.ref.WeakReference;

class InternalGooglePlayInterstitialListener extends AdListener {
    AdMarvelAd a;
    private AdMarvelInterstitialAdapterListener b;
    private final WeakReference c;

    public InternalGooglePlayInterstitialListener(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, AdMarvelAd adMarvelAd) {
        this.b = adMarvelInterstitialAdapterListener;
        this.a = adMarvelAd;
        this.c = new WeakReference(adMarvelAd);
    }

    public void onAdClosed() {
        if (this.b != null) {
            this.b.onCloseInterstitialAd();
            Logging.log("GooglePlay Ads : onAdClosed");
        } else {
            Logging.log("GooglePlay Ads : onAdClosed No listener found");
        }
    }

    public void onAdFailedToLoad(int i) {
        AdMarvelAd adMarvelAd = (AdMarvelAd) this.c.get();
        if (this.b == null || adMarvelAd == null) {
            Logging.log("GooglePlay Ads : onAdFailedToLoad No listener found");
        } else {
            this.b.onFailedToReceiveInterstitialAd(SDKAdNetwork.GOOGLEPLAY, adMarvelAd.getPubId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
            Logging.log("GooglePlay Ads : onAdFailedToLoad");
        }
    }

    public void onAdLeftApplication() {
        if (this.b != null) {
            Logging.log("GooglePlay Ads : onAdLeftApplication");
        } else {
            Logging.log("GooglePlay Ads : onAdLeftApplication No listener found");
        }
    }

    public void onAdLoaded() {
        AdMarvelAd adMarvelAd = (AdMarvelAd) this.c.get();
        if (this.b == null || adMarvelAd == null) {
            Logging.log("GooglePlay Ads : onAdLoaded No listener found");
        } else {
            this.b.onReceiveInterstitialAd(SDKAdNetwork.GOOGLEPLAY, adMarvelAd.getPubId(), adMarvelAd);
            Logging.log("GooglePlay Ads : onAdLoaded");
        }
    }

    public void onAdOpened() {
        Logging.log("GooglePlay Ads : onAdOpened");
    }
}