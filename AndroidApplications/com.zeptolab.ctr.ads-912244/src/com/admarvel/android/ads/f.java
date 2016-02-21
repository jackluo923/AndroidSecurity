package com.admarvel.android.ads;

import android.content.Context;
import com.admarvel.android.ads.AdMarvelInterstitialAds.AdMarvelInterstitialAdListener;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import java.util.Map;

public class f {
    private AdMarvelInterstitialAdListener a;

    public void a() {
        if (this.a != null) {
            Logging.log("onRequestInterstitialAd");
            this.a.onRequestInterstitialAd();
        }
    }

    public void a(Context context, SDKAdNetwork sDKAdNetwork, String str, int i, ErrorReason errorReason, String str2, int i2, Map map, String str3) {
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onFailedToReceiveAd(str2, i2, map, str3);
        } catch (Exception e) {
        }
        if (this.a != null) {
            Logging.log("onFailedToReceiveInterstitialAd : Error Code " + i);
            this.a.onFailedToReceiveInterstitialAd(sDKAdNetwork, str, i, errorReason);
        }
    }

    public void a(Context context, SDKAdNetwork sDKAdNetwork, String str, AdMarvelAd adMarvelAd, String str2, int i, Map map, String str3) {
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onReceiveAd(str2, i, map, str3);
        } catch (Exception e) {
        }
        if (this.a != null) {
            Logging.log("onReceiveInterstitialAd");
            this.a.onReceiveInterstitialAd(sDKAdNetwork, str, adMarvelAd);
        }
    }

    public void a(Context context, String str, String str2, int i, Map map, String str3) {
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onAdClick(str2, i, map, str, str3);
        } catch (Exception e) {
        }
        if (this.a != null) {
            Logging.log("onClickInterstitialAd");
            this.a.onClickInterstitialAd(str);
        }
    }

    public void a(AdMarvelActivity adMarvelActivity) {
        if (this.a != null) {
            Logging.log("onAdmarvelActivityLaunched");
            this.a.onAdmarvelActivityLaunched(adMarvelActivity);
        }
    }

    public void a(AdMarvelInterstitialAdListener adMarvelInterstitialAdListener) {
        this.a = adMarvelInterstitialAdListener;
    }

    public void a(AdMarvelVideoActivity adMarvelVideoActivity) {
        if (this.a != null) {
            Logging.log("onAdMarvelVideoActivityLaunched");
            this.a.onAdMarvelVideoActivityLaunched(adMarvelVideoActivity);
        }
    }

    public boolean b() {
        if (this.a == null) {
            return false;
        }
        Logging.log("onCloseInterstitialAd");
        this.a.onCloseInterstitialAd();
        return true;
    }
}