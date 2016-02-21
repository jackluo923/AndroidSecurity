package com.admarvel.android.nativeads;

import android.content.Context;
import com.admarvel.android.ads.AdMarvelAnalyticsAdapterInstances;
import com.admarvel.android.ads.AdMarvelUtils.AdMArvelErrorReason;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd.AdMarvelNativeAdListener;
import com.admarvel.android.util.Logging;
import java.util.Map;

public class a {
    private AdMarvelNativeAdListener a;

    public void a_() {
        if (this.a != null) {
            Logging.log("onRequestInterstitialAd");
            this.a.onRequestNativeAd();
        }
    }

    public void a_(AdMarvelNativeAdListener adMarvelNativeAdListener) {
        this.a = adMarvelNativeAdListener;
    }

    public void a_(AdMarvelNativeAd adMarvelNativeAd) {
        Context context = adMarvelNativeAd.getmContext();
        String siteId = adMarvelNativeAd.getSiteId();
        int id = adMarvelNativeAd.getId();
        String ipAddress = adMarvelNativeAd.getIpAddress();
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onReceiveAd(siteId, id, adMarvelNativeAd.getTargetParams(), ipAddress);
        } catch (Exception e) {
        }
        if (this.a != null) {
            Logging.log("onReceiveNativeAd");
            this.a.onReceiveNativeAd(adMarvelNativeAd);
        }
    }

    public void a_(AdMarvelNativeAd adMarvelNativeAd, int i, AdMArvelErrorReason adMArvelErrorReason) {
        Context context = adMarvelNativeAd.getmContext();
        String siteId = adMarvelNativeAd.getSiteId();
        int id = adMarvelNativeAd.getId();
        String ipAddress = adMarvelNativeAd.getIpAddress();
        Map targetParams = adMarvelNativeAd.getTargetParams();
        if (context != null) {
            try {
                AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onFailedToReceiveAd(siteId, id, targetParams, ipAddress);
            } catch (Exception e) {
            }
        }
        if (this.a != null) {
            Logging.log("onFailedToReceiveNativeAd : Error Code " + i);
            this.a.onFailedToReceiveNativeAd(i, adMArvelErrorReason, adMarvelNativeAd);
        }
    }
}