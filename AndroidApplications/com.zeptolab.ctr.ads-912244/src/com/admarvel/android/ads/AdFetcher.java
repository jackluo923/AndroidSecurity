package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import android.view.ViewGroup;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.a.b;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Map;
import org.json.JSONObject;

public class AdFetcher {
    private static final String ADMARVEL_ENDPOINT = "http://ads.admarvel.com/fam/androidGetAd.php";
    private static final String FACEBOOK_ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final String FACEBOOK_ATTRIBUTION_ID_PREFIX = "FBATTRID:";
    private static final Uri FACEBOOK_ATTRIBUTION_ID_URI;
    public static final String SDK_SUPPORTED;
    public static String lastAdRequestPostString;
    private String googleAdID;
    private JSONObject requestJson;
    private int userOptOutPreference;

    public enum Adtype {
        BANNER,
        INTERSTITIAL,
        NATIVE
    }

    private static class a {
        public byte[] a;
        public int b;

        private a() {
            this.a = null;
            this.b = 0;
        }
    }

    static {
        SDK_SUPPORTED = Version.getSDKSupported();
        FACEBOOK_ATTRIBUTION_ID_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    }

    public AdFetcher() {
        this.googleAdID = "VALUE_NOT_DEFINED";
        this.userOptOutPreference = Integer.MIN_VALUE;
    }

    private String buildParamString(Adtype adtype, Context context, int i, String str, Map map, String str2, String str3, int i2, String str4, Handler handler, boolean z, boolean z2, boolean z3) {
        Boolean bool;
        Throwable th;
        Boolean bool2;
        StringBuilder stringBuilder = new StringBuilder();
        try {
            String packageName;
            String captureTargetingParams = Utils.captureTargetingParams(map, "||");
            Utils.appendParams(stringBuilder, "site_id", str3);
            Utils.appendParams(stringBuilder, "partner_id", str2);
            Utils.appendParams(stringBuilder, "timeout", String.valueOf(AdTrackerConstants.WEBVIEW_NOERROR));
            Utils.appendParams(stringBuilder, "version", Version.ADMARVEL_API_VERSION);
            Utils.appendParams(stringBuilder, "language", "java");
            Utils.appendParams(stringBuilder, "format", "android");
            Utils.appendParams(stringBuilder, "sdk_version", Version.SDK_VERSION);
            Utils.appendParams(stringBuilder, "sdk_version_date", Version.SDK_VERSION_DATE);
            if (z3) {
                Utils.appendParams(stringBuilder, "sdk_supported", AdTrackerConstants.BLANK);
            } else {
                Utils.appendParams(stringBuilder, "sdk_supported", SDK_SUPPORTED);
            }
            Utils.appendParams(stringBuilder, "device_model", Build.MODEL);
            Utils.appendParams(stringBuilder, "device_name", Build.ID);
            Utils.appendParams(stringBuilder, "device_systemversion", VERSION.RELEASE);
            Utils.appendParams(stringBuilder, "device_api_version", String.valueOf(Version.getAndroidSDKVersion()));
            Utils.appendParams(stringBuilder, "retrynum", String.valueOf(i2));
            Utils.appendParams(stringBuilder, "excluded_banners", str4);
            if (i == 2) {
                Utils.appendParams(stringBuilder, "device_orientation", DeviceInfo.ORIENTATION_LANDSCAPE);
            } else {
                Utils.appendParams(stringBuilder, "device_orientation", DeviceInfo.ORIENTATION_PORTRAIT);
            }
            Utils.appendParams(stringBuilder, "device_connectivity", str);
            int deviceWidth = Utils.getDeviceWidth(context);
            if (deviceWidth > 0) {
                Utils.appendParams(stringBuilder, "resolution_width", String.valueOf(deviceWidth));
                Utils.appendParams(stringBuilder, "max_image_width", String.valueOf(deviceWidth));
            }
            int deviceHeight = Utils.getDeviceHeight(context);
            if (deviceHeight > 0) {
                Utils.appendParams(stringBuilder, "resolution_height", String.valueOf(deviceHeight));
                Utils.appendParams(stringBuilder, "max_image_height", String.valueOf(deviceHeight));
            }
            Utils.appendParams(stringBuilder, "device_density", AdTrackerConstants.BLANK + Utils.getDeviceDensity(context));
            Utils.appendParams(stringBuilder, "device_os", "Android");
            if (adtype.equals(Adtype.BANNER)) {
                Utils.appendParams(stringBuilder, AdDatabaseHelper.COLUMN_ADTYPE, "banner");
            } else if (adtype.equals(Adtype.INTERSTITIAL)) {
                Utils.appendParams(stringBuilder, AdDatabaseHelper.COLUMN_ADTYPE, "interstitial");
            } else if (adtype.equals(Adtype.NATIVE)) {
                Utils.appendParams(stringBuilder, AdDatabaseHelper.COLUMN_ADTYPE, "native");
            }
            Utils.appendParams(stringBuilder, "device_details", "brand:" + Build.BRAND + ",model:" + Build.MODEL + ",width:" + (i == 2 ? String.valueOf(deviceHeight) : String.valueOf(deviceWidth)) + ",height:" + (i == 2 ? String.valueOf(deviceWidth) : String.valueOf(deviceHeight)) + ",os:" + VERSION.RELEASE + ",ua:" + new Utils(context, handler).getUserAgent());
            packageName = context != null ? context.getPackageName() : null;
            if (packageName != null && packageName.length() > 0) {
                Utils.appendParams(stringBuilder, "app_identifier", packageName);
            }
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity != null) {
                    ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                    Boolean valueOf = Boolean.valueOf(false);
                    if (Version.getAndroidSDKVersion() >= 11) {
                        if (adtype.equals(Adtype.BANNER)) {
                            try {
                                Object invoke = ViewGroup.class.getMethod("isHardwareAccelerated", new Class[0]).invoke(viewGroup, (Object[]) 0);
                                bool = (invoke == null || !invoke instanceof Boolean) ? valueOf : (Boolean) invoke;
                                try {
                                    if (bool.booleanValue() && z && Utils.detectDeviceForWebViewCrash()) {
                                        bool = Boolean.valueOf(false);
                                    }
                                    valueOf = bool;
                                } catch (Exception e) {
                                    bool2 = bool;
                                    th = e;
                                    Logging.log(Log.getStackTraceString(th));
                                    valueOf = bool2;
                                    Utils.appendParams(stringBuilder, "hardware_accelerated", valueOf.toString());
                                    packageName = (String) map.get("ANDROID_ADVERTISING_ID");
                                    Utils.appendParams(stringBuilder, "android_advertising_id", packageName);
                                    if (AdMarvelUtils.isTabletDevice(context)) {
                                        Utils.appendParams(stringBuilder, "auto-scaling", "true");
                                        Utils.appendParams(stringBuilder, "is_tablet", "false");
                                    } else {
                                        Utils.appendParams(stringBuilder, "auto-scaling", "false");
                                        Utils.appendParams(stringBuilder, "is_tablet", "true");
                                    }
                                    packageName = Utils.getDeviceNetworkName(context);
                                    if (packageName.equals("unknown-network")) {
                                        Utils.appendParams(stringBuilder, "carriername", packageName);
                                    }
                                    String deviceNetWorkType = Utils.getDeviceNetWorkType(context);
                                    if (packageName.equals(AdTrackerConstants.BLANK)) {
                                        Utils.appendParams(stringBuilder, "radiotech", deviceNetWorkType);
                                    }
                                    if (z3) {
                                        Utils.appendParams(stringBuilder, "force_pixel_track", "true");
                                    }
                                    Utils.appendParams(stringBuilder, "target_params", captureTargetingParams);
                                    return stringBuilder.toString();
                                }
                            } catch (Exception e2) {
                                th = e2;
                                bool2 = valueOf;
                                Logging.log(Log.getStackTraceString(th));
                                valueOf = bool2;
                                Utils.appendParams(stringBuilder, "hardware_accelerated", valueOf.toString());
                                packageName = (String) map.get("ANDROID_ADVERTISING_ID");
                                Utils.appendParams(stringBuilder, "android_advertising_id", packageName);
                                if (AdMarvelUtils.isTabletDevice(context)) {
                                    Utils.appendParams(stringBuilder, "auto-scaling", "false");
                                    Utils.appendParams(stringBuilder, "is_tablet", "true");
                                } else {
                                    Utils.appendParams(stringBuilder, "auto-scaling", "true");
                                    Utils.appendParams(stringBuilder, "is_tablet", "false");
                                }
                                packageName = Utils.getDeviceNetworkName(context);
                                if (packageName.equals("unknown-network")) {
                                    Utils.appendParams(stringBuilder, "carriername", packageName);
                                }
                                String deviceNetWorkType2 = Utils.getDeviceNetWorkType(context);
                                if (packageName.equals(AdTrackerConstants.BLANK)) {
                                    Utils.appendParams(stringBuilder, "radiotech", deviceNetWorkType2);
                                }
                                if (z3) {
                                    Utils.appendParams(stringBuilder, "force_pixel_track", "true");
                                }
                                Utils.appendParams(stringBuilder, "target_params", captureTargetingParams);
                                return stringBuilder.toString();
                            }
                        } else if (adtype.equals(Adtype.INTERSTITIAL)) {
                            valueOf = Boolean.valueOf(true);
                        }
                    }
                    Utils.appendParams(stringBuilder, "hardware_accelerated", valueOf.toString());
                }
            }
            packageName = (String) map.get("ANDROID_ADVERTISING_ID");
            if (packageName != null && packageName.length() > 0) {
                Utils.appendParams(stringBuilder, "android_advertising_id", packageName);
            }
            if (AdMarvelUtils.isTabletDevice(context)) {
                Utils.appendParams(stringBuilder, "auto-scaling", "false");
                Utils.appendParams(stringBuilder, "is_tablet", "true");
            } else {
                Utils.appendParams(stringBuilder, "auto-scaling", "true");
                Utils.appendParams(stringBuilder, "is_tablet", "false");
            }
            packageName = Utils.getDeviceNetworkName(context);
            if (!packageName.equals("unknown-network")) {
                Utils.appendParams(stringBuilder, "carriername", packageName);
            }
            String deviceNetWorkType22 = Utils.getDeviceNetWorkType(context);
            if (!packageName.equals(AdTrackerConstants.BLANK)) {
                Utils.appendParams(stringBuilder, "radiotech", deviceNetWorkType22);
            }
            if (z3) {
                Utils.appendParams(stringBuilder, "force_pixel_track", "true");
            }
            if (captureTargetingParams != null && captureTargetingParams.length() > 0) {
                Utils.appendParams(stringBuilder, "target_params", captureTargetingParams);
            }
            return stringBuilder.toString();
        } catch (Exception e3) {
            Logging.log(Log.getStackTraceString(e3));
            return null;
        }
    }

    private String fetchAdFromLocal(Adtype adtype, Context context, String str, int i, String str2, Map map, String str3, String str4, int i2, String str5, boolean z, Handler handler, boolean z2) {
        return new b().a(adtype, context, str, i, str2, map, str3, str4, i2, str5, z, handler, z2);
    }

    private String getFacebookAttributionId(Context context) {
        String str = null;
        Cursor query = context.getContentResolver().query(FACEBOOK_ATTRIBUTION_ID_URI, new String[]{FACEBOOK_ATTRIBUTION_ID_COLUMN_NAME}, null, null, null);
        if (query != null) {
            try {
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
            }
            if (query.moveToFirst()) {
                str = query.getString(query.getColumnIndex(FACEBOOK_ATTRIBUTION_ID_COLUMN_NAME));
                if (query != null) {
                    query.close();
                }
                return str;
            }
        }
        if (query != null) {
            query.close();
        }
        return str;
    }

    private String getFacebookAttributionKeyword(Context context) {
        if (context == null) {
            return null;
        }
        String facebookAttributionId = getFacebookAttributionId(context);
        return (facebookAttributionId == null || facebookAttributionId.length() <= 0) ? null : FACEBOOK_ATTRIBUTION_ID_PREFIX + facebookAttributionId;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String fetchAd(com.admarvel.android.ads.AdFetcher.Adtype r19, android.content.Context r20, java.lang.String r21, int r22, java.lang.String r23, java.util.Map r24, java.lang.String r25, java.lang.String r26, int r27, java.lang.String r28, boolean r29, android.os.Handler r30, boolean r31, boolean r32, boolean r33) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdFetcher.fetchAd(com.admarvel.android.ads.AdFetcher$Adtype, android.content.Context, java.lang.String, int, java.lang.String, java.util.Map, java.lang.String, java.lang.String, int, java.lang.String, boolean, android.os.Handler, boolean, boolean, boolean):java.lang.String");
        /*
        r18 = this;
        r17 = 0;
        r7 = new java.util.HashMap;
        r7.<init>();
        if (r20 != 0) goto L_0x000b;
    L_0x0009:
        r2 = 0;
    L_0x000a:
        return r2;
    L_0x000b:
        if (r24 == 0) goto L_0x0014;
    L_0x000d:
        monitor-enter(r24);	 Catch:{ Exception -> 0x00c9 }
        r0 = r24;
        r7.putAll(r0);	 Catch:{ all -> 0x00c6 }
        monitor-exit(r24);	 Catch:{ all -> 0x00c6 }
    L_0x0014:
        r2 = 1;
        r0 = r29;
        if (r0 != r2) goto L_0x00d4;
    L_0x0019:
        r2 = "RESPONSE_TYPE";
        r3 = "xml";
        r7.put(r2, r3);	 Catch:{ Exception -> 0x00c9 }
    L_0x0020:
        r2 = com.admarvel.android.util.e.c(r20);	 Catch:{ Exception -> 0x00c9 }
        r0 = r20;
        r3 = r2.b(r0);	 Catch:{ Exception -> 0x00c9 }
        r0 = r18;
        r0.googleAdID = r3;	 Catch:{ Exception -> 0x00c9 }
        r0 = r20;
        r2 = r2.a(r0);	 Catch:{ Exception -> 0x00c9 }
        r0 = r18;
        r0.userOptOutPreference = r2;	 Catch:{ Exception -> 0x00c9 }
        r0 = r18;
        r2 = r0.googleAdID;	 Catch:{ Exception -> 0x00c9 }
        if (r2 == 0) goto L_0x00dd;
    L_0x003e:
        r0 = r18;
        r2 = r0.googleAdID;	 Catch:{ Exception -> 0x00c9 }
        r3 = "VALUE_NOT_DEFINED";
        r2 = r2.equals(r3);	 Catch:{ Exception -> 0x00c9 }
        if (r2 != 0) goto L_0x00dd;
    L_0x004a:
        r2 = "ANDROID_ADVERTISING_ID";
        r0 = r18;
        r3 = r0.googleAdID;	 Catch:{ Exception -> 0x00c9 }
        r7.put(r2, r3);	 Catch:{ Exception -> 0x00c9 }
        r2 = "ANDROID_ADVERTISING_ID_OPT_OUT";
        r0 = r18;
        r3 = r0.userOptOutPreference;	 Catch:{ Exception -> 0x00c9 }
        r3 = java.lang.Integer.toString(r3);	 Catch:{ Exception -> 0x00c9 }
        r7.put(r2, r3);	 Catch:{ Exception -> 0x00c9 }
    L_0x0060:
        r2 = "UNIQUE_ID";
        r2 = r7.get(r2);	 Catch:{ Exception -> 0x00c9 }
        if (r2 != 0) goto L_0x0083;
    L_0x0068:
        r0 = r18;
        r2 = r0.googleAdID;	 Catch:{ Exception -> 0x00c9 }
        if (r2 == 0) goto L_0x00e8;
    L_0x006e:
        r0 = r18;
        r2 = r0.googleAdID;	 Catch:{ Exception -> 0x00c9 }
        r3 = "VALUE_NOT_DEFINED";
        r2 = r2.equals(r3);	 Catch:{ Exception -> 0x00c9 }
        if (r2 != 0) goto L_0x00e8;
    L_0x007a:
        r2 = "UNIQUE_ID";
        r0 = r18;
        r3 = r0.googleAdID;	 Catch:{ Exception -> 0x00c9 }
        r7.put(r2, r3);	 Catch:{ Exception -> 0x00c9 }
    L_0x0083:
        r16 = "";
        r2 = r18;
        r3 = r19;
        r4 = r20;
        r5 = r22;
        r6 = r23;
        r8 = r25;
        r9 = r26;
        r10 = r27;
        r11 = r28;
        r12 = r30;
        r13 = r31;
        r14 = r32;
        r15 = r33;
        r3 = r2.buildParamString(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15);
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00f2 }
        r2.<init>();	 Catch:{ Exception -> 0x00f2 }
        r4 = "postString: ";
        r2 = r2.append(r4);	 Catch:{ Exception -> 0x00f2 }
        r4 = "UTF-8";
        r4 = java.net.URLDecoder.decode(r3, r4);	 Catch:{ Exception -> 0x00f2 }
        r2 = r2.append(r4);	 Catch:{ Exception -> 0x00f2 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x00f2 }
        com.admarvel.android.util.Logging.log(r2);	 Catch:{ Exception -> 0x00f2 }
    L_0x00bf:
        lastAdRequestPostString = r3;
        if (r3 != 0) goto L_0x010a;
    L_0x00c3:
        r2 = 0;
        goto L_0x000a;
    L_0x00c6:
        r2 = move-exception;
        monitor-exit(r24);	 Catch:{ all -> 0x00c6 }
        throw r2;	 Catch:{ Exception -> 0x00c9 }
    L_0x00c9:
        r2 = move-exception;
        r2 = android.util.Log.getStackTraceString(r2);
        com.admarvel.android.util.Logging.log(r2);
        r2 = 0;
        goto L_0x000a;
    L_0x00d4:
        r2 = "RESPONSE_TYPE";
        r3 = "xml_with_xhtml";
        r7.put(r2, r3);	 Catch:{ Exception -> 0x00c9 }
        goto L_0x0020;
    L_0x00dd:
        r2 = "ANDROID_ID";
        r3 = com.admarvel.android.util.OptionalUtils.getId(r20);	 Catch:{ Exception -> 0x00c9 }
        r7.put(r2, r3);	 Catch:{ Exception -> 0x00c9 }
        goto L_0x0060;
    L_0x00e8:
        r2 = "UNIQUE_ID";
        r3 = com.admarvel.android.util.OptionalUtils.getId(r20);	 Catch:{ Exception -> 0x00c9 }
        r7.put(r2, r3);	 Catch:{ Exception -> 0x00c9 }
        goto L_0x0083;
    L_0x00f2:
        r2 = move-exception;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "postString: ";
        r2 = r2.append(r4);
        r2 = r2.append(r3);
        r2 = r2.toString();
        com.admarvel.android.util.Logging.log(r2);
        goto L_0x00bf;
    L_0x010a:
        r2 = new org.json.JSONObject;	 Catch:{ Exception -> 0x0231 }
        r2.<init>();	 Catch:{ Exception -> 0x0231 }
        r0 = r18;
        r0.requestJson = r2;	 Catch:{ Exception -> 0x0231 }
        r2 = new java.text.SimpleDateFormat;	 Catch:{ Exception -> 0x0231 }
        r4 = "yyyy-MM-dd HH:mm:ss";
        r2.<init>(r4);	 Catch:{ Exception -> 0x0231 }
        r4 = "GMT+00:00";
        r4 = java.util.TimeZone.getTimeZone(r4);	 Catch:{ Exception -> 0x0231 }
        r2.setTimeZone(r4);	 Catch:{ Exception -> 0x0231 }
        r4 = new java.text.SimpleDateFormat;	 Catch:{ Exception -> 0x0231 }
        r5 = "yyyy-MM-dd HH:mm:ss";
        r4.<init>(r5);	 Catch:{ Exception -> 0x0231 }
        r5 = java.util.Calendar.getInstance();	 Catch:{ Exception -> 0x0231 }
        r5 = r5.getTime();	 Catch:{ Exception -> 0x0231 }
        r6 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0231 }
        r6 = java.lang.Long.valueOf(r6);	 Catch:{ Exception -> 0x0231 }
        r0 = r18;
        r7 = r0.requestJson;	 Catch:{ Exception -> 0x0231 }
        r8 = "data";
        r7.put(r8, r3);	 Catch:{ Exception -> 0x0231 }
        r0 = r18;
        r7 = r0.requestJson;	 Catch:{ Exception -> 0x0231 }
        r8 = "timestamp";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x0231 }
        r7.put(r8, r6);	 Catch:{ Exception -> 0x0231 }
        r0 = r18;
        r6 = r0.requestJson;	 Catch:{ Exception -> 0x0231 }
        r7 = "utc";
        r2 = r2.format(r5);	 Catch:{ Exception -> 0x0231 }
        r6.put(r7, r2);	 Catch:{ Exception -> 0x0231 }
        r0 = r18;
        r2 = r0.requestJson;	 Catch:{ Exception -> 0x0231 }
        r6 = "local";
        r4 = r4.format(r5);	 Catch:{ Exception -> 0x0231 }
        r2.put(r6, r4);	 Catch:{ Exception -> 0x0231 }
    L_0x016a:
        r2 = new java.net.URL;	 Catch:{ Exception -> 0x0226 }
        r4 = "http://ads.admarvel.com/fam/androidGetAd.php";
        r2.<init>(r4);	 Catch:{ Exception -> 0x0226 }
        r2 = r2.openConnection();	 Catch:{ Exception -> 0x0226 }
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ Exception -> 0x0226 }
        r4 = "POST";
        r2.setRequestMethod(r4);	 Catch:{ Exception -> 0x0226 }
        r4 = 1;
        r2.setDoOutput(r4);	 Catch:{ Exception -> 0x0226 }
        r4 = 1;
        r2.setDoInput(r4);	 Catch:{ Exception -> 0x0226 }
        r4 = 0;
        r2.setUseCaches(r4);	 Catch:{ Exception -> 0x0226 }
        r4 = new com.admarvel.android.ads.Utils;	 Catch:{ Exception -> 0x0226 }
        r0 = r20;
        r1 = r30;
        r4.<init>(r0, r1);	 Catch:{ Exception -> 0x0226 }
        r5 = "User-Agent";
        r4 = r4.getUserAgent();	 Catch:{ Exception -> 0x0226 }
        r2.setRequestProperty(r5, r4);	 Catch:{ Exception -> 0x0226 }
        r4 = "Content-Type";
        r5 = "application/x-www-form-urlencoded";
        r2.setRequestProperty(r4, r5);	 Catch:{ Exception -> 0x0226 }
        r4 = "Content-Length";
        r5 = r3.length();	 Catch:{ Exception -> 0x0226 }
        r5 = java.lang.Integer.toString(r5);	 Catch:{ Exception -> 0x0226 }
        r2.setRequestProperty(r4, r5);	 Catch:{ Exception -> 0x0226 }
        r4 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        r2.setConnectTimeout(r4);	 Catch:{ Exception -> 0x0226 }
        r4 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        r2.setReadTimeout(r4);	 Catch:{ Exception -> 0x0226 }
        r4 = r2.getOutputStream();	 Catch:{ Exception -> 0x0226 }
        r3 = r3.getBytes();	 Catch:{ Exception -> 0x0226 }
        r4.write(r3);	 Catch:{ Exception -> 0x0226 }
        r3 = r2.getResponseCode();	 Catch:{ Exception -> 0x0226 }
        r4 = r2.getContentLength();	 Catch:{ Exception -> 0x0226 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0226 }
        r5.<init>();	 Catch:{ Exception -> 0x0226 }
        r6 = "Connection Status Code: ";
        r5 = r5.append(r6);	 Catch:{ Exception -> 0x0226 }
        r5 = r5.append(r3);	 Catch:{ Exception -> 0x0226 }
        r5 = r5.toString();	 Catch:{ Exception -> 0x0226 }
        com.admarvel.android.util.Logging.log(r5);	 Catch:{ Exception -> 0x0226 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0226 }
        r5.<init>();	 Catch:{ Exception -> 0x0226 }
        r6 = "Content Length: ";
        r5 = r5.append(r6);	 Catch:{ Exception -> 0x0226 }
        r4 = r5.append(r4);	 Catch:{ Exception -> 0x0226 }
        r4 = r4.toString();	 Catch:{ Exception -> 0x0226 }
        com.admarvel.android.util.Logging.log(r4);	 Catch:{ Exception -> 0x0226 }
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r3 != r4) goto L_0x0283;
    L_0x01fb:
        r2 = r2.getContent();	 Catch:{ Exception -> 0x0226 }
        r2 = (java.io.InputStream) r2;	 Catch:{ Exception -> 0x0226 }
        r6 = new java.util.ArrayList;	 Catch:{ Exception -> 0x0226 }
        r6.<init>();	 Catch:{ Exception -> 0x0226 }
        r4 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r3 = r4;
        r5 = r17;
    L_0x020b:
        r7 = -1;
        if (r3 == r7) goto L_0x0237;
    L_0x020e:
        r7 = new byte[r4];	 Catch:{ Exception -> 0x0226 }
        r3 = 0;
        r3 = r2.read(r7, r3, r4);	 Catch:{ Exception -> 0x0226 }
        if (r3 <= 0) goto L_0x020b;
    L_0x0217:
        r8 = new com.admarvel.android.ads.AdFetcher$a;	 Catch:{ Exception -> 0x0226 }
        r9 = 0;
        r8.<init>();	 Catch:{ Exception -> 0x0226 }
        r8.a = r7;	 Catch:{ Exception -> 0x0226 }
        r8.b = r3;	 Catch:{ Exception -> 0x0226 }
        r5 = r5 + r3;
        r6.add(r8);	 Catch:{ Exception -> 0x0226 }
        goto L_0x020b;
    L_0x0226:
        r2 = move-exception;
        r2 = android.util.Log.getStackTraceString(r2);
        com.admarvel.android.util.Logging.log(r2);
        r2 = 0;
        goto L_0x000a;
    L_0x0231:
        r2 = move-exception;
        r2.printStackTrace();
        goto L_0x016a;
    L_0x0237:
        r2.close();	 Catch:{ Exception -> 0x0226 }
        if (r5 <= 0) goto L_0x0283;
    L_0x023c:
        r5 = new byte[r5];	 Catch:{ Exception -> 0x0226 }
        r3 = 0;
        r2 = 0;
        r4 = r3;
        r3 = r2;
    L_0x0242:
        r2 = r6.size();	 Catch:{ Exception -> 0x0226 }
        if (r3 >= r2) goto L_0x025d;
    L_0x0248:
        r2 = r6.get(r3);	 Catch:{ Exception -> 0x0226 }
        r2 = (com.admarvel.android.ads.AdFetcher.a) r2;	 Catch:{ Exception -> 0x0226 }
        r7 = r2.a;	 Catch:{ Exception -> 0x0226 }
        r8 = 0;
        r9 = r2.b;	 Catch:{ Exception -> 0x0226 }
        java.lang.System.arraycopy(r7, r8, r5, r4, r9);	 Catch:{ Exception -> 0x0226 }
        r2 = r2.b;	 Catch:{ Exception -> 0x0226 }
        r4 = r4 + r2;
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x0242;
    L_0x025d:
        r2 = new java.lang.String;	 Catch:{ Exception -> 0x0226 }
        r2.<init>(r5);	 Catch:{ Exception -> 0x0226 }
    L_0x0262:
        r2 = r2.toString();
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Admarvel XML Response:";
        r3 = r3.append(r4);
        r4 = new java.lang.String;
        r4.<init>(r2);
        r3 = r3.append(r4);
        r3 = r3.toString();
        com.admarvel.android.util.Logging.log(r3);
        goto L_0x000a;
    L_0x0283:
        r2 = r16;
        goto L_0x0262;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String fetchOfflineAd(com.admarvel.android.ads.AdFetcher.Adtype r16, android.content.Context r17, java.lang.String r18, int r19, java.lang.String r20, java.util.Map r21, java.lang.String r22, java.lang.String r23, int r24, java.lang.String r25, boolean r26, android.os.Handler r27, boolean r28, boolean r29) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdFetcher.fetchOfflineAd(com.admarvel.android.ads.AdFetcher$Adtype, android.content.Context, java.lang.String, int, java.lang.String, java.util.Map, java.lang.String, java.lang.String, int, java.lang.String, boolean, android.os.Handler, boolean, boolean):java.lang.String");
        /*
        r15 = this;
        if (r17 != 0) goto L_0x0004;
    L_0x0002:
        r1 = 0;
    L_0x0003:
        return r1;
    L_0x0004:
        r1 = new java.util.HashMap;
        r1.<init>();
        if (r21 == 0) goto L_0x0012;
    L_0x000b:
        monitor-enter(r21);	 Catch:{ Exception -> 0x0095 }
        r0 = r21;
        r1.putAll(r0);	 Catch:{ all -> 0x0092 }
        monitor-exit(r21);	 Catch:{ all -> 0x0092 }
    L_0x0012:
        r2 = 1;
        r0 = r26;
        if (r0 != r2) goto L_0x00a0;
    L_0x0017:
        r2 = "RESPONSE_TYPE";
        r3 = "xml";
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0095 }
    L_0x001e:
        r2 = com.admarvel.android.util.e.c(r17);	 Catch:{ Exception -> 0x0095 }
        r0 = r17;
        r3 = r2.b(r0);	 Catch:{ Exception -> 0x0095 }
        r15.googleAdID = r3;	 Catch:{ Exception -> 0x0095 }
        r0 = r17;
        r2 = r2.a(r0);	 Catch:{ Exception -> 0x0095 }
        r15.userOptOutPreference = r2;	 Catch:{ Exception -> 0x0095 }
        r2 = r15.googleAdID;	 Catch:{ Exception -> 0x0095 }
        if (r2 == 0) goto L_0x00a9;
    L_0x0036:
        r2 = r15.googleAdID;	 Catch:{ Exception -> 0x0095 }
        r3 = "VALUE_NOT_DEFINED";
        r2 = r2.equals(r3);	 Catch:{ Exception -> 0x0095 }
        if (r2 != 0) goto L_0x00a9;
    L_0x0040:
        r2 = "ANDROID_ADVERTISING_ID";
        r3 = r15.googleAdID;	 Catch:{ Exception -> 0x0095 }
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0095 }
        r2 = "ANDROID_ADVERTISING_ID_OPT_OUT";
        r3 = r15.userOptOutPreference;	 Catch:{ Exception -> 0x0095 }
        r3 = java.lang.Integer.toString(r3);	 Catch:{ Exception -> 0x0095 }
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0095 }
    L_0x0052:
        if (r18 != 0) goto L_0x00bd;
    L_0x0054:
        r4 = r15.googleAdID;	 Catch:{ Exception -> 0x0095 }
    L_0x0056:
        r2 = "UNIQUE_ID";
        r2 = r1.get(r2);	 Catch:{ Exception -> 0x0095 }
        if (r2 != 0) goto L_0x0073;
    L_0x005e:
        r2 = r15.googleAdID;	 Catch:{ Exception -> 0x0095 }
        if (r2 == 0) goto L_0x00b3;
    L_0x0062:
        r2 = r15.googleAdID;	 Catch:{ Exception -> 0x0095 }
        r3 = "VALUE_NOT_DEFINED";
        r2 = r2.equals(r3);	 Catch:{ Exception -> 0x0095 }
        if (r2 != 0) goto L_0x00b3;
    L_0x006c:
        r2 = "UNIQUE_ID";
        r3 = r15.googleAdID;	 Catch:{ Exception -> 0x0095 }
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0095 }
    L_0x0073:
        r1 = r15;
        r2 = r16;
        r3 = r17;
        r5 = r19;
        r6 = r20;
        r7 = r21;
        r8 = r22;
        r9 = r23;
        r10 = r24;
        r11 = r25;
        r12 = r26;
        r13 = r27;
        r14 = r28;
        r1 = r1.fetchAdFromLocal(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14);
        goto L_0x0003;
    L_0x0092:
        r1 = move-exception;
        monitor-exit(r21);	 Catch:{ all -> 0x0092 }
        throw r1;	 Catch:{ Exception -> 0x0095 }
    L_0x0095:
        r1 = move-exception;
        r1 = android.util.Log.getStackTraceString(r1);
        com.admarvel.android.util.Logging.log(r1);
        r1 = 0;
        goto L_0x0003;
    L_0x00a0:
        r2 = "RESPONSE_TYPE";
        r3 = "xml_with_xhtml";
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0095 }
        goto L_0x001e;
    L_0x00a9:
        r2 = "ANDROID_ID";
        r3 = com.admarvel.android.util.OptionalUtils.getId(r17);	 Catch:{ Exception -> 0x0095 }
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0095 }
        goto L_0x0052;
    L_0x00b3:
        r2 = "UNIQUE_ID";
        r3 = com.admarvel.android.util.OptionalUtils.getId(r17);	 Catch:{ Exception -> 0x0095 }
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0095 }
        goto L_0x0073;
    L_0x00bd:
        r4 = r18;
        goto L_0x0056;
        */
    }

    public JSONObject getRequestJson() {
        return this.requestJson;
    }
}