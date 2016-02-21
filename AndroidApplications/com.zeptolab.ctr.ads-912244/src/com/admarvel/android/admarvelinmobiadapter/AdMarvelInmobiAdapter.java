package com.admarvel.android.admarvelinmobiadapter;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
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
import com.google.ads.AdSize;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.InMobi.LOG_LEVEL;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.cache.ProductCacheConfig;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitial.State;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMRequest;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class AdMarvelInmobiAdapter extends AdMarvelAdapter {
    private WeakReference activityReference;
    private InternalInmobiInterstitialListener internalInmobiInterstitialListener;
    private InternalInmobiListener internalInmobiListener;
    private IMInterstitial interstitialAd;
    private boolean isInMobiAdInitalized;
    private String keywords;
    private String refParam;
    private String reqParam;
    private String slotId;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Activity a;
        final /* synthetic */ String b;

        AnonymousClass_1(Activity activity, String str) {
            this.a = activity;
            this.b = str;
        }

        public void run() {
            InMobi.initialize(this.a, this.b);
            AdMarvelInmobiAdapter.this.isInMobiAdInitalized = true;
        }
    }

    public AdMarvelInmobiAdapter() {
        this.keywords = null;
        this.slotId = null;
        this.refParam = null;
        this.reqParam = null;
        this.isInMobiAdInitalized = false;
    }

    private String getAdNetworkSDKDate() {
        return "2014-06-17";
    }

    private String getAdNetworkSDKVersion() {
        return InMobi.getVersion();
    }

    private void setTargetingForInmobi(Map map) {
        try {
            String str = (String) map.get("GENDER");
            if (str != null && str.length() > 0) {
                if (str.equalsIgnoreCase(MMRequest.GENDER_MALE) || str.equalsIgnoreCase("m")) {
                    InMobi.setGender(GenderType.MALE);
                } else if (str.equalsIgnoreCase(MMRequest.GENDER_FEMALE) || str.equalsIgnoreCase("f")) {
                    InMobi.setGender(GenderType.FEMALE);
                } else {
                    InMobi.setGender(GenderType.UNKNOWN);
                }
            }
        } catch (Exception e) {
            Logging.log("Exeption in InMobi Adapter setting GENDER Targetting option " + e.getMessage());
        }
        try {
            str = (String) map.get("EDUCATION");
            if (str != null && str.length() > 0) {
                if (str.equals("0")) {
                    InMobi.setEducation(EducationType.HIGHSCHOOLORLESS);
                } else if (str.equals("1")) {
                    InMobi.setEducation(EducationType.COLLEGEORGRADUATE);
                } else if (str.equals("2")) {
                    InMobi.setEducation(EducationType.POSTGRADUATEORABOVE);
                } else {
                    InMobi.setEducation(EducationType.UNKNOWN);
                }
            }
        } catch (Exception e2) {
            Logging.log("Exeption in InMobi Adapter setting EDUCATION Targetting option " + e2.getMessage());
        }
        try {
            str = (String) map.get("DOB");
            if (str != null && str.length() > 0) {
                try {
                    Date valueOf = java.sql.Date.valueOf(str);
                    Calendar instance = Calendar.getInstance();
                    instance.setTime(valueOf);
                    InMobi.setDateOfBirth(instance);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            Logging.log("Exeption in InMobi Adapter setting DOB Targetting option " + e4.getMessage());
        }
        try {
            str = (String) map.get("INCOME");
            if (str != null && str.length() > 0 && Integer.parseInt(str) > 0) {
                InMobi.setIncome(Integer.parseInt(str));
            }
        } catch (Exception e5) {
            Logging.log("Exeption in InMobi Adapter setting INCOME Targetting option " + e5.getMessage());
        }
        try {
            str = (String) map.get("AGE");
            if (str != null && str.length() > 0 && Integer.parseInt(str) > 0) {
                InMobi.setIncome(Integer.parseInt(str));
            }
        } catch (Exception e6) {
            Logging.log("Exeption in InMobi Adapter setting AGE Targetting option " + e6.getMessage());
        }
        try {
            str = (String) map.get("POSTAL_CODE");
            if (str != null && str.length() > 0) {
                InMobi.setPostalCode(str);
            }
        } catch (Exception e7) {
            Logging.log("Exeption in InMobi Adapter setting POSTAL_CODE Targetting option " + e7.getMessage());
        }
        try {
            str = (String) map.get("INTERESTS");
            if (str != null && str.length() > 0) {
                InMobi.setInterests(str);
            }
        } catch (Exception e8) {
            Logging.log("Exeption in InMobi Adapter setting INTERESTS Targetting option " + e8.getMessage());
        }
        try {
            str = (String) map.get("INMOBI_IDTYPE_LOGIN");
            if (str != null && str.length() > 0) {
                InMobi.addIDType(IMIDType.ID_LOGIN, str);
            }
        } catch (Exception e9) {
            Logging.log("Exeption in InMobi Adapter setting INMOBI_IDTYPE_LOGIN Targetting option " + e9.getMessage());
        }
        try {
            str = (String) map.get("INMOBI_IDTYPE_SESSION");
            if (str != null && str.length() > 0) {
                InMobi.addIDType(IMIDType.ID_SESSION, str);
            }
        } catch (Exception e10) {
            Logging.log("Exeption in InMobi Adapter setting INMOBI_IDTYPE_SESSION Targetting option " + e10.getMessage());
        }
        try {
            str = (String) map.get("SEXUAL_ORIENTATION");
            if (str != null && str.length() > 0) {
                if (str.equalsIgnoreCase("straight")) {
                    InMobi.setSexualOrientation(SexualOrientation.STRAIGHT);
                } else if (str.equalsIgnoreCase("bisexual")) {
                    InMobi.setSexualOrientation(SexualOrientation.BISEXUAL);
                } else if (str.equalsIgnoreCase("gay")) {
                    InMobi.setSexualOrientation(SexualOrientation.GAY);
                } else {
                    InMobi.setSexualOrientation(SexualOrientation.UNKNOWN);
                }
            }
        } catch (Exception e11) {
            Logging.log("Exeption in InMobi Adapter setting SEXUAL_ORIENTATION Targetting option " + e11.getMessage());
        }
        try {
            str = (String) map.get("MARITAL");
            if (str != null && str.length() > 0) {
                if (str.equalsIgnoreCase(MMRequest.MARITAL_SINGLE)) {
                    InMobi.setMaritalStatus(MaritalStatus.SINGLE);
                } else if (str.equalsIgnoreCase(MMRequest.MARITAL_DIVORCED)) {
                    InMobi.setMaritalStatus(MaritalStatus.DIVORCED);
                } else if (str.equalsIgnoreCase(MMRequest.MARITAL_ENGAGED)) {
                    InMobi.setMaritalStatus(MaritalStatus.ENGAGED);
                } else if (str.equalsIgnoreCase(MMRequest.MARITAL_RELATIONSHIP)) {
                    InMobi.setMaritalStatus(MaritalStatus.RELATIONSHIP);
                }
                String str2 = (String) map.get("HAS_CHILDREN");
                if (str != null && str.length() > 0) {
                    if (str2.equalsIgnoreCase("true")) {
                        InMobi.setHasChildren(HasChildren.TRUE);
                    } else if (str.equalsIgnoreCase("false")) {
                        InMobi.setHasChildren(HasChildren.FALSE);
                    } else {
                        InMobi.setHasChildren(HasChildren.UNKNOWN);
                    }
                }
            }
        } catch (Exception e12) {
            Logging.log("Exeption in InMobi Adapter setting  Targetting option " + e12.getMessage());
        }
        try {
            str = (String) map.get("LANGUAGE");
            if (str != null && str.length() > 0) {
                InMobi.setLanguage(str);
            }
        } catch (Exception e13) {
            Logging.log("Exeption in InMobi Adapter setting LANGUAGE  Targetting option " + e13.getMessage());
        }
    }

    protected void cleanupView(View view) {
    }

    protected void displayInterstitial(Activity activity, String str) {
        if (this.interstitialAd == null || this.interstitialAd.getState() != State.READY) {
            this.internalInmobiInterstitialListener.onInterstitialFailed(null, null);
        } else {
            this.interstitialAd.show();
        }
    }

    protected void forceCloseFullScreenAd(Activity activity) {
    }

    public String getAdapterVersion() {
        return g.a;
    }

    public String getAdnetworkSDKVersionInfo() {
        return "admarvel_version: " + g.a + "; inmobi_sdk_version: " + getAdNetworkSDKVersion() + "; date: " + getAdNetworkSDKDate();
    }

    public void handleClick() {
    }

    public void handleImpression() {
    }

    public void initialize(Activity activity, Map map) {
        this.activityReference = new WeakReference(activity);
        if (map != null) {
            try {
                if (map.size() > 0) {
                    Iterator it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        Entry entry = (Entry) it.next();
                        if (((SDKAdNetwork) entry.getKey()).equals(SDKAdNetwork.INMOBI)) {
                            String str = (String) entry.getValue();
                            if (str != null && str.length() > 0) {
                                InMobi.initialize(activity, str);
                                this.isInMobiAdInitalized = true;
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
        Logging.log("Inmobi SDK Adapter - loadAd");
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        String str = (String) parsedXMLData.getAttributes().get(AdDatabaseHelper.COLUMN_APPID);
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK publisher id");
        } else {
            adMarvelAd.setAppId(str);
            if (this.activityReference != null) {
                Activity activity = (Activity) this.activityReference.get();
                if (!(activity == null || this.isInMobiAdInitalized)) {
                    activity.runOnUiThread(new AnonymousClass_1(activity, str));
                }
            } else {
                Logging.log("InMobi : Load Ad - Activity context not found ... is AdMarvel initalized called ???");
            }
        }
        str = (String) parsedXMLData.getAttributes().get("adsize");
        if (str != null && str.length() > 0) {
            adMarvelAd.setAdFormat(str);
        }
        this.keywords = (String) parsedXMLData.getAttributes().get(MMRequest.KEY_KEYWORDS);
        this.slotId = (String) parsedXMLData.getAttributes().get("slotid");
        this.refParam = (String) parsedXMLData.getAttributes().get("refparam");
        this.reqParam = (String) parsedXMLData.getAttributes().get("reqparam");
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
        Logging.log("InMobi SDK Adapter: requestIntersitialNewAd");
        if (AdMarvelUtils.isLoggingEnabled() && this.isInMobiAdInitalized) {
            InMobi.setLogLevel(LOG_LEVEL.DEBUG);
        }
        if (adMarvelAd != null) {
            this.internalInmobiInterstitialListener = new InternalInmobiInterstitialListener(adMarvelInterstitialAdapterListener, adMarvelAd);
            if (map != null) {
                setTargetingForInmobi(map);
            }
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                String appId = adMarvelAd.getAppId();
                if (appId != null && appId.length() > 0) {
                    if (!this.isInMobiAdInitalized) {
                        InMobi.initialize(activity, appId);
                        this.isInMobiAdInitalized = true;
                    }
                    this.interstitialAd = new IMInterstitial(activity, appId);
                    this.interstitialAd.setIMInterstitialListener(this.internalInmobiInterstitialListener);
                    if (this.keywords != null && this.keywords.trim().length() > 0) {
                        this.interstitialAd.setKeywords(this.keywords);
                    }
                    if (this.slotId != null && this.slotId.trim().length() > 0) {
                        this.interstitialAd.setSlotId(Long.parseLong(this.slotId));
                    }
                    if (this.reqParam != null && this.reqParam.length() > 0 && this.reqParam.contains(":")) {
                        Map hashMap = new HashMap();
                        String[] split = this.reqParam.split("|");
                        int i3 = 0;
                        while (i3 < split.length) {
                            String[] split2 = split[i3].split(":");
                            if (split2.length > 1 && split2[0].length() > 0 && split2[1].length() > 0) {
                                try {
                                    hashMap.put(URLDecoder.decode(split2[0], HTMLEncoder.ENCODE_NAME_DEFAULT), URLDecoder.decode(split2[1], HTMLEncoder.ENCODE_NAME_DEFAULT));
                                } catch (UnsupportedEncodingException e) {
                                    e.printStackTrace();
                                }
                            }
                            i3++;
                        }
                        if (hashMap.size() > 0) {
                            this.interstitialAd.setRequestParams(hashMap);
                        }
                    }
                    this.interstitialAd.loadInterstitial();
                }
            }
        }
    }

    public Object requestNativeAd(AdMarvelAdapterListener adMarvelAdapterListener, Object obj) {
        return null;
    }

    protected View requestNewAd(AdMarvelAdapterListener adMarvelAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        int i3 = 320;
        int i4 = ApiEventType.API_MRAID_CLOSE_VIDEO;
        int i5 = MMException.REQUEST_BAD_RESPONSE;
        Logging.log("InMobi SDK Adapter: requestNewAd");
        if (AdMarvelUtils.isLoggingEnabled() && this.isInMobiAdInitalized) {
            InMobi.setLogLevel(LOG_LEVEL.DEBUG);
        }
        if (adMarvelAd != null) {
            this.internalInmobiListener = new InternalInmobiListener(adMarvelAdapterListener);
            if (map != null) {
                setTargetingForInmobi(map);
            }
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                String adFormat = adMarvelAd.getAdFormat();
                if (!adFormat.equalsIgnoreCase("320x50")) {
                    if (adFormat.equalsIgnoreCase("300x250")) {
                        i5 = R.styleable.MapAttrs_uiZoomControls;
                        i3 = AdException.INVALID_REQUEST;
                        i4 = 250;
                    } else if (adFormat.equalsIgnoreCase("728x90")) {
                        i5 = R.styleable.MapAttrs_uiZoomGestures;
                        i3 = 728;
                        i4 = AdSize.LARGE_AD_HEIGHT;
                    } else if (adFormat.equalsIgnoreCase("468x60")) {
                        i5 = R.styleable.MapAttrs_useViewLifecycle;
                        i3 = 468;
                        i4 = ProductCacheConfig.DEFAULT_INTERVAL;
                    } else if (adFormat.equalsIgnoreCase("120x600")) {
                        i5 = R.styleable.MapAttrs_zOrderOnTop;
                        i3 = 120;
                        i4 = 600;
                    }
                }
                String appId = adMarvelAd.getAppId();
                if (!this.isInMobiAdInitalized) {
                    Logging.log("initialize ");
                    InMobi.initialize(activity, appId);
                    this.isInMobiAdInitalized = true;
                }
                if (appId != null && appId.length() > 0) {
                    View iMBanner = new IMBanner(activity, appId, i5);
                    float f = activity.getResources().getDisplayMetrics().density;
                    iMBanner.setLayoutParams(new LayoutParams((int) (((float) i3) * f), (int) (((float) i4) * f), 81));
                    iMBanner.setRefreshInterval(-1);
                    iMBanner.setIMBannerListener(this.internalInmobiListener);
                    if (this.keywords != null && this.keywords.trim().length() > 0) {
                        iMBanner.setKeywords(this.keywords);
                    }
                    if (this.slotId != null && this.slotId.trim().length() > 0) {
                        iMBanner.setSlotId(Long.parseLong(this.slotId));
                    }
                    if (this.refParam != null && this.refParam.length() > 0 && this.refParam.contains(":")) {
                        String[] split = this.refParam.split(":");
                        if (split.length > 1 && split[0].length() > 0 && split[1].length() > 0) {
                            try {
                                iMBanner.setRefTagParam(URLDecoder.decode(split[0], HTMLEncoder.ENCODE_NAME_DEFAULT), URLDecoder.decode(split[1], HTMLEncoder.ENCODE_NAME_DEFAULT));
                            } catch (UnsupportedEncodingException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    if (this.reqParam != null && this.reqParam.length() > 0 && this.reqParam.contains(":")) {
                        Map hashMap = new HashMap();
                        String[] split2 = this.reqParam.split("|");
                        i4 = 0;
                        while (i4 < split2.length) {
                            String[] split3 = split2[i4].split(":");
                            if (split3.length > 1 && split3[0].length() > 0 && split3[1].length() > 0) {
                                try {
                                    hashMap.put(URLDecoder.decode(split3[0], HTMLEncoder.ENCODE_NAME_DEFAULT), URLDecoder.decode(split3[1], HTMLEncoder.ENCODE_NAME_DEFAULT));
                                } catch (UnsupportedEncodingException e2) {
                                    e2.printStackTrace();
                                }
                            }
                            i4++;
                        }
                        if (hashMap.size() > 0) {
                            iMBanner.setRequestParams(hashMap);
                        }
                    }
                    iMBanner.loadBanner();
                    return iMBanner;
                }
            }
        }
        return null;
    }

    public void resume(Activity activity, Map map) {
    }

    public void uninitialize(Activity activity, Map map) {
    }

    public void unregisterView() {
    }
}