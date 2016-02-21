package com.admarvel.android.admarveladcolonyadapter;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelAdapter;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.ads.AdMarvelXMLElement;
import com.admarvel.android.ads.AdMarvelXMLReader;
import com.admarvel.android.util.Logging;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.jirbo.adcolony.AdColony;
import com.jirbo.adcolony.AdColonyVideoAd;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class AdMarvelAdColonyAdapter extends AdMarvelAdapter {
    private WeakReference a;
    private InternalAdColonyInterstitialListener b;
    private AdColonyVideoAd c;
    private boolean d;

    public AdMarvelAdColonyAdapter() {
        this.d = false;
    }

    private String getAdNetworkSDKDate() {
        return "2014-05-22";
    }

    private String getAdNetworkSDKVersion() {
        return "2.0.7";
    }

    protected void cleanupView(View view) {
    }

    protected void displayInterstitial(Activity activity, String str) {
        Logging.log("AdColony Adapter : displayInterstitial");
        this.c.show();
    }

    protected void forceCloseFullScreenAd(Activity activity) {
        Logging.log("AdColony Adapter : forceCloseFullScreenAd");
        if (this.b != null) {
            this.b.setFullScreenCloseInitiated();
        }
        AdColony.cancelVideo();
    }

    public String getAdapterVersion() {
        return i.a;
    }

    public String getAdnetworkSDKVersionInfo() {
        return "admarvel_version: " + i.a + "; adcolony_sdk_version: " + getAdNetworkSDKVersion() + "; date: " + getAdNetworkSDKDate();
    }

    public void handleClick() {
    }

    public void handleImpression() {
    }

    public void initialize(Activity activity, Map map) {
        this.a = new WeakReference(activity);
        if (map != null) {
            try {
                if (map.size() > 0) {
                    Iterator it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        Entry entry = (Entry) it.next();
                        if (((SDKAdNetwork) entry.getKey()).equals(SDKAdNetwork.ADCOLONY)) {
                            String[] split = ((String) entry.getValue()).split("\\|");
                            if (split.length > 2) {
                                String str = split[0];
                                String str2 = split[1];
                                String str3 = split[2];
                                if (split.length > 3) {
                                    int i = 3;
                                    while (i < split.length) {
                                        String concat = str3.concat("," + split[i]);
                                        i++;
                                        str3 = concat;
                                    }
                                }
                                AdColony.configure(activity, str, str2, new String[]{str3});
                                Logging.log("Initializing AdColony: appVersion: " + str + "; appId: " + str2 + "; zoneId: " + str3);
                                this.d = true;
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    protected AdMarvelAd loadAd(AdMarvelAd adMarvelAd, AdMarvelXMLReader adMarvelXMLReader) {
        Logging.log("AdColony Adapter : loadAd");
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        String str = (String) parsedXMLData.getAttributes().get(AdDatabaseHelper.COLUMN_APPID);
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK AdColony AppId");
        } else {
            adMarvelAd.setAppId(str);
        }
        String str2 = (String) parsedXMLData.getAttributes().get("zone");
        if (str2 == null || str2.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK AdColony ZoneId");
        } else {
            adMarvelAd.setZoneId(str2);
        }
        String str3 = (String) parsedXMLData.getAttributes().get("appversion");
        if (str3 != null && str3.length() > 0) {
            adMarvelAd.setAdColonyAppVersion(str3);
        }
        if (this.a != null) {
            Activity activity = (Activity) this.a.get();
            if (!(activity == null || this.d || str3 == null)) {
                activity.runOnUiThread(new a(this, activity, str3, str, str2));
            }
        } else {
            Logging.log("Adcolony : Load Ad - Activity context not found ... is AdMarvel initalized called ???");
        }
        return adMarvelAd;
    }

    public Object loadNativeAd(Object obj, AdMarvelXMLReader adMarvelXMLReader) {
        return null;
    }

    public void onAdColonyAdAvailabilityChange(boolean z, String str) {
    }

    public void pause(Activity activity, Map map) {
        AdColony.pause();
    }

    public void registerViewForInteraction(View view) {
    }

    protected void requestIntersitialNewAd(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        Logging.log("AdColony Adapter : requestIntersitialNewAd");
        if (this.d) {
            this.b = new InternalAdColonyInterstitialListener(adMarvelInterstitialAdapterListener, adMarvelAd);
            this.c = new AdColonyVideoAd();
            this.c = this.c.withListener(this.b);
            if (this.c.isReady()) {
                this.b.onReceiveAd();
            } else {
                adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.ADCOLONY, adMarvelAd.getAppId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
                Logging.log("AdColony Adapter : onFailedToReceiveInterstitialAd");
            }
        } else {
            Logging.log("AdColony Adapter : Ad is not initialized .. trying again");
            if (context == null || !context instanceof Activity) {
                Logging.log("AdColony Adapter : Initalizting Ad Failed ...either context is null or it's not an Activity context");
            } else {
                Activity activity = (Activity) context;
                if (!(activity == null || adMarvelAd == null || adMarvelAd.getAdColonyAppVersion() == null || adMarvelAd.getAppId() == null || adMarvelAd.getZoneId() == null)) {
                    activity.runOnUiThread(new b(this, activity, adMarvelAd));
                }
            }
            adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.ADCOLONY, adMarvelAd.getAppId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
            Logging.log("AdColony Adapter : onFailedToReceiveInterstitialAd");
        }
    }

    public Object requestNativeAd(AdMarvelAdapterListener adMarvelAdapterListener, Object obj) {
        return null;
    }

    protected View requestNewAd(AdMarvelAdapterListener adMarvelAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        return null;
    }

    public void resume(Activity activity, Map map) {
        if (activity != null) {
            AdColony.resume(activity);
        }
    }

    public void uninitialize(Activity activity, Map map) {
    }

    public void unregisterView() {
    }
}