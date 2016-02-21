package com.admarvel.android.nativeads;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.Location;
import android.util.Log;
import android.view.View;
import com.admarvel.android.ads.AdMarvelAdapter;
import com.admarvel.android.ads.AdMarvelAdapterInstances;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.AdMArvelErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.ads.AdMarvelXMLElement;
import com.admarvel.android.ads.AdMarvelXMLReader;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters.Builder;
import com.admarvel.android.util.Logging;
import com.brightcove.player.event.Event;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.util.ErrorUtil;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.house.impl.AbstractActivity;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

public class AdMarvelNativeAd {
    public static final String FIELD_CAMPAIGNIMAGE = "campaignImage";
    public static final String FIELD_CTA = "cta";
    public static final String FIELD_DISPLAYNAME = "displayName";
    public static final String FIELD_FULLMESSAGE = "fullMessage";
    public static final String FIELD_ICON = "icon";
    public static final String FIELD_RATING = "rating";
    public static final String FIELD_SHORTMESSAGE = "shortMessage";
    final String ADMARVEL_NATIVE_AD_GUID;
    private String adId;
    private String adSponsoredMarker;
    private AdType adType;
    private AdMarvelNativeImage[] campaignImage;
    private boolean canRegisterViewForInteraction;
    private WeakReference contextReference;
    private AdMarvelNativeCta cta;
    private String deviceConnectivity;
    private String disableAdDuration;
    private boolean disableAdRequest;
    private String displayName;
    private int errorCode;
    private String errorReason;
    private String excluded;
    private String facebookChildDirectedFlag;
    private String[] facebookTestDeviceId;
    private String fullMessage;
    private AdMarvelNativeImage icon;
    private int id;
    private final InternalAdMarvelAdapterListener internalAdMarvelAdapterListener;
    private String ipAddress;
    private final a listenerImpl;
    private final AtomicLong lockTimestamp;
    private Context mContext;
    private int maxretries;
    private Map metadatas;
    private int orientation;
    private String partnerId;
    private List pixels;
    private String pubId;
    private AdMarvelNativeRating rating;
    private String requestJson;
    private String responseJson;
    private Boolean retry;
    private int retrynum;
    private SDKAdNetwork sdkAdNetwork;
    private String sdkNetwork;
    private String shortMessage;
    private String siteId;
    private String source;
    private Map targetParams;
    private AdMarvelNativeTracker[] trackers;
    private String xml;

    public static interface AdMarvelNativeAdListener {
        void onClickNativeAd(String str);

        void onFailedToReceiveNativeAd(int i, AdMArvelErrorReason adMArvelErrorReason, AdMarvelNativeAd adMarvelNativeAd);

        void onReceiveNativeAd(AdMarvelNativeAd adMarvelNativeAd);

        void onRequestNativeAd();
    }

    public enum AdType {
        SDKCALL,
        ERROR,
        NATIVE
    }

    private static class InternalAdMarvelAdapterListener implements AdMarvelAdapterListener {
        private AdMarvelNativeAd mNativeAd;

        public InternalAdMarvelAdapterListener(AdMarvelNativeAd adMarvelNativeAd) {
            this.mNativeAd = adMarvelNativeAd;
        }

        public void onClickAd(String str) {
        }

        public void onClose() {
        }

        public void onExpand() {
        }

        public void onFailedToReceiveAd(int i, ErrorReason errorReason) {
            boolean z;
            if (this.mNativeAd == null || !this.mNativeAd.getRetry().equals(Boolean.valueOf(true)) || this.mNativeAd.getRetrynum() > this.mNativeAd.getMaxretries()) {
                z = false;
            } else {
                int retrynum = this.mNativeAd.getRetrynum() + 1;
                String excluded = this.mNativeAd.getExcluded();
                if (this.mNativeAd.getExcluded() == null) {
                    excluded = this.mNativeAd.getAdId();
                } else if (this.mNativeAd.getExcluded().length() > 0) {
                    excluded = excluded + "," + this.mNativeAd.getAdId();
                } else {
                    excluded = this.mNativeAd.getAdId();
                }
                if (this.mNativeAd.getmContext() != null) {
                    Logging.log("Retry : onRequestAd");
                    Builder builder = new Builder();
                    builder.context(this.mNativeAd.mContext);
                    builder.partnerId(this.mNativeAd.partnerId);
                    builder.siteId(this.mNativeAd.siteId);
                    builder.targetParams(this.mNativeAd.targetParams);
                    c.a(new b(), new Object[]{builder.build(), this.mNativeAd, Integer.valueOf(retrynum), excluded});
                }
                z = true;
            }
            if (i == 0 && this.mNativeAd.listenerImpl != null) {
                this.mNativeAd.listenerImpl.a(this.mNativeAd, AdMArvelErrorReason.NO_AD_FOUND.getErrorCode(), AdMArvelErrorReason.NO_AD_FOUND);
            }
        }

        public void onReceiveAd() {
        }

        public void onReceiveNativeAd(Object obj) {
            if (obj != null && obj instanceof AdMarvelNativeAd) {
                this.mNativeAd = (AdMarvelNativeAd) obj;
            }
            if (this.mNativeAd.listenerImpl != null) {
                this.mNativeAd.listenerImpl.a(this.mNativeAd);
            }
        }
    }

    public static final class RequestParameters {
        private final Context mContext;
        private final String mPartnerId;
        private final String mSiteId;
        private final Map mTargetParams;

        public static final class Builder {
            private Context mContext;
            private String mPartnerId;
            private String mSiteId;
            private Map mTargetParams;

            public final com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters build() {
                return new com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters(null);
            }

            public final com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters.Builder context(Context context) {
                this.mContext = context;
                return this;
            }

            public final com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters.Builder partnerId(String str) {
                this.mPartnerId = str;
                return this;
            }

            public final com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters.Builder siteId(String str) {
                this.mSiteId = str;
                return this;
            }

            public final com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters.Builder targetParams(Map map) {
                this.mTargetParams = map;
                return this;
            }
        }

        private RequestParameters(Builder builder) {
            this.mSiteId = builder.mSiteId;
            this.mPartnerId = builder.mPartnerId;
            this.mContext = builder.mContext;
            this.mTargetParams = builder.mTargetParams;
        }

        public final Context getContext() {
            return this.mContext;
        }

        public final String getPartnerId() {
            return this.mPartnerId;
        }

        public final String getSiteId() {
            return this.mSiteId;
        }

        public final Map getTargetParams() {
            return this.mTargetParams;
        }
    }

    private static class a implements Runnable {
        private String a;
        private final AdMarvelNativeAd b;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ Intent a;

            AnonymousClass_1(Intent intent) {
                this.a = intent;
            }

            public void run() {
                ((Context) a.this.getContextReference().get()).startActivity(this.a);
            }
        }

        public a(String str, AdMarvelNativeAd adMarvelNativeAd) {
            this.a = str;
            this.b = adMarvelNativeAd;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.nativeads.AdMarvelNativeAd.a.run():void");
            /*
            r8 = this;
            r0 = r8.b;
            r0 = r0.getContextReference();
            if (r0 == 0) goto L_0x0066;
        L_0x0008:
            r0 = r8.b;
            r0 = r0.getContextReference();
            r0 = r0.get();
            r0 = (android.content.Context) r0;
        L_0x0014:
            if (r0 == 0) goto L_0x0065;
        L_0x0016:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r2 = 0;
            r1 = com.admarvel.android.ads.Utils.handledBySpecialIntents(r0, r1, r2);	 Catch:{ Exception -> 0x00aa }
            if (r1 != 0) goto L_0x0065;
        L_0x001f:
            r1 = com.admarvel.android.ads.Utils.isNetworkAvailable(r0);	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x0068;
        L_0x0025:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x0068;
        L_0x0029:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r2 = "admarvelvideo";
            r1 = com.admarvel.android.ads.Utils.isPrivateProtocol(r1, r2);	 Catch:{ Exception -> 0x00aa }
            r2 = com.admarvel.android.ads.Utils.PROTOCOL_TYPE.NONE;	 Catch:{ Exception -> 0x00aa }
            if (r1 == r2) goto L_0x0068;
        L_0x0035:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r2 = "admarvelvideo";
            r3 = "http://";
            r4 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r5 = "admarvelvideo";
            r4 = com.admarvel.android.ads.Utils.isPrivateProtocol(r4, r5);	 Catch:{ Exception -> 0x00aa }
            r1 = com.admarvel.android.ads.Utils.parsePrivateProtocol(r1, r2, r3, r4, r0);	 Catch:{ Exception -> 0x00aa }
            r2 = new android.content.Intent;	 Catch:{ Exception -> 0x00aa }
            r3 = "android.intent.action.VIEW";
            r2.<init>(r3);	 Catch:{ Exception -> 0x00aa }
            r3 = 268435456; // 0x10000000 float:2.5243549E-29 double:1.32624737E-315;
            r2.addFlags(r3);	 Catch:{ Exception -> 0x00aa }
            r1 = android.net.Uri.parse(r1);	 Catch:{ Exception -> 0x00aa }
            r3 = "video/*";
            r2.setDataAndType(r1, r3);	 Catch:{ Exception -> 0x00aa }
            r1 = com.admarvel.android.ads.Utils.isIntentAvailable(r0, r2);	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x0065;
        L_0x0062:
            r0.startActivity(r2);	 Catch:{ Exception -> 0x00aa }
        L_0x0065:
            return;
        L_0x0066:
            r0 = 0;
            goto L_0x0014;
        L_0x0068:
            r1 = com.admarvel.android.ads.Utils.isNetworkAvailable(r0);	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x00ac;
        L_0x006e:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x00ac;
        L_0x0072:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r2 = "admarvelexternal";
            r1 = com.admarvel.android.ads.Utils.isPrivateProtocol(r1, r2);	 Catch:{ Exception -> 0x00aa }
            r2 = com.admarvel.android.ads.Utils.PROTOCOL_TYPE.NONE;	 Catch:{ Exception -> 0x00aa }
            if (r1 == r2) goto L_0x00ac;
        L_0x007e:
            r1 = new android.content.Intent;	 Catch:{ Exception -> 0x00aa }
            r2 = "android.intent.action.VIEW";
            r3 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r4 = "admarvelexternal";
            r5 = "";
            r6 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r7 = "admarvelexternal";
            r6 = com.admarvel.android.ads.Utils.isPrivateProtocol(r6, r7);	 Catch:{ Exception -> 0x00aa }
            r3 = com.admarvel.android.ads.Utils.parsePrivateProtocol(r3, r4, r5, r6, r0);	 Catch:{ Exception -> 0x00aa }
            r3 = android.net.Uri.parse(r3);	 Catch:{ Exception -> 0x00aa }
            r1.<init>(r2, r3);	 Catch:{ Exception -> 0x00aa }
            r2 = 268435456; // 0x10000000 float:2.5243549E-29 double:1.32624737E-315;
            r1.addFlags(r2);	 Catch:{ Exception -> 0x00aa }
            r2 = com.admarvel.android.ads.Utils.isIntentAvailable(r0, r1);	 Catch:{ Exception -> 0x00aa }
            if (r2 == 0) goto L_0x0065;
        L_0x00a6:
            r0.startActivity(r1);	 Catch:{ Exception -> 0x00aa }
            goto L_0x0065;
        L_0x00aa:
            r0 = move-exception;
            goto L_0x0065;
        L_0x00ac:
            r1 = com.admarvel.android.ads.Utils.isNetworkAvailable(r0);	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x00df;
        L_0x00b2:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x00df;
        L_0x00b6:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r2 = "admarvelcustomvideo";
            r1 = com.admarvel.android.ads.Utils.isPrivateProtocol(r1, r2);	 Catch:{ Exception -> 0x00aa }
            r2 = com.admarvel.android.ads.Utils.PROTOCOL_TYPE.NONE;	 Catch:{ Exception -> 0x00aa }
            if (r1 == r2) goto L_0x00df;
        L_0x00c2:
            r1 = new android.content.Intent;	 Catch:{ Exception -> 0x00aa }
            r2 = com.admarvel.android.ads.AdMarvelVideoActivity.class;
            r1.<init>(r0, r2);	 Catch:{ Exception -> 0x00aa }
            r2 = 268435456; // 0x10000000 float:2.5243549E-29 double:1.32624737E-315;
            r1.addFlags(r2);	 Catch:{ Exception -> 0x00aa }
            r2 = "url";
            r3 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r1.putExtra(r2, r3);	 Catch:{ Exception -> 0x00aa }
            r2 = "isCustomUrl";
            r3 = 1;
            r1.putExtra(r2, r3);	 Catch:{ Exception -> 0x00aa }
            r0.startActivity(r1);	 Catch:{ Exception -> 0x00aa }
            goto L_0x0065;
        L_0x00df:
            r1 = com.admarvel.android.ads.Utils.isNetworkAvailable(r0);	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x0065;
        L_0x00e5:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            if (r1 == 0) goto L_0x0065;
        L_0x00e9:
            r1 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r1 = r1.length();	 Catch:{ Exception -> 0x00aa }
            if (r1 <= 0) goto L_0x0065;
        L_0x00f1:
            r1 = new android.content.Intent;	 Catch:{ Exception -> 0x00aa }
            r2 = com.admarvel.android.ads.AdMarvelActivity.class;
            r1.<init>(r0, r2);	 Catch:{ Exception -> 0x00aa }
            r0 = 268435456; // 0x10000000 float:2.5243549E-29 double:1.32624737E-315;
            r1.addFlags(r0);	 Catch:{ Exception -> 0x00aa }
            r0 = "url";
            r2 = r8.a;	 Catch:{ Exception -> 0x00aa }
            r1.putExtra(r0, r2);	 Catch:{ Exception -> 0x00aa }
            r0 = "isInterstitial";
            r2 = 0;
            r1.putExtra(r0, r2);	 Catch:{ Exception -> 0x00aa }
            r0 = "isInterstitialClick";
            r2 = 0;
            r1.putExtra(r0, r2);	 Catch:{ Exception -> 0x00aa }
            r0 = "GUID";
            r2 = r8.b;	 Catch:{ Exception -> 0x00aa }
            r2 = r2.ADMARVEL_NATIVE_AD_GUID;	 Catch:{ Exception -> 0x00aa }
            r1.putExtra(r0, r2);	 Catch:{ Exception -> 0x00aa }
            r0 = new android.os.Handler;	 Catch:{ Exception -> 0x012c }
            r2 = android.os.Looper.getMainLooper();	 Catch:{ Exception -> 0x012c }
            r0.<init>(r2);	 Catch:{ Exception -> 0x012c }
            r2 = new com.admarvel.android.nativeads.AdMarvelNativeAd$a$1;	 Catch:{ Exception -> 0x012c }
            r2.<init>(r1);	 Catch:{ Exception -> 0x012c }
            r0.post(r2);	 Catch:{ Exception -> 0x012c }
            goto L_0x0065;
        L_0x012c:
            r0 = move-exception;
            r0.printStackTrace();	 Catch:{ Exception -> 0x00aa }
            goto L_0x0065;
            */
        }
    }

    public AdMarvelNativeAd() {
        this.facebookChildDirectedFlag = null;
        this.canRegisterViewForInteraction = false;
        this.disableAdRequest = false;
        this.ADMARVEL_NATIVE_AD_GUID = UUID.randomUUID().toString();
        AdMarvelAdapterInstances.buildAdMarvelAdapterInstances(this.ADMARVEL_NATIVE_AD_GUID);
        this.listenerImpl = new a();
        this.internalAdMarvelAdapterListener = new InternalAdMarvelAdapterListener(this);
        this.lockTimestamp = new AtomicLong(0);
    }

    private void firePixel() {
        if (this.mContext != null) {
            AdMarvelUtils adMarvelUtils = new AdMarvelUtils(this.mContext);
            List pixels = getPixels();
            if (pixels != null) {
                Iterator it = pixels.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (str != null) {
                        adMarvelUtils.firePixelUsingHTTP(str);
                    }
                }
            }
        }
    }

    private void fireTrackerPixel(String str) {
        if (this.mContext != null) {
            AdMarvelUtils adMarvelUtils = new AdMarvelUtils(this.mContext);
            AdMarvelNativeTracker[] trackers = getTrackers();
            if (trackers != null && trackers.length > 0) {
                int length = trackers.length;
                int i = 0;
                while (i < length) {
                    AdMarvelNativeTracker adMarvelNativeTracker = trackers[i];
                    if (adMarvelNativeTracker.getType().equals(str)) {
                        String[] url = adMarvelNativeTracker.getUrl();
                        int length2 = url.length;
                        int i2 = 0;
                        while (i2 < length2) {
                            String str2 = url[i2];
                            if (str2 != null) {
                                adMarvelUtils.firePixelUsingHTTP(str2);
                            }
                            i2++;
                        }
                    }
                    i++;
                }
            }
        }
    }

    private AdMarvelNativeTracker[] getTrackers() {
        return this.trackers;
    }

    private AdMarvelNativeCta parseAndGetNativeAdCTA(AdMarvelXMLElement adMarvelXMLElement) {
        try {
            AdMarvelNativeCta adMarvelNativeCta = new AdMarvelNativeCta();
            String str = (String) adMarvelXMLElement.getAttributes().get(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY);
            if (str != null) {
                adMarvelNativeCta.setAction(str);
            }
            str = parseAndGetNativeAdStandardElement(adMarvelXMLElement, PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, 0);
            if (str != null) {
                adMarvelNativeCta.setTitle(str);
            }
            str = parseAndGetNativeAdStandardElement(adMarvelXMLElement, Constants.NATIVE_AD_CLICK_URL_ELEMENT, 0);
            if (str != null) {
                adMarvelNativeCta.setClickUrl(str);
            }
            AdMarvelNativeImage parseAndGetNativeAdImageElement = parseAndGetNativeAdImageElement(adMarvelXMLElement, Constants.NATIVE_AD_IMAGE_ELEMENT);
            if (parseAndGetNativeAdImageElement != null) {
                adMarvelNativeCta.setImage(parseAndGetNativeAdImageElement);
            }
            return adMarvelNativeCta;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.admarvel.android.nativeads.AdMarvelNativeImage parseAndGetNativeAdImageElement(com.admarvel.android.ads.AdMarvelXMLElement r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.nativeads.AdMarvelNativeAd.parseAndGetNativeAdImageElement(com.admarvel.android.ads.AdMarvelXMLElement):com.admarvel.android.nativeads.AdMarvelNativeImage");
        /*
        r5 = this;
        r2 = 0;
        r3 = new com.admarvel.android.nativeads.AdMarvelNativeImage;	 Catch:{ Exception -> 0x005e }
        r3.<init>();	 Catch:{ Exception -> 0x005e }
        if (r6 == 0) goto L_0x0059;
    L_0x0008:
        r0 = r6.getData();	 Catch:{ Exception -> 0x005e }
        if (r0 == 0) goto L_0x0023;
    L_0x000e:
        r1 = r0.length();	 Catch:{ Exception -> 0x005e }
        if (r1 <= 0) goto L_0x0023;
    L_0x0014:
        r1 = com.admarvel.android.ads.Constants.WEB_URL;	 Catch:{ Exception -> 0x005e }
        r1 = r1.matcher(r0);	 Catch:{ Exception -> 0x005e }
        r1 = r1.matches();	 Catch:{ Exception -> 0x005e }
        if (r1 == 0) goto L_0x0023;
    L_0x0020:
        r3.setImageUrl(r0);	 Catch:{ Exception -> 0x005e }
    L_0x0023:
        r0 = r6.getAttributes();	 Catch:{ Exception -> 0x005e }
        r1 = "width";
        r0 = r0.get(r1);	 Catch:{ Exception -> 0x005e }
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x005e }
        r1 = r6.getAttributes();	 Catch:{ Exception -> 0x005e }
        r4 = "height";
        r1 = r1.get(r4);	 Catch:{ Exception -> 0x005e }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x005e }
        if (r0 == 0) goto L_0x004a;
    L_0x003d:
        r4 = r0.length();	 Catch:{ Exception -> 0x005b }
        if (r4 <= 0) goto L_0x004a;
    L_0x0043:
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ Exception -> 0x005b }
        r3.setWidth(r0);	 Catch:{ Exception -> 0x005b }
    L_0x004a:
        if (r1 == 0) goto L_0x0059;
    L_0x004c:
        r0 = r1.length();	 Catch:{ Exception -> 0x005b }
        if (r0 <= 0) goto L_0x0059;
    L_0x0052:
        r0 = java.lang.Integer.parseInt(r1);	 Catch:{ Exception -> 0x005b }
        r3.setHeight(r0);	 Catch:{ Exception -> 0x005b }
    L_0x0059:
        r0 = r3;
    L_0x005a:
        return r0;
    L_0x005b:
        r0 = move-exception;
        r0 = r2;
        goto L_0x005a;
    L_0x005e:
        r0 = move-exception;
        r0 = r2;
        goto L_0x005a;
        */
    }

    private AdMarvelNativeImage parseAndGetNativeAdImageElement(AdMarvelXMLElement adMarvelXMLElement, String str) {
        AdMarvelNativeImage adMarvelNativeImage = null;
        try {
            return adMarvelXMLElement.getChildren().containsKey(str) ? parseAndGetNativeAdImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(str)).get(0)) : adMarvelNativeImage;
        } catch (Exception e) {
            return adMarvelNativeImage;
        }
    }

    private AdMarvelNativeMetadata parseAndGetNativeAdMetadata(AdMarvelXMLElement adMarvelXMLElement) {
        try {
            AdMarvelNativeMetadata adMarvelNativeMetadata = new AdMarvelNativeMetadata();
            String str = (String) adMarvelXMLElement.getAttributes().get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
            String data = adMarvelXMLElement.getData();
            if (str != null) {
                adMarvelNativeMetadata.setType(str);
            }
            if (data != null) {
                adMarvelNativeMetadata.setValue(data);
            }
            return adMarvelNativeMetadata;
        } catch (Exception e) {
            return null;
        }
    }

    private Map parseAndGetNativeAdMetadatas(AdMarvelXMLElement adMarvelXMLElement) {
        try {
            Map hashMap = new HashMap();
            if (adMarvelXMLElement.getChildren().containsKey(Constants.NATIVE_AD_METADATA_ELEMENT)) {
                int size = ((ArrayList) adMarvelXMLElement.getChildren().get(Constants.NATIVE_AD_METADATA_ELEMENT)).size();
                int i = 0;
                while (i < size) {
                    AdMarvelXMLElement adMarvelXMLElement2 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(Constants.NATIVE_AD_METADATA_ELEMENT)).get(i);
                    String str = (String) adMarvelXMLElement2.getAttributes().get(Constants.NATIVE_AD_KEY_ELEMENT);
                    AdMarvelNativeMetadata parseAndGetNativeAdMetadata = parseAndGetNativeAdMetadata(adMarvelXMLElement2);
                    if (!(parseAndGetNativeAdMetadata == null || str == null)) {
                        hashMap.put(str, parseAndGetNativeAdMetadata);
                    }
                    i++;
                }
            }
            return hashMap;
        } catch (Exception e) {
            return null;
        }
    }

    private AdMarvelNativeRating parseAndGetNativeAdRating(AdMarvelXMLElement adMarvelXMLElement) {
        try {
            AdMarvelNativeImage parseAndGetNativeAdImageElement;
            AdMarvelNativeRating adMarvelNativeRating = new AdMarvelNativeRating();
            String str = (String) adMarvelXMLElement.getAttributes().get(Constants.NATIVE_AD_VALUE_ELEMENT);
            String str2 = (String) adMarvelXMLElement.getAttributes().get(Constants.NATIVE_AD_BASE_ELEMENT);
            if (str != null) {
                adMarvelNativeRating.setValue(str);
            }
            if (str2 != null) {
                adMarvelNativeRating.setBase(str2);
            }
            if (adMarvelXMLElement.getChildren().containsKey(Constants.NATIVE_AD_COMPLETE_ELEMENT)) {
                parseAndGetNativeAdImageElement = parseAndGetNativeAdImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(Constants.NATIVE_AD_COMPLETE_ELEMENT)).get(0), Constants.NATIVE_AD_IMAGE_ELEMENT);
                if (parseAndGetNativeAdImageElement != null) {
                    adMarvelNativeRating.setComplete(parseAndGetNativeAdImageElement);
                }
            }
            if (adMarvelXMLElement.getChildren().containsKey(Constants.NATIVE_AD_HALF_ELEMENT)) {
                parseAndGetNativeAdImageElement = parseAndGetNativeAdImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(Constants.NATIVE_AD_HALF_ELEMENT)).get(0), Constants.NATIVE_AD_IMAGE_ELEMENT);
                if (parseAndGetNativeAdImageElement != null) {
                    adMarvelNativeRating.setHalf(parseAndGetNativeAdImageElement);
                }
            }
            if (adMarvelXMLElement.getChildren().containsKey(Constants.NATIVE_AD_FULL_ELEMENT)) {
                parseAndGetNativeAdImageElement = parseAndGetNativeAdImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(Constants.NATIVE_AD_FULL_ELEMENT)).get(0), Constants.NATIVE_AD_IMAGE_ELEMENT);
                if (parseAndGetNativeAdImageElement != null) {
                    adMarvelNativeRating.setFull(parseAndGetNativeAdImageElement);
                }
            }
            if (adMarvelXMLElement.getChildren().containsKey(Constants.NATIVE_AD_BLANK_ELEMENT)) {
                parseAndGetNativeAdImageElement = parseAndGetNativeAdImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(Constants.NATIVE_AD_BLANK_ELEMENT)).get(0), Constants.NATIVE_AD_IMAGE_ELEMENT);
                if (parseAndGetNativeAdImageElement != null) {
                    adMarvelNativeRating.setBlank(parseAndGetNativeAdImageElement);
                }
            }
            return adMarvelNativeRating;
        } catch (Exception e) {
            return null;
        }
    }

    private String parseAndGetNativeAdStandardElement(AdMarvelXMLElement adMarvelXMLElement, String str, int i) {
        try {
            if (adMarvelXMLElement.getChildren().containsKey(str)) {
                AdMarvelXMLElement adMarvelXMLElement2 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(str)).get(i);
                if (adMarvelXMLElement2 != null) {
                    String data = adMarvelXMLElement2.getData();
                    if (data != null && data.length() > 0) {
                        return data;
                    }
                }
            }
            return AdTrackerConstants.BLANK;
        } catch (Exception e) {
            return AdTrackerConstants.BLANK;
        }
    }

    private AdMarvelNativeTracker parseAndGetNativeAdTrackerElement(AdMarvelXMLElement adMarvelXMLElement) {
        try {
            AdMarvelNativeTracker adMarvelNativeTracker = new AdMarvelNativeTracker();
            String str = (String) adMarvelXMLElement.getAttributes().get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
            if (str != null) {
                adMarvelNativeTracker.setType(str);
            }
            adMarvelNativeTracker.setUrl(parseAndGetNativeAdTrackerUrlElement(adMarvelXMLElement));
            return adMarvelNativeTracker;
        } catch (Exception e) {
            return null;
        }
    }

    private String[] parseAndGetNativeAdTrackerUrlElement(AdMarvelXMLElement adMarvelXMLElement) {
        String[] strArr = null;
        try {
            if (!adMarvelXMLElement.getChildren().containsKey(PlusShare.KEY_CALL_TO_ACTION_URL)) {
                return strArr;
            }
            int size = ((ArrayList) adMarvelXMLElement.getChildren().get(PlusShare.KEY_CALL_TO_ACTION_URL)).size();
            String[] strArr2 = new String[size];
            int i = 0;
            while (i < size) {
                strArr2[i] = parseAndGetNativeAdStandardElement(adMarvelXMLElement, PlusShare.KEY_CALL_TO_ACTION_URL, i);
                i++;
            }
            return strArr2;
        } catch (Exception e) {
            return strArr;
        }
    }

    private AdMarvelNativeTracker[] parseAndGetNativeAdTrackersElement(AdMarvelXMLElement adMarvelXMLElement) {
        AdMarvelNativeTracker[] adMarvelNativeTrackerArr = null;
        try {
            if (!adMarvelXMLElement.getChildren().containsKey(Constants.NATIVE_AD_TRACKER_ELEMENT)) {
                return adMarvelNativeTrackerArr;
            }
            int size = ((ArrayList) adMarvelXMLElement.getChildren().get(Constants.NATIVE_AD_TRACKER_ELEMENT)).size();
            AdMarvelNativeTracker[] adMarvelNativeTrackerArr2 = new AdMarvelNativeTracker[size];
            int i = 0;
            while (i < size) {
                adMarvelNativeTrackerArr2[i] = parseAndGetNativeAdTrackerElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(Constants.NATIVE_AD_TRACKER_ELEMENT)).get(i));
                i++;
            }
            return adMarvelNativeTrackerArr2;
        } catch (Exception e) {
            return adMarvelNativeTrackerArr;
        }
    }

    private AdMarvelNativeImage[] parseAndGetNativeAdcampaignImageElement(AdMarvelXMLElement adMarvelXMLElement, String str) {
        AdMarvelNativeImage[] adMarvelNativeImageArr = null;
        try {
            if (!adMarvelXMLElement.getChildren().containsKey(str)) {
                return adMarvelNativeImageArr;
            }
            int size = ((ArrayList) adMarvelXMLElement.getChildren().get(str)).size();
            AdMarvelNativeImage[] adMarvelNativeImageArr2 = new AdMarvelNativeImage[size];
            int i = 0;
            while (i < size) {
                adMarvelNativeImageArr2[i] = parseAndGetNativeAdImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(str)).get(i));
                i++;
            }
            return adMarvelNativeImageArr2;
        } catch (Exception e) {
            return adMarvelNativeImageArr;
        }
    }

    private void redirectUrl(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    new Thread(new a(str, this)).start();
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private void setCampaignImage(AdMarvelNativeImage[] adMarvelNativeImageArr) {
        this.campaignImage = adMarvelNativeImageArr;
    }

    private void setDisplayName(String str) {
        this.displayName = str;
    }

    private void setFullMessage(String str) {
        this.fullMessage = str;
    }

    private void setIcon(AdMarvelNativeImage adMarvelNativeImage) {
        this.icon = adMarvelNativeImage;
    }

    private void setNativeAdFields(String str, Object obj) {
        if (str != null && obj != null) {
            if (str.equals(FIELD_DISPLAYNAME) && obj instanceof String) {
                setDisplayName((String) obj);
            } else if (str != null && str.equals(FIELD_FULLMESSAGE) && obj != null && obj instanceof String) {
                setFullMessage((String) obj);
            } else if (str != null && str.equals(FIELD_SHORTMESSAGE) && obj != null && obj instanceof String) {
                setShortMessage((String) obj);
            } else if (str != null && str.equals(FIELD_ICON) && obj != null && obj instanceof AdMarvelNativeImage) {
                setIcon((AdMarvelNativeImage) obj);
            } else if (str != null && str.equals(FIELD_CAMPAIGNIMAGE) && obj instanceof AdMarvelNativeImage[]) {
                setCampaignImage((AdMarvelNativeImage[]) obj);
            } else if (str != null && str.equals(FIELD_RATING) && obj instanceof AdMarvelNativeRating) {
                setRating((AdMarvelNativeRating) obj);
            } else if (str != null && str.equals(FIELD_CTA) && obj instanceof AdMarvelNativeCta) {
                setCta((AdMarvelNativeCta) obj);
            } else if (str != null && str.equals(Constants.NATIVE_AD_METADATAS_ELEMENT) && obj instanceof Map) {
                setMetadatas((Map) obj);
            }
        }
    }

    private void setRating(AdMarvelNativeRating adMarvelNativeRating) {
        this.rating = adMarvelNativeRating;
    }

    private void setShortMessage(String str) {
        this.shortMessage = str;
    }

    public boolean canRegisterViewForInteraction() {
        return this.canRegisterViewForInteraction;
    }

    public boolean checkForBlockedAd() {
        boolean z = false;
        Context context = (Context) this.contextReference.get();
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(AdMarvelUtils.encodeString("admarvel"), 0);
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            int i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            String str2 = str != null ? Fields.DURATION + str + i + AdMarvelUtils.getSDKVersion() : Fields.DURATION + i + AdMarvelUtils.getSDKVersion();
            if (str2 != null) {
                str2 = sharedPreferences.getString(AdMarvelUtils.encodeString(str2), null);
                if (str2 != null && str2.length() > 0) {
                    if (DateFormat.getDateTimeInstance().parse(DateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis()))).before(DateFormat.getDateTimeInstance().parse(str2))) {
                        Logging.log("requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST");
                        this.listenerImpl.a(this, AdMArvelErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION.getErrorCode(), AdMArvelErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION);
                        return true;
                    }
                }
            }
            return z;
        } catch (Exception e) {
            return z;
        }
    }

    protected void disableAdRequest(String str) {
        if (this.mContext != null) {
            String str2;
            String str3 = null;
            try {
                str2 = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionName;
                int i = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode;
                str2 = str2 != null ? Fields.DURATION + str2 + i + AdMarvelUtils.getSDKVersion() : Fields.DURATION + i + AdMarvelUtils.getSDKVersion();
            } catch (NameNotFoundException e) {
                Logging.log(Log.getStackTraceString(e));
                str2 = str3;
            }
            if (str2 != null) {
                Editor edit = this.mContext.getSharedPreferences(AdMarvelUtils.encodeString("admarvel"), 0).edit();
                edit.putString(AdMarvelUtils.encodeString(str2), DateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis() + ((long) (Integer.parseInt(str) * 1000)))));
                edit.commit();
                Logging.log("requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST");
                if (this.listenerImpl != null) {
                    this.listenerImpl.a(this, AdMArvelErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION.getErrorCode(), AdMArvelErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION);
                }
            }
        }
    }

    public String getAdId() {
        return this.adId;
    }

    public String getAdSponsoredMarker() {
        return this.adSponsoredMarker;
    }

    public AdType getAdType() {
        return this.adType;
    }

    public AdMarvelNativeImage[] getCampaignImage() {
        return this.campaignImage;
    }

    public WeakReference getContextReference() {
        return this.contextReference;
    }

    public AdMarvelNativeCta getCta() {
        return this.cta;
    }

    public String getDeviceConnectivity() {
        return this.deviceConnectivity;
    }

    public String getDisableAdDuration() {
        return this.disableAdDuration;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorReason() {
        return this.errorReason;
    }

    public String getExcluded() {
        return this.excluded;
    }

    public String getFacebookChildDirectedFlag() {
        return this.facebookChildDirectedFlag;
    }

    public String[] getFacebookTestDeviceId() {
        return this.facebookTestDeviceId;
    }

    public String getFullMessage() {
        return this.fullMessage;
    }

    public AdMarvelNativeImage getIcon() {
        return this.icon;
    }

    public int getId() {
        return this.id;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public a getListener() {
        return this.listenerImpl;
    }

    public int getMaxretries() {
        return this.maxretries;
    }

    public Map getMetadatas() {
        return this.metadatas;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public String getPartnerId() {
        return this.partnerId;
    }

    public List getPixels() {
        return this.pixels;
    }

    public String getPubId() {
        return this.pubId;
    }

    public AdMarvelNativeRating getRating() {
        return this.rating;
    }

    public String getRequestJson() {
        return this.requestJson;
    }

    public String getResponseJson() {
        return this.responseJson;
    }

    public Boolean getRetry() {
        return this.retry;
    }

    public int getRetrynum() {
        return this.retrynum;
    }

    public SDKAdNetwork getSdkAdNetwork() {
        return this.sdkAdNetwork;
    }

    public String getSdkNetwork() {
        return this.sdkNetwork;
    }

    public String getShortMessage() {
        return this.shortMessage;
    }

    public String getSiteId() {
        return this.siteId;
    }

    public String getSource() {
        return this.source;
    }

    public Map getTargetParams() {
        return this.targetParams;
    }

    public String getXml() {
        return this.xml;
    }

    public Context getmContext() {
        return this.mContext;
    }

    public void handleClick() {
        if (getAdType() == AdType.SDKCALL) {
            AdMarvelAdapter instance = AdMarvelAdapterInstances.getInstance(this.ADMARVEL_NATIVE_AD_GUID, getSdkNetwork());
            if (instance != null) {
                instance.handleClick();
            }
        } else {
            String clickUrl;
            clickUrl = getCta() != null ? getCta().getClickUrl() : null;
            if (clickUrl != null) {
                redirectUrl(clickUrl);
            }
            fireTrackerPixel("click");
        }
    }

    public void handleImpression() {
        firePixel();
        fireTrackerPixel("impression");
        if (getAdType() == AdType.SDKCALL) {
            AdMarvelAdapter instance = AdMarvelAdapterInstances.getInstance(this.ADMARVEL_NATIVE_AD_GUID, getSdkNetwork());
            if (instance != null) {
                instance.handleImpression();
            }
        }
    }

    public boolean isDisableAdrequest() {
        return this.disableAdRequest;
    }

    public AdMarvelXMLReader loadAd(String str) {
        if (str == null) {
            return null;
        }
        AdMarvelXMLReader adMarvelXMLReader = new AdMarvelXMLReader();
        adMarvelXMLReader.parseXMLString(str);
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        if (parsedXMLData == null) {
            return null;
        }
        String str2;
        AdMarvelXMLElement adMarvelXMLElement;
        AdMarvelXMLElement adMarvelXMLElement2;
        AdMarvelNativeMetadata adMarvelNativeMetadata;
        if (parsedXMLData.getName().equals(AdDatabaseHelper.TABLE_AD)) {
            str2 = (String) parsedXMLData.getAttributes().get(AnalyticsEvent.EVENT_ID);
            if (str2 != null && str2.length() > 0) {
                this.id = Integer.parseInt(str2);
                this.adId = str2;
            }
            str2 = (String) parsedXMLData.getAttributes().get("ip");
            if (str2 != null && str2.length() > 0) {
                this.ipAddress = str2;
            }
            str2 = (String) parsedXMLData.getAttributes().get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
            if (ErrorUtil.ERROR.equals(str2)) {
                this.adType = AdType.ERROR;
            } else if ("sdkcall".equals(str2)) {
                this.adType = AdType.SDKCALL;
            } else if ("native".equals(str2)) {
                this.adType = AdType.NATIVE;
            }
            str2 = (String) parsedXMLData.getAttributes().get(Event.SOURCE);
            if (str2 != null && str2.length() > 0) {
                this.source = str2;
            }
        } else {
            this.adType = AdType.ERROR;
        }
        if (parsedXMLData.getChildren().containsKey("pixels")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) parsedXMLData.getChildren().get("pixels")).get(0);
            if (adMarvelXMLElement.getChildren().containsKey("pixel")) {
                int size = ((ArrayList) adMarvelXMLElement.getChildren().get("pixel")).size();
                int i = 0;
                while (i < size) {
                    adMarvelXMLElement2 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get("pixel")).get(i);
                    if (adMarvelXMLElement2 != null) {
                        String data = adMarvelXMLElement2.getData();
                        if (this.pixels == null) {
                            this.pixels = new ArrayList();
                        }
                        this.pixels.add(data);
                    }
                    i++;
                }
            }
        }
        if (this.adType.equals(AdType.SDKCALL)) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) parsedXMLData.getChildren().get("xhtml")).get(0);
            if (adMarvelXMLElement != null) {
                adMarvelXMLReader.parseXMLString(new d().a(adMarvelXMLElement.getData()));
                adMarvelXMLElement2 = adMarvelXMLReader.getParsedXMLData();
                str2 = (String) adMarvelXMLElement2.getAttributes().get("network");
                if ("facebook".equals(str2)) {
                    this.sdkNetwork = Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME;
                    this.sdkAdNetwork = SDKAdNetwork.FACEBOOK;
                    this.canRegisterViewForInteraction = true;
                } else if ("heyzap".equals(str2)) {
                    this.sdkNetwork = Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME;
                    this.sdkAdNetwork = SDKAdNetwork.HEYZAP;
                } else if ("disable_ad_request".equals(str2)) {
                    str2 = (String) adMarvelXMLElement2.getAttributes().get("durationinseconds");
                    if (str2 != null) {
                        this.disableAdRequest = true;
                        this.disableAdDuration = str2;
                    }
                } else {
                    this.adType = AdType.ERROR;
                    this.errorCode = AdMArvelErrorReason.AD_REQUEST_SDK_TYPE_UNSUPPORTED.getErrorCode();
                    this.errorReason = "Missing SDK ad network";
                }
                if ("YES".equals((String) adMarvelXMLElement2.getAttributes().get("retry"))) {
                    this.retry = Boolean.valueOf(true);
                } else {
                    this.retry = Boolean.valueOf(false);
                }
                str2 = (String) adMarvelXMLElement2.getAttributes().get("retrynum");
                if (str2 != null && str2.length() > 0) {
                    this.retrynum = Integer.parseInt(str2);
                }
                str2 = (String) adMarvelXMLElement2.getAttributes().get("excluded");
                if (str2 != null && str2.length() > 0) {
                    this.excluded = str2;
                }
                str2 = (String) adMarvelXMLElement2.getAttributes().get("maxretries");
                if (str2 == null || str2.length() <= 0) {
                    this.maxretries = 1;
                } else {
                    this.maxretries = Integer.parseInt(str2);
                }
                if (adMarvelXMLElement2.getChildren().containsKey(Event.ERROR_CODE)) {
                    adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Event.ERROR_CODE)).get(0);
                    if (adMarvelXMLElement != null) {
                        this.errorCode = Integer.parseInt(adMarvelXMLElement.getData());
                    }
                }
                if (adMarvelXMLElement2.getChildren().containsKey("errorReason")) {
                    adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("errorReason")).get(0);
                    if (adMarvelXMLElement != null) {
                        this.errorReason = adMarvelXMLElement.getData();
                    }
                }
                if (this.adType.equals(AdType.NATIVE) && adMarvelXMLElement2 != null) {
                    this.displayName = parseAndGetNativeAdStandardElement(adMarvelXMLElement2, FIELD_DISPLAYNAME, 0);
                    this.shortMessage = parseAndGetNativeAdStandardElement(adMarvelXMLElement2, FIELD_SHORTMESSAGE, 0);
                    this.fullMessage = parseAndGetNativeAdStandardElement(adMarvelXMLElement2, FIELD_FULLMESSAGE, 0);
                    this.adSponsoredMarker = parseAndGetNativeAdStandardElement(adMarvelXMLElement2, Constants.NATIVE_AD_SPONSOREDMARKER_ELEMENT, 0);
                    if (adMarvelXMLElement2.getChildren().get(FIELD_ICON) != null) {
                        this.icon = parseAndGetNativeAdImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(FIELD_ICON)).get(0), Constants.NATIVE_AD_IMAGE_ELEMENT);
                    }
                    if (adMarvelXMLElement2.getChildren().get(FIELD_CAMPAIGNIMAGE) != null) {
                        this.campaignImage = parseAndGetNativeAdcampaignImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(FIELD_CAMPAIGNIMAGE)).get(0), Constants.NATIVE_AD_IMAGE_ELEMENT);
                    }
                    if (adMarvelXMLElement2.getChildren().get(FIELD_CTA) != null) {
                        this.cta = parseAndGetNativeAdCTA((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(FIELD_CTA)).get(0));
                    }
                    if (adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_METADATAS_ELEMENT) != null) {
                        this.metadatas = parseAndGetNativeAdMetadatas((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_METADATAS_ELEMENT)).get(0));
                        if (this.metadatas.containsKey(FIELD_RATING)) {
                            adMarvelNativeMetadata = (AdMarvelNativeMetadata) this.metadatas.get(FIELD_RATING);
                            if (adMarvelNativeMetadata.getType() != null && adMarvelNativeMetadata.getType().equals("xml")) {
                                str2 = adMarvelNativeMetadata.getValue();
                                if (str2 != null) {
                                    AdMarvelXMLReader adMarvelXMLReader2 = new AdMarvelXMLReader();
                                    adMarvelXMLReader2.parseXMLString(str2);
                                    adMarvelXMLElement = adMarvelXMLReader2.getParsedXMLData();
                                    if (adMarvelXMLElement != null) {
                                        this.rating = parseAndGetNativeAdRating(adMarvelXMLElement);
                                    }
                                }
                            }
                            if (adMarvelXMLElement2.getChildren().get(FIELD_RATING) != null) {
                                this.rating = parseAndGetNativeAdRating((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(FIELD_RATING)).get(0));
                            }
                        }
                    }
                    if (adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_TRACKERS_ELEMENT) != null) {
                        this.trackers = parseAndGetNativeAdTrackersElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_TRACKERS_ELEMENT)).get(0));
                    }
                }
                return adMarvelXMLReader;
            }
        }
        adMarvelXMLElement2 = parsedXMLData;
        if (adMarvelXMLElement2.getChildren().containsKey(Event.ERROR_CODE)) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Event.ERROR_CODE)).get(0);
            if (adMarvelXMLElement != null) {
                this.errorCode = Integer.parseInt(adMarvelXMLElement.getData());
            }
        }
        if (adMarvelXMLElement2.getChildren().containsKey("errorReason")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("errorReason")).get(0);
            if (adMarvelXMLElement != null) {
                this.errorReason = adMarvelXMLElement.getData();
            }
        }
        this.displayName = parseAndGetNativeAdStandardElement(adMarvelXMLElement2, FIELD_DISPLAYNAME, 0);
        this.shortMessage = parseAndGetNativeAdStandardElement(adMarvelXMLElement2, FIELD_SHORTMESSAGE, 0);
        this.fullMessage = parseAndGetNativeAdStandardElement(adMarvelXMLElement2, FIELD_FULLMESSAGE, 0);
        this.adSponsoredMarker = parseAndGetNativeAdStandardElement(adMarvelXMLElement2, Constants.NATIVE_AD_SPONSOREDMARKER_ELEMENT, 0);
        if (adMarvelXMLElement2.getChildren().get(FIELD_ICON) != null) {
            this.icon = parseAndGetNativeAdImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(FIELD_ICON)).get(0), Constants.NATIVE_AD_IMAGE_ELEMENT);
        }
        if (adMarvelXMLElement2.getChildren().get(FIELD_CAMPAIGNIMAGE) != null) {
            this.campaignImage = parseAndGetNativeAdcampaignImageElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(FIELD_CAMPAIGNIMAGE)).get(0), Constants.NATIVE_AD_IMAGE_ELEMENT);
        }
        if (adMarvelXMLElement2.getChildren().get(FIELD_CTA) != null) {
            this.cta = parseAndGetNativeAdCTA((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(FIELD_CTA)).get(0));
        }
        if (adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_METADATAS_ELEMENT) != null) {
            this.metadatas = parseAndGetNativeAdMetadatas((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_METADATAS_ELEMENT)).get(0));
            if (this.metadatas.containsKey(FIELD_RATING)) {
                adMarvelNativeMetadata = (AdMarvelNativeMetadata) this.metadatas.get(FIELD_RATING);
                str2 = adMarvelNativeMetadata.getValue();
                if (str2 != null) {
                    AdMarvelXMLReader adMarvelXMLReader22 = new AdMarvelXMLReader();
                    adMarvelXMLReader22.parseXMLString(str2);
                    adMarvelXMLElement = adMarvelXMLReader22.getParsedXMLData();
                    if (adMarvelXMLElement != null) {
                        this.rating = parseAndGetNativeAdRating(adMarvelXMLElement);
                    }
                }
                if (adMarvelXMLElement2.getChildren().get(FIELD_RATING) != null) {
                    this.rating = parseAndGetNativeAdRating((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(FIELD_RATING)).get(0));
                }
            }
        }
        if (adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_TRACKERS_ELEMENT) != null) {
            this.trackers = parseAndGetNativeAdTrackersElement((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get(Constants.NATIVE_AD_TRACKERS_ELEMENT)).get(0));
        }
        return adMarvelXMLReader;
    }

    public void nativeAdCleanup() {
        if (this.contextReference != null) {
            this.contextReference.clear();
        }
        if (this.targetParams != null) {
            this.targetParams.clear();
        }
        this.partnerId = null;
        this.siteId = null;
        this.deviceConnectivity = null;
        this.pixels = null;
        this.id = 0;
        this.ipAddress = null;
        this.source = null;
        this.canRegisterViewForInteraction = false;
        this.disableAdRequest = false;
        this.disableAdDuration = null;
        this.retrynum = -1;
        this.displayName = null;
        this.shortMessage = null;
        this.fullMessage = null;
        this.adSponsoredMarker = null;
        this.icon = null;
        this.campaignImage = null;
        this.cta = null;
        this.metadatas = null;
        this.rating = null;
        this.trackers = null;
    }

    public void registerViewForInteraction(View view) {
        if (getAdType() == AdType.SDKCALL && getSdkAdNetwork() == SDKAdNetwork.FACEBOOK) {
            unregisterView();
            AdMarvelAdapter instance = AdMarvelAdapterInstances.getInstance(this.ADMARVEL_NATIVE_AD_GUID, getSdkNetwork());
            if (instance != null) {
                instance.registerViewForInteraction(view);
            }
        }
    }

    public synchronized void removeNonStringEntriesTargetParam() {
        Map concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.putAll(this.targetParams);
        try {
            Map concurrentHashMap2 = new ConcurrentHashMap();
            concurrentHashMap2.putAll(this.targetParams);
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
            this.targetParams.clear();
            this.targetParams.putAll(concurrentHashMap2);
        } catch (Exception e) {
            Exception exception = e;
            this.targetParams.clear();
            this.targetParams.putAll(concurrentHashMap);
            exception.printStackTrace();
        }
    }

    public void requestNativeAd(RequestParameters requestParameters) {
        this.contextReference = new WeakReference(requestParameters.mContext);
        this.partnerId = requestParameters.mPartnerId.trim();
        this.siteId = requestParameters.mSiteId.trim();
        this.mContext = (Context) this.contextReference.get();
        this.targetParams = requestParameters.mTargetParams;
        if (this.mContext != null) {
            this.orientation = AdMarvelUtils.getScreenOrientation(this.mContext);
            this.deviceConnectivity = AdMarvelUtils.getDeviceConnectivitiy(this.mContext);
            try {
                if (checkForBlockedAd()) {
                    if (this.listenerImpl != null) {
                        this.listenerImpl.a(this, AdMArvelErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION.getErrorCode(), AdMArvelErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION);
                    }
                } else if (System.currentTimeMillis() - this.lockTimestamp.getAndSet(System.currentTimeMillis()) > 2000) {
                    this.listenerImpl.a();
                    c.a(new b(), new Object[]{requestParameters, this, Integer.valueOf(0), AdTrackerConstants.BLANK});
                } else {
                    Logging.log("requestNewAd: AD REQUEST PENDING, IGNORING REQUEST");
                    this.listenerImpl.a(this, AdMArvelErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION.getErrorCode(), AdMArvelErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION);
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                a listener = getListener();
                if (listener != null) {
                    listener.a(this, AdMArvelErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION.getErrorCode(), AdMArvelErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION);
                }
            }
        }
    }

    protected void requestPendingAd() {
        AdMarvelAdapter instance = AdMarvelAdapterInstances.getInstance(this.ADMARVEL_NATIVE_AD_GUID, getSdkNetwork());
        if (instance != null) {
            instance.requestNativeAd(this.internalAdMarvelAdapterListener, this);
        }
    }

    public void setAdType(AdType adType) {
        this.adType = adType;
    }

    public void setCta(AdMarvelNativeCta adMarvelNativeCta) {
        this.cta = adMarvelNativeCta;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public void setErrorReason(String str) {
        this.errorReason = str;
    }

    public void setFacebookChildDirectedFlag(String str) {
        this.facebookChildDirectedFlag = str;
    }

    public void setFacebookTestDeviceId(String[] strArr) {
        this.facebookTestDeviceId = strArr;
    }

    public void setListener(AdMarvelNativeAdListener adMarvelNativeAdListener) {
        this.listenerImpl.a(adMarvelNativeAdListener);
    }

    public void setMetadatas(Map map) {
        this.metadatas = map;
    }

    public void setPixels(List list) {
        this.pixels = list;
    }

    public void setPubId(String str) {
        this.pubId = str;
    }

    public void setRequestJson(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                this.requestJson = jSONObject.toString(1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void unregisterView() {
        if (getAdType() == AdType.SDKCALL && getSdkAdNetwork() == SDKAdNetwork.FACEBOOK) {
            AdMarvelAdapter instance = AdMarvelAdapterInstances.getInstance(this.ADMARVEL_NATIVE_AD_GUID, getSdkNetwork());
            if (instance != null) {
                instance.unregisterView();
            }
        }
    }

    public void updateNativeAdFromAdapter(Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                setNativeAdFields((String) entry.getKey(), entry.getValue());
            }
        }
    }
}