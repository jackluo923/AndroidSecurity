package com.admarvel.android.admarvelamazonadapter;

import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.util.Logging;
import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdProperties;
import com.amazon.device.ads.DefaultAdListener;

public class InternalAmazonListener extends DefaultAdListener {
    private AdMarvelAdapterListener listener;

    public InternalAmazonListener(AdMarvelAdapterListener adMarvelAdapterListener) {
        this.listener = adMarvelAdapterListener;
    }

    public void destroyListener() {
        this.listener = null;
    }

    public void onAdCollapsed(Ad ad) {
        if (this.listener != null) {
            this.listener.onClose();
            Logging.log("Amazon SDK - onAdCollapsed");
        } else {
            Logging.log("Amazon SDK - onAdCollapsed --- No listener found");
        }
    }

    public void onAdDismissed(Ad ad) {
        if (this.listener != null) {
            this.listener.onClose();
            Logging.log("Amazon SDK - onAdDismissed");
        } else {
            Logging.log("Amazon SDK - onAdDismissed --- No listener found");
        }
    }

    public void onAdExpanded(Ad ad) {
        if (this.listener != null) {
            this.listener.onExpand();
            Logging.log("Amazon SDK - onAdExpanded");
        } else {
            Logging.log("Amazon SDK - onAdExpanded --- No listener found");
        }
    }

    public void onAdFailedToLoad(Ad ad, AdError adError) {
        if (this.listener != null) {
            this.listener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            Logging.log("Amazon SDK - onAdFailedToLoad");
        } else {
            Logging.log("Amazon SDK - onAdFailedToLoad --- No listener found");
        }
    }

    public void onAdLoaded(Ad ad, AdProperties adProperties) {
        if (this.listener != null) {
            this.listener.onReceiveAd();
            Logging.log("Amazon SDK - onAdLoaded");
        } else {
            Logging.log("Amazon SDK - onAdLoaded --- No listener found");
        }
    }
}