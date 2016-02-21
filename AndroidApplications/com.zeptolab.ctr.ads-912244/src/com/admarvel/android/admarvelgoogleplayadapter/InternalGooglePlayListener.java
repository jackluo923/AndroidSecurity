package com.admarvel.android.admarvelgoogleplayadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.util.Logging;
import com.google.android.gms.ads.AdListener;

class InternalGooglePlayListener extends AdListener {
    private AdMarvelAdapterListener a;

    public InternalGooglePlayListener(AdMarvelAdapterListener adMarvelAdapterListener, AdMarvelAd adMarvelAd) {
        this.a = adMarvelAdapterListener;
    }

    public void destroyListener() {
        this.a = null;
    }

    public void onAdClosed() {
        Logging.log("GooglePlay Ads : onAdClosed");
    }

    public void onAdFailedToLoad(int i) {
        if (this.a != null) {
            this.a.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            Logging.log("GooglePlay Ads : onAdFailedToLoad");
        } else {
            Logging.log("GooglePlay Ads : onAdFailedToLoad No listener found");
        }
    }

    public void onAdLeftApplication() {
        Logging.log("GooglePlay Ads : onAdLeftApplication");
    }

    public void onAdLoaded() {
        if (this.a != null) {
            this.a.onReceiveAd();
            Logging.log("GooglePlay Ads : onAdLoaded");
        } else {
            Logging.log("GooglePlay Ads : onAdLoaded No listener found");
        }
    }

    public void onAdOpened() {
        Logging.log("GooglePlay Ads : onAdOpened");
    }
}