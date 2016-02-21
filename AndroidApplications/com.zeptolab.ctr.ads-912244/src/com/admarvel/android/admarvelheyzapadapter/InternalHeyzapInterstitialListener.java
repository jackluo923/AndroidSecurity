package com.admarvel.android.admarvelheyzapadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.heyzap.sdk.ads.HeyzapAds.OnStatusListener;

public class InternalHeyzapInterstitialListener implements OnStatusListener {
    AdMarvelAd adMarvelAd;
    private AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener;

    public InternalHeyzapInterstitialListener(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, AdMarvelAd adMarvelAd) {
        this.adMarvelInterstitialAdapterListener = adMarvelInterstitialAdapterListener;
        this.adMarvelAd = adMarvelAd;
    }

    public void onAudioFinished() {
        Logging.log("Heyzap : onAudioFinished");
    }

    public void onAudioStarted() {
        Logging.log("Heyzap : onAudioStarted");
    }

    public void onAvailable(String str) {
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onReceiveInterstitialAd(SDKAdNetwork.HEYZAP, this.adMarvelAd.getAppId(), this.adMarvelAd);
            Logging.log("Heyzap : onReceiveAd");
        } else {
            Logging.log("HeyZap : onReceiveAd No listener found");
        }
    }

    public void onClick(String str) {
        Logging.log("Heyzap : onClick");
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onClickInterstitialAd(str);
            Logging.log("Heyzap : onClick");
        } else {
            Logging.log("HeyZap : onClick No listener found");
        }
    }

    public void onFailedToFetch(String str) {
        if (this.adMarvelInterstitialAdapterListener == null || this.adMarvelAd == null) {
            Logging.log("Heyzap Ads : onAdFailedToLoad No listener found");
        } else {
            this.adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.HEYZAP, this.adMarvelAd.getPubId(), 205, AdMarvelUtils.getErrorReason(205), this.adMarvelAd);
            Logging.log("Heyzap : onFailedToFetch");
        }
    }

    public void onFailedToShow(String str) {
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
            Logging.log("Heyzap : onFailedToShow");
        } else {
            Logging.log("Heyzap : onFailedToShow No listener found");
        }
    }

    public void onHide(String str) {
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
            Logging.log("Heyzap : onHide");
        } else {
            Logging.log("Heyzap : onHide No listener found");
        }
    }

    public void onShow(String str) {
        Logging.log("Heyzap : onShow");
    }
}