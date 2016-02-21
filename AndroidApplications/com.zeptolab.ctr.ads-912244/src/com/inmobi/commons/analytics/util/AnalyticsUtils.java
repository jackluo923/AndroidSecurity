package com.inmobi.commons.analytics.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.util.Base64OutputStream;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMItemType;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMSectionStatus;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

public class AnalyticsUtils {
    public static final String ANALYTICS_LOGGING_TAG = "[InMobi]-[Analytics]-4.4.1";
    public static final String INITIALIZE_NOT_CALLED = "Please call InMobi.initialize or startSession before calling any events API";
    private static String a;
    private static boolean b;

    public static void asyncPingInternal(String str) {
        Throwable th;
        HttpURLConnection httpURLConnection = null;
        try {
            String replaceAll = str.replaceAll("%25", "%");
            Log.debug(ANALYTICS_LOGGING_TAG, "Pinging URL: " + replaceAll);
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(replaceAll).openConnection();
            try {
                httpURLConnection2.setConnectTimeout(WebRequest.DEFAULT_TIMEOUT);
                httpURLConnection2.setRequestMethod("GET");
                InternalSDKUtil.addCommonPropertiesToConnection(httpURLConnection2);
                Log.debug(ANALYTICS_LOGGING_TAG, "Async Ping Connection Response Code: " + httpURLConnection2.getResponseCode());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Exception e) {
                httpURLConnection = httpURLConnection2;
                th = e;
                Log.debug(ANALYTICS_LOGGING_TAG, "Error doing async Ping. ", th);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th2) {
                httpURLConnection = httpURLConnection2;
                th = th2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Exception e2) {
            th = e2;
            try {
                Log.debug(ANALYTICS_LOGGING_TAG, "Error doing async Ping. ", th);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th3) {
                th = th3;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        }
    }

    public static String compressPayload(String str) {
        String str2 = null;
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 0);
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
            gZIPOutputStream.write(str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT));
            gZIPOutputStream.close();
            base64OutputStream.close();
            return byteArrayOutputStream.toString();
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Exception compress sdk payload.", e);
            return str2;
        }
    }

    public static String convertItemType(IMItemType iMItemType) {
        if (iMItemType == IMItemType.CONSUMABLE) {
            return "1";
        }
        if (iMItemType == IMItemType.DURABLE) {
            return "2";
        }
        return iMItemType == IMItemType.PERSONALIZATION ? "3" : null;
    }

    public static String convertLevelStatus(IMSectionStatus iMSectionStatus) {
        if (iMSectionStatus == IMSectionStatus.COMPLETED) {
            return "1";
        }
        if (iMSectionStatus == IMSectionStatus.FAILED) {
            return "2";
        }
        return iMSectionStatus == IMSectionStatus.CANCELED ? "3" : null;
    }

    public static String convertToJSON(Map map) {
        if (map.size() > getExtraParamsLimit()) {
            Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - number of key-value pairs in attribute map exceeds " + getExtraParamsLimit());
            return null;
        } else {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                Iterator it = map.keySet().iterator();
                while (it.hasNext()) {
                    str = (String) it.next();
                    if (str.length() > 0 && str.length() <= getMaxparamskey()) {
                        String str2 = (String) map.get(str);
                        if (str2.length() <= getMaxstring()) {
                            jSONObject.put(str, map.get(str));
                        } else {
                            Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - value : " + str2 + " ,exceeds inmobi's limitation of " + getMaxstring() + " characters.");
                            return null;
                        }
                    }
                    Log.verbose(ANALYTICS_LOGGING_TAG, "Analytics events - key : " + str + " ,exceeds inmobi's limitation of " + getMaxparamskey() + " characters.");
                    return null;
                }
                if (jSONObject.length() > 0) {
                    str = jSONObject.toString();
                    return str;
                }
            } catch (Exception e) {
                Log.internal(ANALYTICS_LOGGING_TAG, "Unable to convert map to JSON");
            }
            str = null;
            return str;
        }
    }

    public static String getAppVersion(Context context) {
        String str = null;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Error retrieving application version");
            return str;
        }
    }

    public static String getApplicationName(Context context) {
        String str = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
        } catch (Exception e) {
            Log.internal(ANALYTICS_LOGGING_TAG, "Error retrieving application name");
            return str;
        }
    }

    public static Object getCountryISO(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(ZBuildConfig.device);
        return telephonyManager.getNetworkCountryIso().equals(AdTrackerConstants.BLANK) ? context.getResources().getConfiguration().locale.getISO3Country() : telephonyManager.getNetworkCountryIso();
    }

    public static float getDeviceDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static String getEventUrl() {
        return AnalyticsInitializer.getConfigParams().getEndPoints().getEventsUrl();
    }

    public static synchronized int getExtraParamsLimit() {
        int extraParamsLimit;
        synchronized (AnalyticsUtils.class) {
            extraParamsLimit = AnalyticsInitializer.getConfigParams().getExtraParamsLimit();
        }
        return extraParamsLimit;
    }

    public static synchronized int getMaxRetryBeforeDiscard() {
        int maxRetryBeforeCacheDiscard;
        synchronized (AnalyticsUtils.class) {
            maxRetryBeforeCacheDiscard = AnalyticsInitializer.getConfigParams().getMaxRetryBeforeCacheDiscard();
        }
        return maxRetryBeforeCacheDiscard;
    }

    public static synchronized long getMaxdbcount() {
        long maxDbEvents;
        synchronized (AnalyticsUtils.class) {
            maxDbEvents = (long) AnalyticsInitializer.getConfigParams().getMaxDbEvents();
        }
        return maxDbEvents;
    }

    public static synchronized String getMaxevents() {
        String str;
        synchronized (AnalyticsUtils.class) {
            str = AnalyticsInitializer.getConfigParams().getGetParamsLimit() + AdTrackerConstants.BLANK;
        }
        return str;
    }

    public static synchronized int getMaxparamskey() {
        int maxKeyLength;
        synchronized (AnalyticsUtils.class) {
            maxKeyLength = AnalyticsInitializer.getConfigParams().getMaxKeyLength();
        }
        return maxKeyLength;
    }

    public static synchronized int getMaxstring() {
        int maxValLength;
        synchronized (AnalyticsUtils.class) {
            maxValLength = AnalyticsInitializer.getConfigParams().getMaxValLength();
        }
        return maxValLength;
    }

    public static String getScreenHeight(Context context) {
        return AdTrackerConstants.BLANK + context.getResources().getDisplayMetrics().heightPixels;
    }

    public static String getScreenWidth(Context context) {
        return AdTrackerConstants.BLANK + context.getResources().getDisplayMetrics().widthPixels;
    }

    public static synchronized boolean getStartHandle() {
        boolean z;
        synchronized (AnalyticsUtils.class) {
            z = b;
        }
        return z;
    }

    public static synchronized long getTimeinterval() {
        long pingInterval;
        synchronized (AnalyticsUtils.class) {
            pingInterval = (long) AnalyticsInitializer.getConfigParams().getPingInterval();
        }
        return pingInterval;
    }

    public static String getWebviewUserAgent() {
        return a;
    }

    public static synchronized void setStartHandle(boolean z) {
        synchronized (AnalyticsUtils.class) {
            b = z;
        }
    }

    public static void setWebviewUserAgent(String str) {
        a = str;
    }
}