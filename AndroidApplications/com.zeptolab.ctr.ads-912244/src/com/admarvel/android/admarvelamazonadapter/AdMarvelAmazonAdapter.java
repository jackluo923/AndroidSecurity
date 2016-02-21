package com.admarvel.android.admarvelamazonadapter;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
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
import com.amazon.device.ads.AdLayout;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.AdSize;
import com.amazon.device.ads.AdTargetingOptions;
import com.amazon.device.ads.InterstitialAd;
import com.brightcove.player.event.EventType;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Map;

public class AdMarvelAmazonAdapter extends AdMarvelAdapter {
    private AdLayout adLayout;
    private InternalAmazonInterstitialListener internalAmazonInterstitialListener;
    private InternalAmazonListener internalAmazonListener;
    private InterstitialAd interstitialAd;

    private String getAdNetworkSDKDate() {
        return "2014-07-18";
    }

    private String getAdNetworkSDKVersion() {
        return AdRegistration.getVersion();
    }

    protected void cleanupView(View view) {
        if (view != null && view instanceof AdLayout) {
            AdLayout adLayout = (AdLayout) view;
            adLayout.destroy();
            adLayout.setListener(null);
        }
        this.adLayout = null;
        if (this.internalAmazonListener != null) {
            Logging.log("Amazon SDK Adapter - cleanupView");
            this.internalAmazonListener.destroyListener();
            this.internalAmazonListener = null;
        }
    }

    protected void displayInterstitial(Activity activity, String str) {
        if (this.interstitialAd != null && !this.interstitialAd.isShowing()) {
            if (this.interstitialAd.showAd()) {
                Logging.log("admarvelAmazonAdapter: iterstitial displayed sucessfully");
            } else {
                Logging.log("admarvelAmazonAdapter: iterstitial failed to display");
            }
        }
    }

    protected void forceCloseFullScreenAd(Activity activity) {
    }

    public String getAdapterVersion() {
        return b.a;
    }

    public String getAdnetworkSDKVersionInfo() {
        return "admarvel_version: " + b.a + "; amazon_sdk_version: " + getAdNetworkSDKVersion() + "; date: " + getAdNetworkSDKDate();
    }

    public void handleClick() {
    }

    public void handleImpression() {
    }

    public void initialize(Activity activity, Map map) {
    }

    protected AdMarvelAd loadAd(AdMarvelAd adMarvelAd, AdMarvelXMLReader adMarvelXMLReader) {
        Logging.log("Amazon SDK Adapter - loadAd");
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        String str = (String) parsedXMLData.getAttributes().get("pubid");
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK publisher id");
        } else {
            adMarvelAd.setPubId(str);
        }
        str = (String) parsedXMLData.getAttributes().get(EventType.TEST);
        if (str == null || !str.equalsIgnoreCase("true")) {
            adMarvelAd.setTest(false);
        } else {
            adMarvelAd.setTest(true);
        }
        str = (String) parsedXMLData.getAttributes().get("adformat");
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK adformat, possible values(300x50,320x50,300x250,600x90,728x90,auto-size,interstitial)");
        } else {
            adMarvelAd.setAdFormat(str);
        }
        str = (String) parsedXMLData.getAttributes().get("advancedoptions");
        if (str != null && str.length() > 0) {
            adMarvelAd.setAmazonAdvancedOptions(str);
        }
        str = (String) parsedXMLData.getAttributes().get("adrequestadvancedoptions");
        if (str != null && str.length() > 0) {
            adMarvelAd.setAmazonAdRequestAdvancedOptions(str);
        }
        str = (String) parsedXMLData.getAttributes().get("timeout");
        if (str != null && str.length() > 0) {
            try {
                adMarvelAd.setAmazonAdTimeOut(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                Logging.log("adMarvel Amazon SDK: InterstitialTimeOut number format exception");
            }
        }
        str = (String) parsedXMLData.getAttributes().get("enableGeoLocation");
        if (str != null && str.length() > 0 && str.equalsIgnoreCase("true")) {
            adMarvelAd.setAmazonEnableGeoLocation(true);
        }
        return adMarvelAd;
    }

    public Object loadNativeAd(Object obj, AdMarvelXMLReader adMarvelXMLReader) {
        return null;
    }

    public void pause(Activity activity, Map map) {
    }

    public void registerViewForInteraction(View view) {
    }

    protected void requestIntersitialNewAd(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        String amazonAdvancedOptions;
        Logging.log("Amazon SDK Adapter - requestIntersitialNewAd");
        AdRegistration.enableLogging(AdMarvelUtils.isLoggingEnabled());
        if (adMarvelAd != null) {
            AdRegistration.enableTesting(adMarvelAd.isTest());
        }
        AdTargetingOptions adTargetingOptions = new AdTargetingOptions();
        if (adMarvelAd != null) {
            amazonAdvancedOptions = adMarvelAd.getAmazonAdvancedOptions();
            if (amazonAdvancedOptions != null && amazonAdvancedOptions.contains(":")) {
                String[] split = amazonAdvancedOptions.split("\\|");
                int length = split.length;
                int i3 = 0;
                while (i3 < length) {
                    String[] split2 = split[i3].split(":", GoogleScorer.CLIENT_PLUS);
                    if (split2.length >= 2 && split2[0].length() > 0 && split2[1].length() > 0) {
                        try {
                            adTargetingOptions.setAdvancedOption(split2[0], split2[1]);
                        } catch (IllegalArgumentException e) {
                            Logging.log(Log.getStackTraceString(e));
                        }
                    }
                    i3++;
                }
            }
        }
        if (map != null) {
            try {
                amazonAdvancedOptions = (String) map.get("AGE");
                if (amazonAdvancedOptions != null && amazonAdvancedOptions.length() > 0) {
                    adTargetingOptions.setAge(Integer.parseInt(amazonAdvancedOptions));
                }
            } catch (Exception e2) {
                Logging.log(Log.getStackTraceString(e2));
            }
            if (adMarvelAd != null) {
                try {
                    AdRegistration.setAppKey(adMarvelAd.getPubId());
                } catch (Exception e3) {
                    Logging.log(Log.getStackTraceString(e3));
                }
            }
        }
        if (adMarvelAd != null) {
            adTargetingOptions.enableGeoLocation(adMarvelAd.isAmazonEnableGeoLocation());
            this.interstitialAd = null;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                this.internalAmazonInterstitialListener = new InternalAmazonInterstitialListener(adMarvelInterstitialAdapterListener, adMarvelAd);
                this.interstitialAd = new InterstitialAd(activity);
                this.interstitialAd.setListener(this.internalAmazonInterstitialListener);
                if (adMarvelAd.getAmazonAdTimeOut() > 0) {
                    this.interstitialAd.setTimeout(adMarvelAd.getAmazonAdTimeOut());
                }
                this.interstitialAd.loadAd(adTargetingOptions);
            } else if (adMarvelInterstitialAdapterListener != null) {
                adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.AMAZON, adMarvelAd.getPubId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
                Logging.log("Amazon Adapter : onFailedToReceiveInterstitialAd");
            }
        }
    }

    public Object requestNativeAd(AdMarvelAdapterListener adMarvelAdapterListener, Object obj) {
        return null;
    }

    public View requestNewAd(AdMarvelAdapterListener adMarvelAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        String amazonAdvancedOptions;
        int i3;
        Logging.log("Amazon SDK Adapter - requestNewAd");
        AdRegistration.enableLogging(AdMarvelUtils.isLoggingEnabled());
        if (adMarvelAd != null) {
            AdRegistration.enableTesting(adMarvelAd.isTest());
        }
        AdTargetingOptions adTargetingOptions = new AdTargetingOptions();
        if (adMarvelAd != null) {
            amazonAdvancedOptions = adMarvelAd.getAmazonAdvancedOptions();
            if (amazonAdvancedOptions != null && amazonAdvancedOptions.contains(":")) {
                String[] split = amazonAdvancedOptions.split("\\|");
                int length = split.length;
                i3 = 0;
                while (i3 < length) {
                    String[] split2 = split[i3].split(":", GoogleScorer.CLIENT_PLUS);
                    if (split2.length >= 2 && split2[0].length() > 0 && split2[1].length() > 0) {
                        try {
                            adTargetingOptions.setAdvancedOption(split2[0], split2[1]);
                        } catch (IllegalArgumentException e) {
                            Logging.log(Log.getStackTraceString(e));
                        }
                    }
                    i3++;
                }
            }
        }
        if (map != null) {
            try {
                amazonAdvancedOptions = (String) map.get("AGE");
                if (amazonAdvancedOptions != null && amazonAdvancedOptions.length() > 0) {
                    adTargetingOptions.setAge(Integer.parseInt(amazonAdvancedOptions));
                }
            } catch (Exception e2) {
                Logging.log(Log.getStackTraceString(e2));
            }
            if (adMarvelAd != null) {
                try {
                    AdRegistration.setAppKey(adMarvelAd.getPubId());
                } catch (Exception e3) {
                    Logging.log(Log.getStackTraceString(e3));
                }
            }
        }
        if (adMarvelAd == null) {
            return null;
        }
        String adFormat = adMarvelAd.getAdFormat();
        this.adLayout = null;
        if (context instanceof Activity) {
            LayoutParams layoutParams;
            Activity activity = (Activity) context;
            i3 = 320;
            int i4 = ApiEventType.API_MRAID_CLOSE_VIDEO;
            if (adFormat.equalsIgnoreCase("300x50")) {
                this.adLayout = new AdLayout(activity, AdSize.SIZE_300x50);
                i3 = AdException.INVALID_REQUEST;
                i4 = ApiEventType.API_MRAID_CLOSE_VIDEO;
            } else if (adFormat.equalsIgnoreCase("320x50")) {
                this.adLayout = new AdLayout(activity, AdSize.SIZE_320x50);
                i3 = 320;
                i4 = ApiEventType.API_MRAID_CLOSE_VIDEO;
            } else if (adFormat.equalsIgnoreCase("300x250")) {
                this.adLayout = new AdLayout(activity, AdSize.SIZE_300x250);
                i3 = AdException.INVALID_REQUEST;
                i4 = 250;
            } else if (adFormat.equalsIgnoreCase("600x90")) {
                this.adLayout = new AdLayout(activity, AdSize.SIZE_600x90);
                i3 = 600;
                i4 = com.google.ads.AdSize.LARGE_AD_HEIGHT;
            } else if (adFormat.equalsIgnoreCase("728x90")) {
                this.adLayout = new AdLayout(activity, AdSize.SIZE_728x90);
                i3 = 728;
                i4 = com.google.ads.AdSize.LARGE_AD_HEIGHT;
            } else if (adFormat.equalsIgnoreCase("320x50")) {
                this.adLayout = new AdLayout(activity, AdSize.SIZE_320x50);
                i3 = 320;
                i4 = ApiEventType.API_MRAID_CLOSE_VIDEO;
            } else if (adFormat.equalsIgnoreCase("auto")) {
                this.adLayout = new AdLayout(activity, AdSize.SIZE_AUTO);
                i3 = 0;
                i4 = 0;
            }
            adTargetingOptions.enableGeoLocation(adMarvelAd.isAmazonEnableGeoLocation());
            this.internalAmazonListener = new InternalAmazonListener(adMarvelAdapterListener);
            this.adLayout.setListener(this.internalAmazonListener);
            if (i3 > 0) {
                float f = activity.getResources().getDisplayMetrics().density;
                layoutParams = new FrameLayout.LayoutParams((int) (((float) i3) * f), (int) (((float) i4) * f), 81);
            } else {
                layoutParams = new FrameLayout.LayoutParams(-1, -2, 81);
            }
            this.adLayout.setLayoutParams(layoutParams);
            i4 = adMarvelAd.getAmazonAdTimeOut();
            if (i4 > 0) {
                this.adLayout.setTimeout(i4);
            }
            this.adLayout.loadAd(adTargetingOptions);
            return this.adLayout;
        } else {
            if (adMarvelAdapterListener != null) {
                adMarvelAdapterListener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            }
            return null;
        }
    }

    public void resume(Activity activity, Map map) {
    }

    public void uninitialize(Activity activity, Map map) {
    }

    public void unregisterView() {
    }
}