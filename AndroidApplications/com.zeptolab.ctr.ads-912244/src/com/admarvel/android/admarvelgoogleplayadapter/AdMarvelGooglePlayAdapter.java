package com.admarvel.android.admarvelgoogleplayadapter;

import android.app.Activity;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelAdapter;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelXMLElement;
import com.admarvel.android.ads.AdMarvelXMLReader;
import com.admarvel.android.util.Logging;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.sql.Date;
import java.util.Map;

public class AdMarvelGooglePlayAdapter extends AdMarvelAdapter {
    private WeakReference googlePlayViewReference;
    private InternalGooglePlayInterstitialListener internalGooglePlayInterstitialListener;
    private InternalGooglePlayListener internalGooglePlayListener;
    private InterstitialAd interstitialAd;
    private Location userLocation;

    public AdMarvelGooglePlayAdapter() {
        this.googlePlayViewReference = null;
        this.userLocation = null;
    }

    private String getAdNetworkSDKDate() {
        return "2013-10-31";
    }

    private String getAdNetworkSDKVersion() {
        return "4.1";
    }

    protected void cleanupView(View view) {
        if (this.internalGooglePlayListener != null) {
            Logging.log("GooglePlay Ads Adapter: cleanupView");
            this.internalGooglePlayListener.destroyListener();
        }
        if (!(this.googlePlayViewReference == null || this.googlePlayViewReference.get() == null)) {
            ((AdView) this.googlePlayViewReference.get()).destroy();
            this.googlePlayViewReference.clear();
        }
        this.internalGooglePlayListener = null;
        this.internalGooglePlayInterstitialListener = null;
        this.interstitialAd = null;
    }

    protected void displayInterstitial(Activity activity, String str) {
        Logging.log("GooglePlay Ads Adapter: displayInterstitial");
        try {
            if (this.interstitialAd != null && this.interstitialAd.isLoaded()) {
                this.interstitialAd.show();
            }
            this.interstitialAd = null;
        } catch (Exception e) {
            Logging.log(Log.getStackTraceString(e));
        }
    }

    protected void forceCloseFullScreenAd(Activity activity) {
    }

    public String getAdapterVersion() {
        return g.a;
    }

    public String getAdnetworkSDKVersionInfo() {
        return "admarvel_version: " + g.a + "; googleplay_sdk_version: " + getAdNetworkSDKVersion() + "; date: " + getAdNetworkSDKDate();
    }

    public void handleClick() {
    }

    public void handleImpression() {
    }

    public void initialize(Activity activity, Map map) {
    }

    protected AdMarvelAd loadAd(AdMarvelAd adMarvelAd, AdMarvelXMLReader adMarvelXMLReader) {
        Logging.log("GooglePlay Ads Adapter: loadAd");
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        String str = (String) parsedXMLData.getAttributes().get("pubid");
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK publisher id");
        } else {
            adMarvelAd.setPubId(str);
        }
        str = (String) parsedXMLData.getAttributes().get("testdeviceids");
        if (str != null && str.length() > 0) {
            String[] split = str.split(",");
            if (split != null && split.length > 0) {
                adMarvelAd.setAdmobTestDeviceId(split);
            }
        }
        str = (String) parsedXMLData.getAttributes().get("creativetype");
        if (str != null && str.length() > 0) {
            adMarvelAd.setCreativeType(str);
        }
        str = (String) parsedXMLData.getAttributes().get("admobextras");
        if (str != null && str.length() > 0) {
            adMarvelAd.setAdMobExtras(str);
        }
        str = (String) parsedXMLData.getAttributes().get("location");
        if (str != null && str.length() > 0) {
            adMarvelAd.setGooglePlayLocation(str);
        }
        return adMarvelAd;
    }

    public Object loadNativeAd(Object obj, AdMarvelXMLReader adMarvelXMLReader) {
        return null;
    }

    public void pause(Activity activity, Map map) {
        if (this.googlePlayViewReference != null && this.googlePlayViewReference.get() != null) {
            Logging.log("GooglePlay Ads Adapter: pause");
            ((AdView) this.googlePlayViewReference.get()).pause();
        }
    }

    public void registerViewForInteraction(View view) {
    }

    protected void requestIntersitialNewAd(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        String[] split;
        int length;
        int i3;
        Logging.log("GooglePlay Ads Adapter: requestIntersitialNewAd");
        this.internalGooglePlayInterstitialListener = new InternalGooglePlayInterstitialListener(adMarvelInterstitialAdapterListener, adMarvelAd);
        String str = null;
        String str2 = null;
        String str3 = null;
        if (map != null) {
            try {
                str = (String) map.get("GENDER");
            } catch (Exception e) {
                Logging.log("Exception in Seting Target option" + e.getMessage());
            }
            try {
                str2 = (String) map.get("KEYWORDS");
            } catch (Exception e2) {
                Logging.log("Exception in Seting Target option" + e2.getMessage());
            }
            try {
                str3 = (String) map.get("DOB");
            } catch (Exception e3) {
                Logging.log("Exception in Seting Target option" + e3.getMessage());
            }
            if (map.get("LOCATION_OBJECT") != null) {
                try {
                    this.userLocation = (Location) map.get("LOCATION_OBJECT");
                } catch (Exception e4) {
                    Logging.log("Exception in Seting userLocation Target option" + e4.getMessage());
                }
            }
        }
        if (this.userLocation == null && adMarvelAd.getGooglePlayLocation() != null) {
            try {
                String[] split2 = adMarvelAd.getGooglePlayLocation().split(",");
                if (split2.length == 2) {
                    this.userLocation = new Location(((LocationManager) context.getSystemService("location")).getBestProvider(new Criteria(), true));
                    this.userLocation.setLatitude(Double.valueOf(split2[0]).doubleValue());
                    this.userLocation.setLongitude(Double.valueOf(split2[1]).doubleValue());
                }
            } catch (Exception e5) {
                Logging.log("Exception in Seting userLocation Target option" + e5.getMessage());
            }
        }
        Builder builder = new Builder();
        if (str != null && str.length() > 0) {
            if (str.toLowerCase().startsWith("m")) {
                builder.setGender(0);
            } else if (str.toLowerCase().startsWith("f")) {
                builder.setGender(1);
            }
        }
        if (str3 != null && str3.length() > 0) {
            try {
                builder.setBirthday(Date.valueOf(str3));
            } catch (Exception e6) {
                Logging.log(Log.getStackTraceString(e6));
            }
        }
        if (str2 != null && str2.length() > 0) {
            split = str2.split(" ");
            length = split.length;
            i3 = 0;
            while (i3 < length) {
                builder.addTestDevice(split[i3]);
                i3++;
            }
        }
        if (adMarvelAd.getAdmobTestDeviceId() != null && adMarvelAd.getAdmobTestDeviceId().length > 0) {
            split = adMarvelAd.getAdmobTestDeviceId();
            length = split.length;
            i3 = 0;
            while (i3 < length) {
                builder.addTestDevice(split[i3]);
                i3++;
            }
        }
        if (this.userLocation != null) {
            builder.setLocation(this.userLocation);
        }
        if (context instanceof Activity) {
            this.interstitialAd = new InterstitialAd((Activity) context);
            this.interstitialAd.setAdUnitId(adMarvelAd.getPubId());
            this.interstitialAd.setAdListener(this.internalGooglePlayInterstitialListener);
            this.interstitialAd.loadAd(builder.build());
        }
    }

    public Object requestNativeAd(AdMarvelAdapterListener adMarvelAdapterListener, Object obj) {
        return null;
    }

    public View requestNewAd(AdMarvelAdapterListener adMarvelAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        Logging.log("GooglePlay Ads Adapter: requestNewAd");
        if (adMarvelAd == null) {
            return null;
        }
        String[] split;
        int length;
        int i3;
        this.internalGooglePlayListener = new InternalGooglePlayListener(adMarvelAdapterListener, adMarvelAd);
        String str = null;
        String str2 = null;
        String str3 = null;
        boolean z = 0;
        if (map != null) {
            try {
                str = (String) map.get("GENDER");
            } catch (Exception e) {
                Logging.log("Exception in setting gender target param " + e.getMessage());
            }
            try {
                str2 = (String) map.get("KEYWORDS");
            } catch (Exception e2) {
                Logging.log("Exception in setting keywords target param " + e2.getMessage());
            }
            try {
                str3 = (String) map.get("DOB");
            } catch (Exception e3) {
                Logging.log("Exception in setting dob target param " + e3.getMessage());
            }
            try {
                String str4 = (String) map.get("ADMOBEXTRAS");
            } catch (Exception e4) {
                Logging.log("Exception in setting admobextrasParams target param " + e4.getMessage());
            }
            if (map.get("LOCATION_OBJECT") != null) {
                try {
                    this.userLocation = (Location) map.get("LOCATION_OBJECT");
                } catch (Exception e5) {
                    Logging.log("Exception in Seting userLocation Target option" + e5.getMessage());
                }
            }
        }
        if (this.userLocation == null && adMarvelAd.getGooglePlayLocation() != null) {
            try {
                String[] split2 = adMarvelAd.getGooglePlayLocation().split(",");
                if (split2.length == 2) {
                    this.userLocation = new Location(((LocationManager) context.getSystemService("location")).getBestProvider(new Criteria(), true));
                    this.userLocation.setLatitude(Double.valueOf(split2[0]).doubleValue());
                    this.userLocation.setLongitude(Double.valueOf(split2[1]).doubleValue());
                }
            } catch (Exception e6) {
                Logging.log("Exception in Seting userLocation Target option" + e6.getMessage());
            }
        }
        Builder builder = new Builder();
        if (str != null && str.length() > 0) {
            if (str.toLowerCase().startsWith("m")) {
                builder.setGender(0);
            } else if (str.toLowerCase().startsWith("f")) {
                builder.setGender(1);
            }
        }
        if (str3 != null && str3.length() > 0) {
            try {
                builder.setBirthday(Date.valueOf(str3));
            } catch (Exception e7) {
                Logging.log(Log.getStackTraceString(e7));
            }
        }
        if (str2 != null && str2.length() > 0) {
            split = str2.split(" ");
            length = split.length;
            i3 = 0;
            while (i3 < length) {
                builder.addTestDevice(split[i3]);
                i3++;
            }
        }
        if (adMarvelAd.getAdmobTestDeviceId() != null) {
            split = adMarvelAd.getAdmobTestDeviceId();
            length = split.length;
            i3 = 0;
            while (i3 < length) {
                builder.addTestDevice(split[i3]);
                i3++;
            }
        }
        if (this.userLocation != null) {
            builder.setLocation(this.userLocation);
        }
        AdSize adSize = AdSize.BANNER;
        if (adMarvelAd.getCreativeType() != null) {
            if (adMarvelAd.getCreativeType().equals("IAB_BANNER")) {
                adSize = AdSize.BANNER;
            } else if (adMarvelAd.getCreativeType().equals("IAB_LEADERBOARD")) {
                adSize = AdSize.LEADERBOARD;
            } else if (adMarvelAd.getCreativeType().equals("IAB_MRECT")) {
                adSize = AdSize.MEDIUM_RECTANGLE;
            } else if (adMarvelAd.getCreativeType().equals("SMART_BANNER")) {
                adSize = AdSize.SMART_BANNER;
            }
        }
        if (adMarvelAd.getAdMobExtras() != null && adMarvelAd.getAdMobExtras().length() > 0) {
            str4 = adMarvelAd.getAdMobExtras();
        }
        if (str4 != null && str4.length() > 0) {
            String[] split3 = str4.split(",");
            if (split3 != null && split3.length > 0) {
                Bundle bundle = new Bundle();
                int i4 = 0;
                while (i4 < split3.length) {
                    split = split3[i4].split(":");
                    if (split != null && split.length == 2 && split[0].length() > 0 && split[1].length() > 0) {
                        try {
                            bundle.putString(URLDecoder.decode(split[0], HTMLEncoder.ENCODE_NAME_DEFAULT), URLDecoder.decode(split[1], HTMLEncoder.ENCODE_NAME_DEFAULT));
                        } catch (UnsupportedEncodingException e8) {
                            e8.printStackTrace();
                        }
                    }
                    i4++;
                }
                builder.addNetworkExtras(new AdMobExtras(bundle));
            }
        }
        if (context == null || !context instanceof Activity) {
            if (adMarvelAdapterListener != null) {
                adMarvelAdapterListener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            }
            return null;
        } else {
            View adView = new AdView((Activity) context);
            adView.setAdUnitId(adMarvelAd.getPubId());
            adView.setAdSize(adSize);
            adView.setLayoutParams(new LayoutParams(-1, -2));
            adView.setBackgroundColor(i);
            adView.setAdListener(this.internalGooglePlayListener);
            adView.loadAd(builder.build());
            return adView;
        }
    }

    public void resume(Activity activity, Map map) {
        if (this.googlePlayViewReference != null && this.googlePlayViewReference.get() != null) {
            Logging.log("GooglePlay Ads Adapter: resume");
            ((AdView) this.googlePlayViewReference.get()).resume();
        }
    }

    public void uninitialize(Activity activity, Map map) {
    }

    public void unregisterView() {
    }
}