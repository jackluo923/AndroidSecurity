package com.admarvel.android.admarvelfacebookadapter;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelAdapter;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.AdMArvelErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.ads.AdMarvelXMLElement;
import com.admarvel.android.ads.AdMarvelXMLReader;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.admarvel.android.util.Logging;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.AdSdkVersion;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;

public class AdMarvelFacebookAdapter extends AdMarvelAdapter {
    public static NativeAd fbNativeAd;
    private AdMarvelNativeAd adMarvelNativeAd;
    private AdView adView;
    private InternalFacebookInterstitialListener internalFacebookInterstitialListener;
    private InternalFacebookListener internalFacebookListener;
    private InternalFacebookNativeListener internalFacebookNativeListener;
    private InterstitialAd interstitialAd;

    private String getAdNetworkSDKDate() {
        return "2014-06-12";
    }

    private String getAdNetworkSDKVersion() {
        return AdSdkVersion.BUILD;
    }

    private String[] getFacebookTestDeviceIdStr(AdMarvelXMLElement adMarvelXMLElement) {
        String str = (String) adMarvelXMLElement.getAttributes().get("testdevices");
        if (str != null && str.length() > 0) {
            String[] split = str.split(",");
            if (split != null && split.length > 0) {
                return split;
            }
        }
        return null;
    }

    public void cleanupView(View view) {
        if (this.adView != null) {
            this.adView.destroy();
        }
        if (this.interstitialAd != null) {
            this.interstitialAd.destroy();
        }
        if (this.internalFacebookListener != null) {
            Logging.log("Facebook Adapter: cleanupView");
            this.internalFacebookListener.destroyListener();
        }
        this.internalFacebookListener = null;
        this.internalFacebookInterstitialListener = null;
        this.interstitialAd = null;
    }

    protected void displayInterstitial(Activity activity, String str) {
        if (this.interstitialAd != null) {
            Logging.log("Facebook Adapter: displayInterstitial");
            this.interstitialAd.show();
        }
    }

    protected void forceCloseFullScreenAd(Activity activity) {
    }

    public String getAdapterVersion() {
        return b.a;
    }

    public String getAdnetworkSDKVersionInfo() {
        return "admarvel_version: " + b.a + "; facebook_sdk_version: " + getAdNetworkSDKVersion() + "; date: " + getAdNetworkSDKDate();
    }

    public void handleClick() {
    }

    public void handleImpression() {
    }

    public void initialize(Activity activity, Map map) {
    }

    protected AdMarvelAd loadAd(AdMarvelAd adMarvelAd, AdMarvelXMLReader adMarvelXMLReader) {
        Logging.log("Facebook SDK Adapter - loadAd");
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        String str = (String) parsedXMLData.getAttributes().get("placementid");
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK publisher id");
        } else {
            adMarvelAd.setPubId(str);
        }
        String[] facebookTestDeviceIdStr = getFacebookTestDeviceIdStr(parsedXMLData);
        if (facebookTestDeviceIdStr != null && facebookTestDeviceIdStr.length > 0) {
            adMarvelAd.setFacebookTestDeviceId(facebookTestDeviceIdStr);
        }
        str = (String) parsedXMLData.getAttributes().get("childdirected");
        if (str != null && str.length() > 0) {
            adMarvelAd.setFacebookChildDirectedFlag(str);
        }
        return adMarvelAd;
    }

    public Object loadNativeAd(Object obj, AdMarvelXMLReader adMarvelXMLReader) {
        if (obj instanceof AdMarvelNativeAd) {
            this.adMarvelNativeAd = (AdMarvelNativeAd) obj;
        }
        Logging.log("Facebook SDK Adapter - loadAd");
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        String str = (String) parsedXMLData.getAttributes().get("placementid");
        if (str == null || str.length() <= 0) {
            this.adMarvelNativeAd.setAdType(AdMarvelNativeAd.AdType.ERROR);
            this.adMarvelNativeAd.setErrorCode(AdMArvelErrorReason.AD_REQUEST_MISSING_XML_ELEMENTS.getErrorCode());
            this.adMarvelNativeAd.setErrorReason("Missing SDK publisher id");
        } else {
            this.adMarvelNativeAd.setPubId(str);
        }
        String[] facebookTestDeviceIdStr = getFacebookTestDeviceIdStr(parsedXMLData);
        if (facebookTestDeviceIdStr != null && facebookTestDeviceIdStr.length > 0) {
            this.adMarvelNativeAd.setFacebookTestDeviceId(facebookTestDeviceIdStr);
        }
        str = (String) parsedXMLData.getAttributes().get("childdirected");
        if (str != null && str.length() > 0) {
            this.adMarvelNativeAd.setFacebookChildDirectedFlag(str);
        }
        return this.adMarvelNativeAd;
    }

    public void pause(Activity activity, Map map) {
    }

    public void registerViewForInteraction(View view) {
        if (fbNativeAd != null) {
            fbNativeAd.registerViewForInteraction(view);
        }
    }

    protected void requestIntersitialNewAd(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        Logging.log("Facebook SDK Adapter : requestIntersitialNewAd");
        String pubId = adMarvelAd.getPubId();
        String[] facebookTestDeviceId = adMarvelAd.getFacebookTestDeviceId();
        String facebookChildDirectedFlag = adMarvelAd.getFacebookChildDirectedFlag();
        if (facebookTestDeviceId != null && facebookTestDeviceId.length > 0) {
            Collection hashSet = new HashSet();
            Collections.addAll(hashSet, facebookTestDeviceId);
            AdSettings.addTestDevices(hashSet);
        }
        if (facebookChildDirectedFlag != null && facebookChildDirectedFlag.trim().length() > 0) {
            if (facebookChildDirectedFlag.equalsIgnoreCase("yes")) {
                AdSettings.setIsChildDirected(true);
            } else if (facebookChildDirectedFlag.equalsIgnoreCase("no")) {
                AdSettings.setIsChildDirected(false);
            }
        }
        if (pubId != null && pubId.trim().length() > 0) {
            this.interstitialAd = new InterstitialAd(context, pubId);
            this.internalFacebookInterstitialListener = new InternalFacebookInterstitialListener(adMarvelInterstitialAdapterListener, adMarvelAd, this.interstitialAd);
            this.interstitialAd.setAdListener(this.internalFacebookInterstitialListener);
            this.interstitialAd.loadAd();
        } else if (adMarvelInterstitialAdapterListener != null) {
            adMarvelInterstitialAdapterListener.onFailedToReceiveInterstitialAd(SDKAdNetwork.FACEBOOK, adMarvelAd.getPubId(), 205, AdMarvelUtils.getErrorReason(205), adMarvelAd);
            Logging.log("Facebook Adapter : onFailedToReceiveInterstitialAd");
        }
    }

    public Object requestNativeAd(AdMarvelAdapterListener adMarvelAdapterListener, Object obj) {
        if (obj instanceof AdMarvelNativeAd) {
            this.adMarvelNativeAd = (AdMarvelNativeAd) obj;
        }
        Logging.log("Facebook Ads Adapter: requestNativeAd");
        if (this.adMarvelNativeAd != null) {
            this.internalFacebookNativeListener = new InternalFacebookNativeListener(adMarvelAdapterListener, this.adMarvelNativeAd);
            String pubId = this.adMarvelNativeAd.getPubId();
            String[] facebookTestDeviceId = this.adMarvelNativeAd.getFacebookTestDeviceId();
            String facebookChildDirectedFlag = this.adMarvelNativeAd.getFacebookChildDirectedFlag();
            if (facebookTestDeviceId != null && facebookTestDeviceId.length > 0) {
                Collection hashSet = new HashSet();
                Collections.addAll(hashSet, facebookTestDeviceId);
                AdSettings.addTestDevices(hashSet);
            }
            if (facebookChildDirectedFlag != null && facebookChildDirectedFlag.trim().length() > 0) {
                if (facebookChildDirectedFlag.equalsIgnoreCase("yes")) {
                    AdSettings.setIsChildDirected(true);
                } else if (facebookChildDirectedFlag.equalsIgnoreCase("no")) {
                    AdSettings.setIsChildDirected(false);
                }
            }
            fbNativeAd = new NativeAd(this.adMarvelNativeAd.getmContext(), pubId);
            fbNativeAd.setAdListener(this.internalFacebookNativeListener);
            fbNativeAd.loadAd();
        }
        return fbNativeAd;
    }

    public View requestNewAd(AdMarvelAdapterListener adMarvelAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        Logging.log("Facebook Ads Adapter: requestNewAd");
        if (adMarvelAd == null) {
            return null;
        }
        this.internalFacebookListener = new InternalFacebookListener(adMarvelAdapterListener);
        String pubId = adMarvelAd.getPubId();
        String[] facebookTestDeviceId = adMarvelAd.getFacebookTestDeviceId();
        String facebookChildDirectedFlag = adMarvelAd.getFacebookChildDirectedFlag();
        if (facebookTestDeviceId != null && facebookTestDeviceId.length > 0) {
            Collection hashSet = new HashSet();
            Collections.addAll(hashSet, facebookTestDeviceId);
            AdSettings.addTestDevices(hashSet);
        }
        if (facebookChildDirectedFlag != null && facebookChildDirectedFlag.trim().length() > 0) {
            if (facebookChildDirectedFlag.equalsIgnoreCase("yes")) {
                AdSettings.setIsChildDirected(true);
            } else if (facebookChildDirectedFlag.equalsIgnoreCase("no")) {
                AdSettings.setIsChildDirected(false);
            }
        }
        if (pubId != null && pubId.trim().length() > 0) {
            this.adView = new AdView(context, pubId, AdSize.BANNER_320_50);
            this.adView.setAdListener(this.internalFacebookListener);
            this.adView.loadAd();
            return this.adView;
        } else if (adMarvelAdapterListener == null) {
            return null;
        } else {
            adMarvelAdapterListener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            return null;
        }
    }

    public void resume(Activity activity, Map map) {
    }

    public void uninitialize(Activity activity, Map map) {
    }

    public void unregisterView() {
        if (fbNativeAd != null) {
            fbNativeAd.unregisterView();
        }
    }
}