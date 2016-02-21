package com.admarvel.android.admarvelmillennialadapter;

import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.util.Logging;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.RequestListener;

public class InternalMillennialListener implements RequestListener {
    private AdMarvelAdapterListener a;

    public InternalMillennialListener(AdMarvelAdapterListener adMarvelAdapterListener, AdMarvelAd adMarvelAd) {
        this.a = adMarvelAdapterListener;
    }

    public void MMAdOverlayClosed(MMAd mMAd) {
        if (this.a != null) {
            this.a.onClose();
            Logging.log("MMSDK - MMAdOverlayClosed");
        } else {
            Logging.log("MMSDK-MMAdOverlayClosed --- No listener found");
        }
    }

    public void MMAdOverlayLaunched(MMAd mMAd) {
        if (this.a != null) {
            this.a.onExpand();
            Logging.log("MMSDK-MMAdOverlayLaunched");
        } else {
            Logging.log("MMSDK-MMAdOverlayLaunched --- No listener found");
        }
    }

    public void MMAdRequestIsCaching(MMAd mMAd) {
        Logging.log("MMSDK-MMAdRequestIsCaching");
    }

    public void destroyListener() {
        this.a = null;
    }

    public void onSingleTap(MMAd mMAd) {
        if (this.a != null) {
            this.a.onClickAd(AdTrackerConstants.BLANK);
            Logging.log("MMSDK - onSingleTap");
        } else {
            Logging.log("MMSDK-onSingleTap --- No listener found");
        }
    }

    public void requestCompleted(MMAd mMAd) {
        if (this.a != null) {
            this.a.onReceiveAd();
            Logging.log("MMSDK-requestCompleted");
        } else {
            Logging.log("MMSDK-requestCompleted --- No listener found");
        }
    }

    public void requestFailed(MMAd mMAd, MMException mMException) {
        if (this.a != null) {
            this.a.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            Logging.log("MMSDK - requestFailed");
        } else {
            Logging.log("MMSDK-requestFailed --- No listener found");
        }
    }
}