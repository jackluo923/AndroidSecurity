package com.admarvel.android.ads;

import android.content.Context;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelView.AdMarvelViewExtendedListener;
import com.admarvel.android.ads.AdMarvelView.AdMarvelViewListener;
import com.admarvel.android.util.Logging;
import java.util.Map;

public class o {
    private AdMarvelViewListener a;
    private AdMarvelViewExtendedListener b;

    public void a() {
        if (this.a != null) {
            Logging.log("onExpand");
            this.a.onExpand();
        } else {
            Logging.log("onExpand - No listener found");
        }
    }

    public void a(Context context, AdMarvelView adMarvelView, int i, ErrorReason errorReason, String str, int i2, Map map, String str2) {
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onFailedToReceiveAd(str, i2, map, str2);
        } catch (Exception e) {
        }
        if (this.a != null) {
            Logging.log("onFailedToReceiveAd : Error Code " + i);
            this.a.onFailedToReceiveAd(adMarvelView, i, errorReason);
        } else {
            Logging.log("onFailedToReceiveAd - No listener found");
        }
    }

    public void a(Context context, AdMarvelView adMarvelView, String str, int i, Map map, String str2) {
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onReceiveAd(str, i, map, str2);
        } catch (Exception e) {
        }
        if (this.a != null) {
            Logging.log("onReceiveAd");
            this.a.onReceiveAd(adMarvelView);
        } else {
            Logging.log("onReceiveAd - No listener found");
        }
    }

    public void a(Context context, AdMarvelView adMarvelView, String str, String str2, int i, Map map, String str3) {
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onAdClick(str2, i, map, str, str3);
        } catch (Exception e) {
        }
        if (this.a != null) {
            Logging.log("onClickAd");
            this.a.onClickAd(adMarvelView, str);
        } else {
            Logging.log("onClickAd - No listener found");
        }
    }

    public void a(AdMarvelViewExtendedListener adMarvelViewExtendedListener) {
        this.b = adMarvelViewExtendedListener;
    }

    public void a(AdMarvelViewListener adMarvelViewListener) {
        this.a = adMarvelViewListener;
    }

    public void a(AdMarvelView adMarvelView) {
        if (this.a != null) {
            Logging.log("onRequestAd");
            this.a.onRequestAd(adMarvelView);
        } else {
            Logging.log("onRequestAd - No listener found");
        }
    }

    public void a(AdMarvelView adMarvelView, AdMarvelAd adMarvelAd) {
        if (this.b != null) {
            Logging.log("onAdFetched");
            this.b.onAdFetched(adMarvelView, adMarvelAd);
        } else {
            Logging.log("onAdFetched - No listener found");
        }
    }

    public void b() {
        if (this.a != null) {
            Logging.log("onClose");
            this.a.onClose();
        } else {
            Logging.log("onClose - No listener found");
        }
    }

    public void b(Context context, AdMarvelView adMarvelView, String str, int i, Map map, String str2) {
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).onReceiveAd(str, i, map, str2);
        } catch (Exception e) {
        }
        if (this.b != null) {
            Logging.log("onDisplayedAd");
            this.b.onAdDisplayed(adMarvelView);
        } else {
            Logging.log("onDisplayedAd - No listener found");
        }
    }
}