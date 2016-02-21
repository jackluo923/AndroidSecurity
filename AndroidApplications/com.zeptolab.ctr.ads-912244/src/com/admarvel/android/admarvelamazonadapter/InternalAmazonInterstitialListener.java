package com.admarvel.android.admarvelamazonadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdProperties;
import com.amazon.device.ads.DefaultAdListener;
import java.lang.ref.WeakReference;

public class InternalAmazonInterstitialListener extends DefaultAdListener {
    AdMarvelAd adMarvelAd;
    private final WeakReference adMarvelAdReference;
    private AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener;

    public InternalAmazonInterstitialListener(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, AdMarvelAd adMarvelAd) {
        this.adMarvelInterstitialAdapterListener = adMarvelInterstitialAdapterListener;
        this.adMarvelAd = adMarvelAd;
        this.adMarvelAdReference = new WeakReference(this.adMarvelAd);
    }

    public void onAdDismissed(Ad ad) {
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
            Logging.log("Amazon : onCloseAd");
        } else {
            Logging.log("Amazon : onCloseAd No listener found");
        }
    }

    public void onAdFailedToLoad(Ad ad, AdError adError) {
        AdMarvelAd adMarvelAd = (AdMarvelAd) this.adMarvelAdReference.get();
        if (this.adMarvelInterstitialAdapterListener == null || adMarvelAd == null) {
            Logging.log("Amazon Ads : onAdFailedToLoad No listener found");
        } else {
            this.adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.AMAZON, adMarvelAd.getPubId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
            Logging.log("Amazon Ads : onAdFailedToLoad");
        }
    }

    public void onAdLoaded(Ad ad, AdProperties adProperties) {
        AdMarvelAd adMarvelAd = (AdMarvelAd) this.adMarvelAdReference.get();
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onReceiveInterstitialAd(SDKAdNetwork.AMAZON, adMarvelAd.getAppId(), adMarvelAd);
            Logging.log("Amazon : onReceiveAd");
        } else {
            Logging.log("Amazon : onReceiveAd No listener found");
        }
    }
}