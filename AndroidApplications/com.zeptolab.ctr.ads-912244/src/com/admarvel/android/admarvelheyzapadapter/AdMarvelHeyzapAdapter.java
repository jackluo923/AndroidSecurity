package com.admarvel.android.admarvelheyzapadapter;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelAd.HeyzapAdType;
import com.admarvel.android.ads.AdMarvelAdapter;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.ads.AdMarvelXMLReader;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.admarvel.android.util.Logging;
import com.brightcove.player.event.Event;
import com.heyzap.internal.Analytics;
import com.heyzap.sdk.ads.HeyzapAds;
import com.heyzap.sdk.ads.IncentivizedAd;
import com.heyzap.sdk.ads.InterstitialAd;
import com.heyzap.sdk.ads.NativeAd;
import com.heyzap.sdk.ads.VideoAd;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import java.lang.ref.WeakReference;
import java.util.Map;

public class AdMarvelHeyzapAdapter extends AdMarvelAdapter {
    private WeakReference a;
    private InternalHeyzapInterstitialListener b;
    private InternalHeyZapIncentiveInterstitialListener c;
    private InternalHeyzapNativeListener d;
    private int e;
    private HeyzapAdType f;
    private AdMarvelNativeAd g;

    public AdMarvelHeyzapAdapter() {
        this.e = 1;
    }

    private String getAdNetworkSDKDate() {
        return "2014-07-31";
    }

    private String getAdNetworkSDKVersion() {
        return Analytics.HEYZAP_SDK_VERSION;
    }

    protected void cleanupView(View view) {
    }

    protected void displayInterstitial(Activity activity, String str) {
        Logging.log("Heyzap Adapter : displayInterstitial");
        if (this.f == HeyzapAdType.INTERSTITIAL_AD && InterstitialAd.isAvailable().booleanValue() && activity != null) {
            InterstitialAd.display(activity);
        } else if (this.f == HeyzapAdType.INCENTIVIZED_AD && IncentivizedAd.isAvailable().booleanValue()) {
            IncentivizedAd.display(activity);
        } else if (this.f == HeyzapAdType.VIDEO_AD && VideoAd.isAvailable().booleanValue()) {
            VideoAd.display(activity);
        }
    }

    protected void forceCloseFullScreenAd(Activity activity) {
    }

    public String getAdapterVersion() {
        return g.a;
    }

    public String getAdnetworkSDKVersionInfo() {
        return "admarvel_version: " + g.a + "; heyzap_sdk_version: " + getAdNetworkSDKVersion() + "; date: " + getAdNetworkSDKDate();
    }

    public void handleClick() {
        if (this.a != null && this.a.get() != null && this.d != null) {
            this.d.handleClick((Activity) this.a.get());
        }
    }

    public void handleImpression() {
        if (this.d != null) {
            this.d.doImpression();
        }
    }

    public void initialize(Activity activity, Map map) {
        boolean z;
        Exception exception;
        String str = null;
        Logging.log("Heyzap Adapter : initialize");
        this.a = new WeakReference(activity);
        if (map != null && map.containsKey(SDKAdNetwork.HEYZAP)) {
            try {
                ?[] Arr;
                String str2 = (String) map.get(SDKAdNetwork.HEYZAP);
                if (str2 != null) {
                    String[] strArr = str2.split(",");
                } else {
                    Arr = null;
                }
                if (Arr == null || Arr.length <= 0) {
                    z = false;
                } else {
                    z = Arr[0];
                    try {
                        if (Arr.length == 2) {
                            this.e = Integer.parseInt(Arr[1]);
                        }
                    } catch (Exception e) {
                        boolean z2 = z;
                        exception = e;
                        Logging.log("heyZapFlags Not proper " + exception.getMessage());
                        this.e = 1;
                    }
                }
                str = str2;
            } catch (Exception e2) {
                exception = e2;
                Logging.log("heyZapFlags Not proper " + exception.getMessage());
                this.e = 1;
            }
        }
        if (activity != null && str != null) {
            HeyzapAds.start(str, activity, this.e);
        }
    }

    protected AdMarvelAd loadAd(AdMarvelAd adMarvelAd, AdMarvelXMLReader adMarvelXMLReader) {
        Logging.log("Heyzap Adapter : loadAd");
        String str = (String) adMarvelXMLReader.getParsedXMLData().getAttributes().get(AdDatabaseHelper.COLUMN_ADTYPE);
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK Heyzap AdType must set type video , interstitial , incentivized");
        } else if (str.equalsIgnoreCase(Event.VIDEO)) {
            this.f = HeyzapAdType.VIDEO_AD;
            adMarvelAd.setHeyzapAdType(HeyzapAdType.VIDEO_AD);
        } else if (str.equalsIgnoreCase("interstitial")) {
            this.f = HeyzapAdType.INTERSTITIAL_AD;
            adMarvelAd.setHeyzapAdType(HeyzapAdType.INTERSTITIAL_AD);
        } else if (str.equalsIgnoreCase("incentivized")) {
            this.f = HeyzapAdType.INCENTIVIZED_AD;
            adMarvelAd.setHeyzapAdType(HeyzapAdType.INCENTIVIZED_AD);
        }
        return adMarvelAd;
    }

    public Object loadNativeAd(Object obj, AdMarvelXMLReader adMarvelXMLReader) {
        return obj;
    }

    public void pause(Activity activity, Map map) {
    }

    public void registerViewForInteraction(View view) {
    }

    protected void requestIntersitialNewAd(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        Logging.log("Heyzap Adapter : requestIntersitialNewAd");
        this.b = new InternalHeyzapInterstitialListener(adMarvelInterstitialAdapterListener, adMarvelAd);
        if (!(context == null || !(context instanceof Activity) || HeyzapAds.hasStarted().booleanValue())) {
            HeyzapAds.start(null, (Activity) context, this.e);
        }
        HeyzapAds.setOnStatusListener(this.b);
        this.f = adMarvelAd.getHeyzapAdType();
        if (this.f == null) {
            return;
        }
        if (this.f == HeyzapAdType.INCENTIVIZED_AD) {
            this.c = new InternalHeyZapIncentiveInterstitialListener(adMarvelInterstitialAdapterListener, adMarvelAd);
            HeyzapAds.setOnIncentiveResultListener(this.c);
            IncentivizedAd.fetch();
        } else if (this.f == HeyzapAdType.INTERSTITIAL_AD) {
            InterstitialAd.fetch();
        } else if (this.f == HeyzapAdType.VIDEO_AD) {
            VideoAd.fetch();
        }
    }

    public Object requestNativeAd(AdMarvelAdapterListener adMarvelAdapterListener, Object obj) {
        if (obj instanceof AdMarvelNativeAd) {
            this.g = (AdMarvelNativeAd) obj;
        }
        Logging.log("Heyzap Ads Adapter: requestNativeAd");
        if (this.g != null) {
            Context context = this.g.getmContext();
            if (context != null && context instanceof Activity) {
                Activity activity = (Activity) context;
                if (this.a != null) {
                    this.a.clear();
                }
                this.a = new WeakReference(activity);
            }
            this.d = new InternalHeyzapNativeListener(adMarvelAdapterListener, this.g);
            NativeAd.fetch(1, this.d);
        }
        return null;
    }

    protected View requestNewAd(AdMarvelAdapterListener adMarvelAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        return null;
    }

    public void resume(Activity activity, Map map) {
    }

    public void uninitialize(Activity activity, Map map) {
    }

    public void unregisterView() {
    }
}