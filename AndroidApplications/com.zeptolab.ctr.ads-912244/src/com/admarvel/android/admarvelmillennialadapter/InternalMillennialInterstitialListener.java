package com.admarvel.android.admarvelmillennialadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.RequestListener;
import java.lang.ref.WeakReference;

public class InternalMillennialInterstitialListener implements RequestListener {
    private AdMarvelInterstitialAdapterListener a;
    private AdMarvelAd b;
    private final WeakReference c;

    public InternalMillennialInterstitialListener(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, AdMarvelAd adMarvelAd) {
        this.a = adMarvelInterstitialAdapterListener;
        this.b = adMarvelAd;
        this.c = new WeakReference(adMarvelAd);
    }

    public void MMAdOverlayClosed(MMAd mMAd) {
        if (this.a != null) {
            this.a.onCloseInterstitialAd();
            Logging.log("MMSDK Interstitial - MMAdOverlayClosed");
        } else {
            Logging.log("MMSDK Interstitial Ads : MMAdOverlayClosed No listener found");
        }
    }

    public void MMAdOverlayLaunched(MMAd mMAd) {
        Logging.log("MMSDK Interstitial - MMAdOverlayLaunched");
    }

    public void MMAdRequestIsCaching(MMAd mMAd) {
        Logging.log("MMSDK Interstitial - MMAdRequestIsCaching");
    }

    public void onSingleTap(MMAd mMAd) {
        if (this.a != null) {
            this.a.onClickInterstitialAd(AdTrackerConstants.BLANK);
            Logging.log("MMSDK Interstitial : onSingleTap");
        } else {
            Logging.log("MMSDK Interstitial : onSingleTap No listener found");
        }
    }

    public void requestCompleted(MMAd mMAd) {
        AdMarvelAd adMarvelAd = (AdMarvelAd) this.c.get();
        if (this.a == null || adMarvelAd == null) {
            Logging.log("MMSDK Interstitial - requestCompleted  No listener found");
        } else {
            this.a.onReceiveInterstitialAd(SDKAdNetwork.MILLENNIAL, adMarvelAd.getPubId(), adMarvelAd);
            Logging.log("MMSDK Interstitial - requestCompleted");
        }
    }

    public void requestFailed(MMAd mMAd, MMException mMException) {
        AdMarvelAd adMarvelAd = (AdMarvelAd) this.c.get();
        if (this.a == null || adMarvelAd == null) {
            Logging.log("MMSDK Interstitial - requestFailed No listener found");
        } else {
            this.a.onFailedToReceiveInterstitialAd(SDKAdNetwork.MILLENNIAL, adMarvelAd.getPubId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
            Logging.log("MMSDK Interstitial - requestFailed");
        }
    }
}