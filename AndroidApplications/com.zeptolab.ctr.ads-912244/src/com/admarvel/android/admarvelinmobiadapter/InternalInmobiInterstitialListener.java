package com.admarvel.android.admarvelinmobiadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitialListener;
import java.lang.ref.WeakReference;
import java.util.Map;

public class InternalInmobiInterstitialListener implements IMInterstitialListener {
    AdMarvelAd adMarvelAd;
    private final WeakReference adMarvelAdReference;
    private AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener;

    public InternalInmobiInterstitialListener(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, AdMarvelAd adMarvelAd) {
        this.adMarvelInterstitialAdapterListener = adMarvelInterstitialAdapterListener;
        this.adMarvelAd = adMarvelAd;
        this.adMarvelAdReference = new WeakReference(this.adMarvelAd);
    }

    public void onDismissInterstitialScreen(IMInterstitial iMInterstitial) {
        AdMarvelAd adMarvelAd = this.adMarvelAdReference != null ? (AdMarvelAd) this.adMarvelAdReference.get() : null;
        if (this.adMarvelInterstitialAdapterListener == null || adMarvelAd == null) {
            Logging.log("InMobi SDK : onDismissInterstitialScreen No listener found");
        } else {
            this.adMarvelInterstitialAdapterListener.onCloseInterstitialAd();
            Logging.log("InMobi SDK : onDismissInterstitialScreen");
        }
    }

    public void onInterstitialFailed(IMInterstitial iMInterstitial, IMErrorCode iMErrorCode) {
        AdMarvelAd adMarvelAd = this.adMarvelAdReference != null ? (AdMarvelAd) this.adMarvelAdReference.get() : null;
        if (this.adMarvelInterstitialAdapterListener == null || adMarvelAd == null) {
            Logging.log("InMobi SDK : onInterstitialFailed No listener found");
        } else {
            this.adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.INMOBI, adMarvelAd.getAppId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
            Logging.log("InMobi SDK : onInterstitialFailed");
        }
    }

    public void onInterstitialInteraction(IMInterstitial iMInterstitial, Map map) {
        AdMarvelAd adMarvelAd = this.adMarvelAdReference != null ? (AdMarvelAd) this.adMarvelAdReference.get() : null;
        if (this.adMarvelInterstitialAdapterListener == null || adMarvelAd == null) {
            Logging.log("InMobi SDK : onInterstitialInteraction No listener found");
        } else {
            this.adMarvelInterstitialAdapterListener.onClickInterstitialAd(AdTrackerConstants.BLANK);
            Logging.log("InMobi SDK : onInterstitialInteraction");
        }
    }

    public void onInterstitialLoaded(IMInterstitial iMInterstitial) {
        AdMarvelAd adMarvelAd = this.adMarvelAdReference != null ? (AdMarvelAd) this.adMarvelAdReference.get() : null;
        if (this.adMarvelInterstitialAdapterListener == null || adMarvelAd == null) {
            Logging.log("InMobi SDK : onInterstitialLoaded No listener found");
        } else {
            this.adMarvelInterstitialAdapterListener.onReceiveInterstitialAd(SDKAdNetwork.INMOBI, adMarvelAd.getAppId(), adMarvelAd);
            Logging.log("InMobi SDK : onInterstitialLoaded");
        }
    }

    public void onLeaveApplication(IMInterstitial iMInterstitial) {
        Logging.log("InMobi SDK : onLeaveApplication");
    }

    public void onShowInterstitialScreen(IMInterstitial iMInterstitial) {
        Logging.log("InMobi SDK : onShowInterstitialScreen");
    }
}