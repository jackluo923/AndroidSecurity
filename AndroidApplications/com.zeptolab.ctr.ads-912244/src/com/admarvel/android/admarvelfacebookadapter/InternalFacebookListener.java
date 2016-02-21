package com.admarvel.android.admarvelfacebookadapter;

import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.util.Logging;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public class InternalFacebookListener implements AdListener {
    private AdMarvelAdapterListener adMarvelAdapterListener;

    public InternalFacebookListener(AdMarvelAdapterListener adMarvelAdapterListener) {
        this.adMarvelAdapterListener = adMarvelAdapterListener;
    }

    public void destroyListener() {
        this.adMarvelAdapterListener = null;
    }

    public void onAdClicked(Ad ad) {
        if (this.adMarvelAdapterListener != null) {
            this.adMarvelAdapterListener.onClickAd(AdTrackerConstants.BLANK);
            Logging.log("Facebook SDK : onAdClicked");
        } else {
            Logging.log("Facebook SDK : onAdClicked .. No listener Found");
        }
    }

    public void onAdLoaded(Ad ad) {
        if (this.adMarvelAdapterListener != null) {
            this.adMarvelAdapterListener.onReceiveAd();
            Logging.log("Facebook SDK : onAdLoaded");
        } else {
            Logging.log("Facebook SDK : onAdLoaded .. No listener Found");
        }
    }

    public void onError(Ad ad, AdError adError) {
        if (this.adMarvelAdapterListener != null) {
            this.adMarvelAdapterListener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            Logging.log("Facebook SDK : onError");
        } else {
            Logging.log("Facebook SDK : onError .. No listener Found");
        }
    }
}