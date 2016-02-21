package com.admarvel.android.admarvelfacebookadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.ref.WeakReference;

public class InternalFacebookInterstitialListener implements InterstitialAdListener {
    AdMarvelAd adMarvelAd;
    private final WeakReference adMarvelAdReference;
    private AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener;
    private final WeakReference interstitialAdReference;

    public InternalFacebookInterstitialListener(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, AdMarvelAd adMarvelAd, InterstitialAd interstitialAd) {
        this.adMarvelInterstitialAdapterListener = adMarvelInterstitialAdapterListener;
        this.adMarvelAd = adMarvelAd;
        this.adMarvelAdReference = new WeakReference(this.adMarvelAd);
        this.interstitialAdReference = new WeakReference(interstitialAd);
    }

    public void onAdClicked(Ad ad) {
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onClickInterstitialAd(AdTrackerConstants.BLANK);
            Logging.log("Facebook SDK : onAdClicked");
        } else {
            Logging.log("Facebook SDK : onAdClicked No listener found");
        }
    }

    public void onAdLoaded(Ad ad) {
        AdMarvelAd adMarvelAd = (AdMarvelAd) this.adMarvelAdReference.get();
        if (this.adMarvelInterstitialAdapterListener == null || adMarvelAd == null) {
            Logging.log("Facebook SDK : onAdLoaded No listenr found");
        } else {
            this.adMarvelInterstitialAdapterListener.onReceiveInterstitialAd(SDKAdNetwork.FACEBOOK, adMarvelAd.getPubId(), adMarvelAd);
            Logging.log("Facebook SDK : onAdLoaded");
        }
    }

    public void onError(Ad ad, AdError adError) {
        AdMarvelAd adMarvelAd = (AdMarvelAd) this.adMarvelAdReference.get();
        if (this.adMarvelInterstitialAdapterListener == null || adMarvelAd == null) {
            Logging.log("Facebook SDK : onError No listenr found");
        } else {
            this.adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.FACEBOOK, adMarvelAd.getPubId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
            Logging.log("Facebook SDK : onError");
        }
    }

    public void onInterstitialDismissed(Ad ad) {
        if (this.interstitialAdReference != null) {
            InterstitialAd interstitialAd = (InterstitialAd) this.interstitialAdReference.get();
            if (interstitialAd != null) {
                interstitialAd.destroy();
            }
        }
        if (this.adMarvelInterstitialAdapterListener != null) {
            this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
            Logging.log("Facebook SDK : onAdDismissed");
        } else {
            Logging.log("Facebook SDK : onAdDismissed No listenr found");
        }
    }

    public void onInterstitialDisplayed(Ad ad) {
        Logging.log("Facebook SDK : onInterstitialDisplayed");
    }
}