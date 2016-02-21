package com.admarvel.android.ads;

import android.location.Location;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.a.c.a;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventType;
import com.brightcove.player.util.ErrorUtil;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.androidsdk.impl.imai.db.ClickDatabaseManager;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class AdMarvelAd implements Serializable {
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private String I;
    private Boolean J;
    private String K;
    private int L;
    private String M;
    private int N;
    private boolean O;
    private String P;
    private String Q;
    private String R;
    private final boolean S;
    private final String T;
    private final String U;
    private boolean V;
    private String W;
    private String X;
    private String Y;
    private String Z;
    private final String a;
    private boolean aa;
    private int ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    private RhythmVideoAdType ag;
    private HeyzapAdType ah;
    private boolean ai;
    private boolean aj;
    private String ak;
    private String al;
    private String am;
    private String an;
    private String ao;
    private String ap;
    private boolean aq;
    private Integer ar;
    private String as;
    private final Map at;
    private final String au;
    private final String av;
    private final String aw;
    private final int ax;
    private final String ay;
    private String az;
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private int g;
    private int h;
    private String i;
    private String j;
    private AdType k;
    private String l;
    private List m;
    private int n;
    private String o;
    private String p;
    private SDKAdNetwork q;
    private String r;
    private String s;
    private String t;
    private boolean u;
    private String v;
    private String[] w;
    private String[] x;
    private String y;
    private String z;

    public enum AdType {
        TEXT,
        IMAGE,
        JAVASCRIPT,
        SDKCALL,
        ERROR,
        CUSTOM
    }

    public enum HeyzapAdType {
        VIDEO_AD,
        INTERSTITIAL_AD,
        INCENTIVIZED_AD
    }

    public enum RhythmVideoAdType {
        VIDEO_AD_ONLY,
        VIDEO_AD
    }

    public AdMarvelAd(String str, Map map, String str2, String str3, String str4, int i, String str5, boolean z, String str6) {
        this.a = AdMarvelUtils.PATH;
        this.g = -1;
        this.h = -1;
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.V = false;
        this.ag = null;
        this.ah = null;
        this.ar = Integer.valueOf(0);
        this.O = false;
        this.U = str;
        this.at = map;
        this.au = str2;
        this.av = str3;
        this.aw = str4;
        this.ax = i;
        this.ay = str5;
        this.S = z;
        this.T = str6;
        if (str4 != null && map.get("UNIQUE_ID") == null) {
            map.put("UNIQUE_ID", str4);
        }
    }

    public String getAdColonyAppVersion() {
        return this.B;
    }

    public String getAdFormat() {
        return this.D;
    }

    public int getAdHistoryCounter() {
        return this.ar.intValue();
    }

    public String getAdHistoryDumpString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Constants.APPNAME, this.T);
            jSONObject.put(Constants.PARTNERID, this.au);
            if (this.ak != null) {
                jSONObject.put(Constants.AD_REQUEST, new JSONObject(this.ak));
            }
            if (this.al != null) {
                jSONObject.put(EventType.RESPONSE, new JSONObject(this.al));
            }
            if (this.am != null) {
                jSONObject.put(Constants.HTML, new JSONObject(this.am));
            }
            this.an = jSONObject.toString(1);
        } catch (JSONException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return this.an;
    }

    public String getAdId() {
        return this.P;
    }

    public String getAdMobExtras() {
        return this.z;
    }

    public AdType getAdType() {
        return this.k;
    }

    public String getAdmobAdFormat() {
        return this.az;
    }

    public String getAdmobTestAction() {
        return this.az;
    }

    public String[] getAdmobTestDeviceId() {
        return this.w;
    }

    public String getAmazonAdRequestAdvancedOptions() {
        return this.Z;
    }

    public int getAmazonAdTimeOut() {
        return this.ab;
    }

    public String getAmazonAdvancedOptions() {
        return this.Y;
    }

    public String getAndroidId() {
        return this.aw;
    }

    public String getAppId() {
        return this.as;
    }

    public String getAppName() {
        return this.R;
    }

    public String getBannerid() {
        return this.K;
    }

    public String getChannelId() {
        return this.s;
    }

    public String getClickURL() {
        return this.j;
    }

    public String getCloseFunction() {
        return this.v;
    }

    public String getCompanyName() {
        return this.t;
    }

    public String getCountdowntext() {
        return this.ao;
    }

    public String getCreativeType() {
        return this.l;
    }

    public String getDeviceConnectivity() {
        return this.ay;
    }

    public String getDisableAdDuration() {
        return this.W;
    }

    public int getErrorCode() {
        return this.n;
    }

    public String getErrorReason() {
        return this.o;
    }

    public String getExcluded() {
        return this.M;
    }

    public String getExpandDirection() {
        return this.C;
    }

    public String getFacebookChildDirectedFlag() {
        return this.y;
    }

    public String[] getFacebookTestDeviceId() {
        return this.x;
    }

    public String getGooglePlayLocation() {
        return this.A;
    }

    public String getHeight() {
        return this.E;
    }

    public HeyzapAdType getHeyzapAdType() {
        return this.ah;
    }

    public int getId() {
        return this.b;
    }

    public String getImageAlt() {
        return this.i;
    }

    public int getImageHeight() {
        return this.h;
    }

    public String getImageURL() {
        return this.f;
    }

    public int getImageWidth() {
        return this.g;
    }

    public String getInterstitialAction() {
        return this.H;
    }

    public String getIpAddress() {
        return this.c;
    }

    public String getKeywordsContentUrl() {
        return this.I;
    }

    public int getMaxretries() {
        return this.N;
    }

    public String getOfflineBaseUrl() {
        return this.ac;
    }

    public String getOfflinekeyUrl() {
        return this.ad;
    }

    public int getOrientation() {
        return this.ax;
    }

    public String getPartnerId() {
        return this.au;
    }

    public List getPixels() {
        return this.m;
    }

    public String getPubId() {
        return this.r;
    }

    public Boolean getRetry() {
        return this.J;
    }

    public int getRetrynum() {
        return this.L;
    }

    public RhythmVideoAdType getRhythmVideoAdType() {
        return this.ag;
    }

    public String getRhythmVideoUrl() {
        return this.af;
    }

    public String getScene() {
        return this.ae;
    }

    public SDKAdNetwork getSdkAdNetwork() {
        return this.q;
    }

    public String getSdkNetwork() {
        return this.p;
    }

    public String getSiteId() {
        return this.av;
    }

    public String getSlotName() {
        return this.Q;
    }

    public String getSource() {
        return this.G;
    }

    public Map getTargetParams() {
        return this.at;
    }

    public String getText() {
        return this.e;
    }

    public String getVideoplacement() {
        return this.ap;
    }

    public String getWidth() {
        return this.F;
    }

    public String getXHTML() {
        return this.d;
    }

    public String getXhtml() {
        return this.d;
    }

    public String getXml() {
        return this.U;
    }

    public String getZoneId() {
        return this.X;
    }

    public boolean hasImage() {
        return this.f != null;
    }

    public boolean isAmazonEnableGeoLocation() {
        return this.aa;
    }

    public boolean isCachingEnabled() {
        return this.ai;
    }

    public boolean isDisableAdrequest() {
        return this.V;
    }

    public boolean isMustBeVisible() {
        return this.O;
    }

    public boolean isTest() {
        return this.u;
    }

    public boolean isTimercountdownEnabled() {
        return this.aq;
    }

    public boolean isTrackingIdSet() {
        return this.aj;
    }

    public AdMarvelXMLReader loadAd(File file) {
        if (this.U == null) {
            return null;
        }
        AdMarvelXMLReader adMarvelXMLReader = new AdMarvelXMLReader();
        adMarvelXMLReader.parseXMLString(this.U);
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        if (parsedXMLData == null) {
            return null;
        }
        String str;
        AdMarvelXMLElement adMarvelXMLElement;
        AdMarvelXMLElement adMarvelXMLElement2;
        if (parsedXMLData.getName().equals(AdDatabaseHelper.TABLE_AD)) {
            str = (String) parsedXMLData.getAttributes().get(AnalyticsEvent.EVENT_ID);
            if (str != null && str.length() > 0) {
                this.b = Integer.parseInt(str);
                this.K = str;
            }
            str = (String) parsedXMLData.getAttributes().get("ip");
            if (str != null && str.length() > 0) {
                this.c = str;
            }
            str = (String) parsedXMLData.getAttributes().get("dah");
            if (str != null && str.length() > 0 && str.equalsIgnoreCase("true")) {
                AdMarvelUtils.disableLogDump();
            }
            str = (String) parsedXMLData.getAttributes().get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
            if ("text".equals(str)) {
                this.k = AdType.TEXT;
            } else if (Constants.NATIVE_AD_IMAGE_ELEMENT.equals(str)) {
                this.k = AdType.IMAGE;
            } else if ("javascript".equals(str)) {
                this.k = AdType.JAVASCRIPT;
            } else if (ErrorUtil.ERROR.equals(str)) {
                this.k = AdType.ERROR;
            } else if ("sdkcall".equals(str)) {
                this.k = AdType.SDKCALL;
            } else if ("custom".equals(str)) {
                this.k = AdType.CUSTOM;
            }
            str = (String) parsedXMLData.getAttributes().get(Event.SOURCE);
            if (str != null && str.length() > 0) {
                this.G = str;
            }
        } else {
            this.k = AdType.ERROR;
        }
        if (parsedXMLData.getChildren().containsKey("pixels")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) parsedXMLData.getChildren().get("pixels")).get(0);
            if (adMarvelXMLElement.getChildren().containsKey("pixel")) {
                int size = ((ArrayList) adMarvelXMLElement.getChildren().get("pixel")).size();
                int i = 0;
                while (i < size) {
                    adMarvelXMLElement2 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get("pixel")).get(i);
                    if (adMarvelXMLElement2 != null) {
                        Object data = adMarvelXMLElement2.getData();
                        if (AdMarvelView.b || AdMarvelInterstitialAds.enableOfflineSDK) {
                            data = data.replaceAll("\\{siteid\\}", getSiteId()).replaceAll("\\{random\\}", String.valueOf(System.currentTimeMillis())).replaceAll("\\{uniqueid\\}", getAndroidId());
                        }
                        if (this.m == null) {
                            this.m = new ArrayList();
                        }
                        this.m.add(data);
                    }
                    i++;
                }
            }
        }
        if ((AdMarvelView.b || AdMarvelInterstitialAds.enableOfflineSDK) && parsedXMLData.getChildren().containsKey("file")) {
            String data2 = ((AdMarvelXMLElement) ((ArrayList) parsedXMLData.getChildren().get("file")).get(0)).getData();
            if (this.k.equals(AdType.JAVASCRIPT)) {
                try {
                    a a = com.admarvel.android.util.a.a.a(Class.forName("com.admarvel.android.offlinesdk.AdmarvelOfflineUtils").newInstance(), "readData");
                    a.a(String.class, this.ad);
                    a.a(String.class, data2);
                    this.d = (String) a.a();
                } catch (InstantiationException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                } catch (ClassNotFoundException e3) {
                    e3.printStackTrace();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (this.d != null) {
                    this.d = this.d.replaceAll("\\{siteid\\}", getSiteId());
                }
            }
            this.ad += "/" + data2;
        }
        if (this.k.equals(AdType.SDKCALL) && parsedXMLData.getChildren().containsKey("xhtml")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) parsedXMLData.getChildren().get("xhtml")).get(0);
            if (adMarvelXMLElement != null) {
                adMarvelXMLReader.parseXMLString(new r().a(adMarvelXMLElement.getData()));
                adMarvelXMLElement2 = adMarvelXMLReader.getParsedXMLData();
                str = (String) adMarvelXMLElement2.getAttributes().get("network");
                if ("googleplay".equals(str) || "admob".equals(str)) {
                    this.p = Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.GOOGLEPLAY;
                } else if ("rhythm".equals(str)) {
                    this.p = Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.RHYTHM;
                } else if ("greystripe".equals(str)) {
                    this.p = Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.GREYSTRIPE;
                } else if ("millennial".equals(str)) {
                    this.p = Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.MILLENNIAL;
                } else if ("amazon".equals(str)) {
                    this.p = Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.AMAZON;
                } else if ("adcolony".equals(str)) {
                    this.p = Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.ADCOLONY;
                } else if ("pulse3d".equals(str)) {
                    this.p = Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.PULSE3D;
                } else if ("facebook".equals(str)) {
                    this.p = Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.FACEBOOK;
                } else if ("inmobi".equals(str)) {
                    this.p = Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.INMOBI;
                } else if ("heyzap".equals(str)) {
                    this.p = Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME;
                    this.q = SDKAdNetwork.HEYZAP;
                } else if ("disable_ad_request".equals(str)) {
                    str = (String) adMarvelXMLElement2.getAttributes().get("durationinseconds");
                    if (str != null) {
                        this.V = true;
                        this.W = str;
                    }
                } else {
                    this.k = AdType.ERROR;
                    this.n = 307;
                    this.o = "Missing SDK ad network";
                }
                if ("YES".equals((String) adMarvelXMLElement2.getAttributes().get("retry"))) {
                    this.J = Boolean.valueOf(true);
                } else {
                    this.J = Boolean.valueOf(false);
                }
                str = (String) adMarvelXMLElement2.getAttributes().get("bannerid");
                if (str != null && str.length() > 0) {
                    this.K = str;
                }
                str = (String) adMarvelXMLElement2.getAttributes().get("retrynum");
                if (str != null && str.length() > 0) {
                    this.L = Integer.parseInt(str);
                }
                str = (String) adMarvelXMLElement2.getAttributes().get("excluded");
                if (str != null && str.length() > 0) {
                    this.M = str;
                }
                str = (String) adMarvelXMLElement2.getAttributes().get("maxretries");
                if (str == null || str.length() <= 0) {
                    this.N = 1;
                } else {
                    this.N = Integer.parseInt(str);
                }
                if (this.k.equals(AdType.JAVASCRIPT) && adMarvelXMLElement2.getChildren().containsKey("customdata")) {
                    adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("customdata")).get(0);
                    if (adMarvelXMLElement.getChildren().containsKey("close_func")) {
                        this.v = ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get("close_func")).get(0)).getData();
                    }
                }
                if (adMarvelXMLElement2.getChildren().containsKey(Event.ERROR_CODE)) {
                    adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Event.ERROR_CODE)).get(0);
                    if (adMarvelXMLElement != null) {
                        this.n = Integer.parseInt(adMarvelXMLElement.getData());
                    }
                }
                if (adMarvelXMLElement2.getChildren().containsKey("errorReason")) {
                    adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("errorReason")).get(0);
                    if (adMarvelXMLElement != null) {
                        this.o = adMarvelXMLElement.getData();
                    }
                }
                if (adMarvelXMLElement2.getChildren().containsKey("xhtml")) {
                    adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("xhtml")).get(0);
                    if (adMarvelXMLElement != null) {
                        this.d = adMarvelXMLElement.getData();
                    }
                }
                if (adMarvelXMLElement2.getChildren().containsKey(ClickDatabaseManager.COLUMN_CLICK_URL)) {
                    adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(ClickDatabaseManager.COLUMN_CLICK_URL)).get(0);
                    if (adMarvelXMLElement != null) {
                        this.j = adMarvelXMLElement.getData();
                        if ((AdMarvelView.b || AdMarvelInterstitialAds.enableOfflineSDK) && this.j != null) {
                            this.j = this.j.replaceAll("\\{siteid\\}", getSiteId());
                        }
                    }
                }
                if (adMarvelXMLElement2.getChildren().containsKey(Constants.NATIVE_AD_IMAGE_ELEMENT)) {
                    if (((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().containsKey(PlusShare.KEY_CALL_TO_ACTION_URL)) {
                        adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().get(PlusShare.KEY_CALL_TO_ACTION_URL)).get(0);
                        if (adMarvelXMLElement != null) {
                            this.f = adMarvelXMLElement.getData();
                        }
                    }
                    if (((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().containsKey("alt")) {
                        adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().get("alt")).get(0);
                        if (adMarvelXMLElement != null) {
                            this.i = adMarvelXMLElement.getData();
                        }
                    }
                    if (((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().containsKey(MMLayout.KEY_WIDTH)) {
                        adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().get(MMLayout.KEY_WIDTH)).get(0);
                        if (adMarvelXMLElement != null) {
                            this.g = Integer.parseInt(adMarvelXMLElement.getData());
                        }
                    }
                    if (((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().containsKey(MMLayout.KEY_HEIGHT)) {
                        adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().get(MMLayout.KEY_HEIGHT)).get(0);
                        if (adMarvelXMLElement != null) {
                            this.h = Integer.parseInt(adMarvelXMLElement.getData());
                        }
                    }
                }
                if (adMarvelXMLElement2.getChildren().containsKey("text")) {
                    adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("text")).get(0);
                    if (adMarvelXMLElement != null) {
                        this.e = adMarvelXMLElement.getData();
                    }
                }
                if (this.S && !this.k.equals(AdType.ERROR)) {
                    if (adMarvelXMLElement2.getChildren().containsKey(Constants.NATIVE_AD_IMAGE_ELEMENT)) {
                        this.k = AdType.ERROR;
                        this.n = 205;
                        this.o = "Cached Ad Unable to render: Only images are supported.  server-side configuration error";
                    } else {
                        File file2;
                        file2 = new File(file, AdMarvelUtils.PATH + this.f.replace("http://admarvel.s3.amazonaws.com", AdTrackerConstants.BLANK));
                        Logging.log("AdMarvelAd::loadAd: " + file2.getAbsolutePath());
                        if (file2.exists()) {
                            this.k = AdType.ERROR;
                            this.n = 205;
                            this.o = "Cached Ad Unable to render";
                        } else {
                            this.f = this.f.replace("http://admarvel.s3.amazonaws.com", "content://" + this.T + ".AdMarvelCachedImageLocalFileContentProvider");
                        }
                    }
                }
                return adMarvelXMLReader;
            }
        }
        adMarvelXMLElement2 = parsedXMLData;
        adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("customdata")).get(0);
        if (adMarvelXMLElement.getChildren().containsKey("close_func")) {
            this.v = ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get("close_func")).get(0)).getData();
        }
        if (adMarvelXMLElement2.getChildren().containsKey(Event.ERROR_CODE)) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Event.ERROR_CODE)).get(0);
            if (adMarvelXMLElement != null) {
                this.n = Integer.parseInt(adMarvelXMLElement.getData());
            }
        }
        if (adMarvelXMLElement2.getChildren().containsKey("errorReason")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("errorReason")).get(0);
            if (adMarvelXMLElement != null) {
                this.o = adMarvelXMLElement.getData();
            }
        }
        if (adMarvelXMLElement2.getChildren().containsKey("xhtml")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("xhtml")).get(0);
            if (adMarvelXMLElement != null) {
                this.d = adMarvelXMLElement.getData();
            }
        }
        if (adMarvelXMLElement2.getChildren().containsKey(ClickDatabaseManager.COLUMN_CLICK_URL)) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(ClickDatabaseManager.COLUMN_CLICK_URL)).get(0);
            if (adMarvelXMLElement != null) {
                this.j = adMarvelXMLElement.getData();
                this.j = this.j.replaceAll("\\{siteid\\}", getSiteId());
            }
        }
        if (adMarvelXMLElement2.getChildren().containsKey(Constants.NATIVE_AD_IMAGE_ELEMENT)) {
            if (((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().containsKey(PlusShare.KEY_CALL_TO_ACTION_URL)) {
                adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().get(PlusShare.KEY_CALL_TO_ACTION_URL)).get(0);
                if (adMarvelXMLElement != null) {
                    this.f = adMarvelXMLElement.getData();
                }
            }
            if (((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().containsKey("alt")) {
                adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().get("alt")).get(0);
                if (adMarvelXMLElement != null) {
                    this.i = adMarvelXMLElement.getData();
                }
            }
            if (((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().containsKey(MMLayout.KEY_WIDTH)) {
                adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().get(MMLayout.KEY_WIDTH)).get(0);
                if (adMarvelXMLElement != null) {
                    this.g = Integer.parseInt(adMarvelXMLElement.getData());
                }
            }
            if (((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().containsKey(MMLayout.KEY_HEIGHT)) {
                adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) ((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_IMAGE_ELEMENT)).get(0)).getChildren().get(MMLayout.KEY_HEIGHT)).get(0);
                if (adMarvelXMLElement != null) {
                    this.h = Integer.parseInt(adMarvelXMLElement.getData());
                }
            }
        }
        if (adMarvelXMLElement2.getChildren().containsKey("text")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("text")).get(0);
            if (adMarvelXMLElement != null) {
                this.e = adMarvelXMLElement.getData();
            }
        }
        if (adMarvelXMLElement2.getChildren().containsKey(Constants.NATIVE_AD_IMAGE_ELEMENT)) {
            this.k = AdType.ERROR;
            this.n = 205;
            this.o = "Cached Ad Unable to render: Only images are supported.  server-side configuration error";
        } else {
            file2 = new File(file, AdMarvelUtils.PATH + this.f.replace("http://admarvel.s3.amazonaws.com", AdTrackerConstants.BLANK));
            Logging.log("AdMarvelAd::loadAd: " + file2.getAbsolutePath());
            if (file2.exists()) {
                this.k = AdType.ERROR;
                this.n = 205;
                this.o = "Cached Ad Unable to render";
            } else {
                this.f = this.f.replace("http://admarvel.s3.amazonaws.com", "content://" + this.T + ".AdMarvelCachedImageLocalFileContentProvider");
            }
        }
        return adMarvelXMLReader;
    }

    public synchronized void removeNonStringEntriesTargetParam() {
        Map concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.putAll(this.at);
        try {
            Map concurrentHashMap2 = new ConcurrentHashMap();
            concurrentHashMap2.putAll(this.at);
            Iterator it = concurrentHashMap2.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (!entry.getValue() instanceof String) {
                    if (entry.getValue() instanceof Location && ((String) entry.getKey()).equals("LOCATION_OBJECT")) {
                        Location location = (Location) entry.getValue();
                        concurrentHashMap2.put("GEOLOCATION", String.format("%f,%f", new Object[]{Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude())}));
                        concurrentHashMap2.remove(entry.getKey());
                    } else {
                        concurrentHashMap2.remove(entry.getKey());
                    }
                }
            }
            this.at.clear();
            this.at.putAll(concurrentHashMap2);
        } catch (Exception e) {
            Exception exception = e;
            this.at.clear();
            this.at.putAll(concurrentHashMap);
            exception.printStackTrace();
        }
    }

    public void setAdColonyAppVersion(String str) {
        this.B = str;
    }

    public void setAdFormat(String str) {
        this.D = str;
    }

    public void setAdHistoryCounter(int i) {
        this.ar = Integer.valueOf(i);
    }

    public void setAdId(String str) {
        this.P = str;
    }

    public void setAdMobExtras(String str) {
        this.z = str;
    }

    public void setAdType(AdType adType) {
        this.k = adType;
    }

    public void setAdmobTestAction(String str) {
        this.az = str;
    }

    public void setAdmobTestDeviceId(String[] strArr) {
        this.w = strArr;
    }

    public void setAmazonAdRequestAdvancedOptions(String str) {
        this.Z = str;
    }

    public void setAmazonAdTimeOut(int i) {
        this.ab = i;
    }

    public void setAmazonAdvancedOptions(String str) {
        this.Y = str;
    }

    public void setAmazonEnableGeoLocation(boolean z) {
        this.aa = z;
    }

    public void setAppId(String str) {
        this.as = str;
    }

    public void setAppName(String str) {
        this.R = str;
    }

    public void setBannerid(String str) {
        this.K = str;
    }

    public void setCachingEnabled(boolean z) {
        this.ai = z;
    }

    public void setChannelId(String str) {
        this.s = str;
    }

    public void setClickURL(String str) {
        this.j = str;
    }

    public void setCloseFunction(String str) {
        this.v = str;
    }

    public void setCompanyName(String str) {
        this.t = str;
    }

    public void setCountdowntext(String str) {
        this.ao = str;
    }

    public void setCreativeType(String str) {
        this.l = str;
    }

    public void setErrorCode(int i) {
        this.n = i;
    }

    public void setErrorReason(String str) {
        this.o = str;
    }

    public void setExcluded(String str) {
        this.M = str;
    }

    public void setExpandDirection(String str) {
        this.C = str;
    }

    public void setFacebookChildDirectedFlag(String str) {
        this.y = str;
    }

    public void setFacebookTestDeviceId(String[] strArr) {
        this.x = strArr;
    }

    public void setGooglePlayLocation(String str) {
        this.A = str;
    }

    public void setHeight(String str) {
        this.E = str;
    }

    public void setHeyzapAdType(HeyzapAdType heyzapAdType) {
        this.ah = heyzapAdType;
    }

    public void setHtmlJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date time = Calendar.getInstance().getTime();
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            jSONObject.put(i.a, str);
            jSONObject.put(AdDatabaseHelper.COLUMN_TIMESTAMP, String.valueOf(valueOf));
            jSONObject.put(Constants.UTC, simpleDateFormat.format(time));
            jSONObject.put(Constants.LOCAL, simpleDateFormat2.format(time));
            this.am = jSONObject.toString(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setId(int i) {
        this.b = i;
    }

    public void setImageAlt(String str) {
        this.i = str;
    }

    public void setImageHeight(int i) {
        this.h = i;
    }

    public void setImageURL(String str) {
        this.f = str;
    }

    public void setImageWidth(int i) {
        this.g = i;
    }

    public void setInterstitialAction(String str) {
        this.H = str;
    }

    public void setIpAddress(String str) {
        this.c = str;
    }

    public void setKeywordsContentUrl(String str) {
        this.I = str;
    }

    public void setMustBeVisible(boolean z) {
        this.O = z;
    }

    public void setOfflineBaseUrl(String str) {
        this.ac = str;
    }

    public void setOfflinekeyUrl(String str) {
        this.ad = str;
    }

    public void setPixels(List list) {
        this.m = list;
    }

    public void setPubId(String str) {
        this.r = str;
    }

    public void setRequestJson(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                this.ak = jSONObject.toString(1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setResponseJson() {
        try {
            JSONObject jSONObject = new JSONObject();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date time = Calendar.getInstance().getTime();
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            jSONObject.put(i.a, this.U);
            jSONObject.put(AdDatabaseHelper.COLUMN_TIMESTAMP, String.valueOf(valueOf));
            jSONObject.put(Constants.UTC, simpleDateFormat.format(time));
            jSONObject.put(Constants.LOCAL, simpleDateFormat2.format(time));
            this.al = jSONObject.toString(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setRetry(Boolean bool) {
        this.J = bool;
    }

    public void setRetrynum(int i) {
        this.L = i;
    }

    public void setRhythmVideoAdType(RhythmVideoAdType rhythmVideoAdType) {
        this.ag = rhythmVideoAdType;
    }

    public void setRhythmVideoUrl(String str) {
        this.af = str;
    }

    public void setScene(String str) {
        this.ae = str;
    }

    public void setSdkNetwork(String str) {
        this.p = str;
    }

    public void setSetTrackingId(boolean z) {
        this.aj = z;
    }

    public void setSlotName(String str) {
        this.Q = str;
    }

    public void setSource(String str) {
        this.G = str;
    }

    public void setTest(boolean z) {
        this.u = z;
    }

    public void setText(String str) {
        this.e = str;
    }

    public void setTimercountdown(boolean z) {
        this.aq = z;
    }

    public void setVideoplacement(String str) {
        this.ap = str;
    }

    public void setWidth(String str) {
        this.F = str;
    }

    public void setXhtml(String str) {
        this.d = str;
    }

    public void setZoneId(String str) {
        this.X = str;
    }
}