package com.admarvel.android.admarveladcolonyadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.jirbo.adcolony.AdColonyAd;
import com.jirbo.adcolony.AdColonyAdListener;

public class InternalAdColonyInterstitialListener implements AdColonyAdListener {
    AdMarvelAd adMarvelAd;
    private AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener;
    Boolean fullscreenCloseInitiated;

    public InternalAdColonyInterstitialListener(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, AdMarvelAd adMarvelAd) {
        this.fullscreenCloseInitiated = Boolean.valueOf(false);
        this.adMarvelInterstitialAdapterListener = adMarvelInterstitialAdapterListener;
        this.adMarvelAd = adMarvelAd;
    }

    public void onAdColonyAdAttemptFinished(AdColonyAd adColonyAd) {
        if (this.adMarvelInterstitialAdapterListener == null) {
            Logging.log("AdColony : onAdColonyAdAttemptFinished No listener found");
        } else if (adColonyAd.noFill()) {
            this.adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.ADCOLONY, this.adMarvelAd.getAppId(), 205, AdMarvelUtils.getErrorReason(205), this.adMarvelAd);
            Logging.log("AdColony : noFill - onFailedToReceiveInterstitialAd");
        } else if (adColonyAd.notShown()) {
            if (this.fullscreenCloseInitiated.booleanValue()) {
                this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
                Logging.log("AdColony :fullscreenCloseInitiated - onCloseInterstitialAd");
            } else {
                this.adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.ADCOLONY, this.adMarvelAd.getAppId(), 205, AdMarvelUtils.getErrorReason(205), this.adMarvelAd);
                Logging.log("AdColony : notShown - onFailedToReceiveInterstitialAd");
            }
        } else if (adColonyAd.skipped()) {
            this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
            Logging.log("AdColony : skipped - onCloseInterstitialAd");
        } else if (adColonyAd.canceled()) {
            this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
            Logging.log("AdColony : canceled - onCloseInterstitialAd");
        } else {
            this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
            Logging.log("AdColony : onCloseInterstitialAd");
        }
    }

    public void onAdColonyAdStarted(AdColonyAd adColonyAd) {
        Logging.log("AdColony : onAdColonyAdStarted ");
    }

    public void onReceiveAd() {
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onReceiveInterstitialAd(SDKAdNetwork.ADCOLONY, this.adMarvelAd.getAppId(), this.adMarvelAd);
            Logging.log("AdColony : onReceiveAd");
        } else {
            Logging.log("AdColony : onReceiveAd No listener found");
        }
    }

    public void setFullScreenCloseInitiated() {
        this.fullscreenCloseInitiated = Boolean.valueOf(true);
    }
}