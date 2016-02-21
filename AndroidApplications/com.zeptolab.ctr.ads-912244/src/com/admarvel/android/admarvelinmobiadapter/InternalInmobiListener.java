package com.admarvel.android.admarvelinmobiadapter;

import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.util.Logging;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;
import com.inmobi.monetization.IMErrorCode;
import java.util.Map;

public class InternalInmobiListener implements IMBannerListener {
    private AdMarvelAdapterListener listener;

    public InternalInmobiListener(AdMarvelAdapterListener adMarvelAdapterListener) {
        this.listener = adMarvelAdapterListener;
    }

    public void onBannerInteraction(IMBanner iMBanner, Map map) {
        if (this.listener != null) {
            this.listener.onClickAd(AdTrackerConstants.BLANK);
            Logging.log("InMobi SDK : onBannerInteraction");
        } else {
            Logging.log("InMobi SDK : onBannerInteraction .. No listener Found");
        }
    }

    public void onBannerRequestFailed(IMBanner iMBanner, IMErrorCode iMErrorCode) {
        if (this.listener != null) {
            this.listener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            Logging.log("InMobi SDK : onBannerRequestFailed");
        } else {
            Logging.log("InMobi SDK : onBannerRequestFailed .. No listener Found");
        }
    }

    public void onBannerRequestSucceeded(IMBanner iMBanner) {
        if (this.listener != null) {
            this.listener.onReceiveAd();
            Logging.log("InMobi SDK : onBannerRequestSucceeded");
        } else {
            Logging.log("InMobi SDK : onBannerRequestSucceeded .. No listener Found");
        }
    }

    public void onDismissBannerScreen(IMBanner iMBanner) {
        if (this.listener != null) {
            this.listener.onClose();
            Logging.log("InMobi SDK : onDismissBannerScreen");
        } else {
            Logging.log("InMobi SDK : onDismissBannerScreen .. No listener Found");
        }
    }

    public void onLeaveApplication(IMBanner iMBanner) {
        Logging.log("InMobi SDK : onLeaveApplication");
    }

    public void onShowBannerScreen(IMBanner iMBanner) {
        if (this.listener != null) {
            this.listener.onExpand();
            Logging.log("InMobi SDK : onShowBannerScreen");
        } else {
            Logging.log("InMobi SDK : onShowBannerScreen .. No listener Found");
        }
    }
}