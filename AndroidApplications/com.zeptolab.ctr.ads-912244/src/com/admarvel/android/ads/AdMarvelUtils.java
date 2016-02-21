package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.DisplayMetrics;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.a;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.ref.WeakReference;
import java.util.Map;

public class AdMarvelUtils {
    protected static final String ADMARVEL_ADAPTER_GUID = "ADMARVELGUID";
    static final int AD_HISTORY_AD_DUMP_DELAY = 1000;
    static final int AD_HISTORY_REDIRECTED_PAGE_DUMP_DELAY = 3000;
    private static AdmarvelOrientationInfo AdmarvelActivityOrientationInfo = null;
    public static final String PATH = "/data/com.admarvel.android.admarvelcachedads";
    private static Map adMarvelOptionalFlags;
    private static boolean enableLogging;
    private static boolean isLogDumpEnabled;
    private static boolean notificationBarInFullScreenLaunchEnabled;
    private WeakReference contextReference;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.admarvel.android.ads.AdMarvelUtils.AdmarvelOrientationInfo.values().length];
            try {
                a[com.admarvel.android.ads.AdMarvelUtils.AdmarvelOrientationInfo.SCREEN_ORIENTATION_PORTRAIT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.admarvel.android.ads.AdMarvelUtils.AdmarvelOrientationInfo.SCREEN_ORIENTATION_LANDSCAPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[com.admarvel.android.ads.AdMarvelUtils.AdmarvelOrientationInfo.SCREEN_ORIENTATION_REVERSE_LANDSCAPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[com.admarvel.android.ads.AdMarvelUtils.AdmarvelOrientationInfo.SCREEN_ORIENTATION_REVERSE_PORTRAIT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a[com.admarvel.android.ads.AdMarvelUtils.AdmarvelOrientationInfo.SCREEN_ORIENTATION_CURRENT_ACTIVITY.ordinal()] = 5;
        }
    }

    public enum AdMArvelErrorReason {
        SITE_ID_OR_PARTNER_ID_NOT_PRESENT(201),
        SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH(202),
        BOT_USER_AGENT_FOUND(203),
        NO_BANNER_FOUND(204),
        NO_AD_FOUND(205),
        NO_USER_AGENT_FOUND(206),
        SITE_ID_NOT_PRESENT(207),
        PARTNER_ID_NOT_PRESENT(208),
        NO_NETWORK_CONNECTIVITY(301),
        NETWORK_CONNECTIVITY_DISRUPTED(302),
        AD_REQUEST_XML_PARSING_EXCEPTION(303),
        AD_REQUEST_IN_PROCESS_EXCEPTION(304),
        AD_UNIT_NOT_ABLE_TO_RENDER(305),
        AD_REQUEST_MISSING_XML_ELEMENTS(306),
        AD_REQUEST_SDK_TYPE_UNSUPPORTED(307),
        AD_UNIT_NOT_ABLE_TO_LOAD(308);
        private final int a;

        private AdMArvelErrorReason(int i) {
            this.a = i;
        }

        public int getErrorCode() {
            return this.a;
        }
    }

    public enum AdmarvelOrientationInfo {
        SCREEN_ORIENTATION_CURRENT_ACTIVITY,
        SCREEN_ORIENTATION_PORTRAIT,
        SCREEN_ORIENTATION_LANDSCAPE,
        SCREEN_ORIENTATION_REVERSE_LANDSCAPE,
        SCREEN_ORIENTATION_REVERSE_PORTRAIT
    }

    public enum ErrorReason {
        SITE_ID_OR_PARTNER_ID_NOT_PRESENT,
        SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH,
        BOT_USER_AGENT_FOUND,
        NO_BANNER_FOUND,
        NO_AD_FOUND,
        NO_USER_AGENT_FOUND,
        SITE_ID_NOT_PRESENT,
        PARTNER_ID_NOT_PRESENT,
        NO_NETWORK_CONNECTIVITY,
        NETWORK_CONNECTIVITY_DISRUPTED,
        AD_REQUEST_XML_PARSING_EXCEPTION,
        AD_REQUEST_IN_PROCESS_EXCEPTION,
        AD_UNIT_NOT_ABLE_TO_RENDER,
        AD_REQUEST_MISSING_XML_ELEMENTS,
        AD_REQUEST_SDK_TYPE_UNSUPPORTED,
        AD_UNIT_NOT_ABLE_TO_LOAD
    }

    public enum SDKAdNetwork {
        GREYSTRIPE,
        RHYTHM,
        MILLENNIAL,
        ADMARVEL,
        AMAZON,
        ADCOLONY,
        PULSE3D,
        GOOGLEPLAY,
        FACEBOOK,
        INMOBI,
        HEYZAP
    }

    static {
        enableLogging = false;
        isLogDumpEnabled = false;
        notificationBarInFullScreenLaunchEnabled = false;
        AdmarvelActivityOrientationInfo = null;
    }

    public AdMarvelUtils(Context context) {
        this.contextReference = new WeakReference(context);
    }

    public static void appendParams(StringBuilder stringBuilder, String str, String str2) {
        Utils.appendParams(stringBuilder, str, str2);
    }

    public static String captureTargetingParams(Map map, String str) {
        return Utils.captureTargetingParams(map, str);
    }

    public static void disableLogDump() {
        isLogDumpEnabled = false;
    }

    public static void enableLogDump() {
        isLogDumpEnabled = true;
    }

    public static void enableLogging(boolean z) {
        enableLogging = z;
    }

    public static void enableNotificationBarInFullScreenLaunch(boolean z) {
        notificationBarInFullScreenLaunchEnabled = z;
    }

    public static String encodeString(String str) {
        return Utils.encodeString(str);
    }

    public static Map getAdMarvelOptionalFlags() {
        return adMarvelOptionalFlags;
    }

    public static Integer getAdmarvelActivityOrientationInfo(Context context) {
        if (AdmarvelActivityOrientationInfo != null) {
            switch (AnonymousClass_1.a[AdmarvelActivityOrientationInfo.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    return Integer.valueOf(1);
                case GoogleScorer.CLIENT_PLUS:
                    return Integer.valueOf(0);
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                case GoogleScorer.CLIENT_APPSTATE:
                    return Integer.valueOf(ZBuildConfig.$minsdk);
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return Utils.getScreenDefaultOrientation(context);
            }
        }
        return null;
    }

    public static int getAndroidSDKVersion() {
        return Version.getAndroidSDKVersion();
    }

    public static String getDeviceConnectivitiy(Context context) {
        return Utils.getDeviceConnectivitiy(context);
    }

    public static int getDeviceHeight(Context context) {
        return Utils.getDeviceHeight(context);
    }

    public static int getDeviceWidth(Context context) {
        return Utils.getDeviceWidth(context);
    }

    public static int getErrorCode(ErrorReason errorReason) {
        return Utils.getErrorCode(errorReason);
    }

    public static ErrorReason getErrorReason(int i) {
        return Utils.getErrorReason(i);
    }

    public static synchronized boolean getPreferenceValueBoolean(Context context, String str, String str2) {
        boolean z;
        synchronized (AdMarvelUtils.class) {
            z = context.getSharedPreferences(str, 0).getBoolean(str2, false);
        }
        return z;
    }

    public static synchronized int getPreferenceValueInt(Context context, String str, String str2) {
        int i;
        synchronized (AdMarvelUtils.class) {
            i = context.getSharedPreferences(str, 0).getInt(str2, ExploreByTouchHelper.INVALID_ID);
        }
        return i;
    }

    public static synchronized long getPreferenceValueLong(Context context, String str, String str2) {
        long j;
        synchronized (AdMarvelUtils.class) {
            j = context.getSharedPreferences(str, 0).getLong(str2, -2147483648L);
        }
        return j;
    }

    public static synchronized String getPreferenceValueString(Context context, String str, String str2) {
        String string;
        synchronized (AdMarvelUtils.class) {
            string = context.getSharedPreferences(str, 0).getString(str2, "VALUE_NOT_DEFINED");
        }
        return string;
    }

    public static String getSDKVersion() {
        return Version.SDK_VERSION;
    }

    public static String getSDKVersionDate() {
        return Version.SDK_VERSION_DATE;
    }

    public static int getScreenOrientation(Context context) {
        return Utils.getScreenOrientation(context);
    }

    public static String getSupportedInterfaceOrientations(Activity activity) {
        return Utils.getSupportedInterfaceOrientations(activity);
    }

    public static String getUserAgent(Context context, Handler handler) {
        return new Utils(context, handler).getUserAgent();
    }

    public static boolean isLogDumpEnabled() {
        return isLogDumpEnabled;
    }

    public static boolean isLoggingEnabled() {
        return enableLogging;
    }

    public static final boolean isNetworkAvailable(Context context) {
        return Utils.isNetworkAvailable(context);
    }

    public static boolean isNotificationBarInFullScreenLaunchEnabled() {
        return notificationBarInFullScreenLaunchEnabled;
    }

    public static boolean isTabletDevice(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (displayMetrics.widthPixels < 600) {
            return false;
        }
        float f = ((float) displayMetrics.widthPixels) / displayMetrics.xdpi;
        float f2 = ((float) displayMetrics.heightPixels) / displayMetrics.ydpi;
        Double valueOf = Double.valueOf(Math.sqrt((double) (f2 * f2 + f * f)));
        Logging.log("Device Screen Size : " + valueOf);
        return valueOf.doubleValue() > 6.5d;
    }

    public static void lockAdMarvelActivityOrientation(AdmarvelOrientationInfo admarvelOrientationInfo) {
        AdmarvelActivityOrientationInfo = admarvelOrientationInfo;
    }

    public static String reportAdMarvelAdHistory(int i, Context context) {
        String str = AdTrackerConstants.BLANK;
        return (isNetworkAvailable(context) && isLogDumpEnabled) ? a.b(context).a(i) : str;
    }

    public static String reportAdMarvelAdHistory(Context context) {
        String str = AdTrackerConstants.BLANK;
        return (isNetworkAvailable(context) && isLogDumpEnabled) ? a.b(context).a((int)MMException.DISPLAY_AD_NOT_READY) : str;
    }

    public static void setAdMarvelOptionalFlags(Map map) {
        adMarvelOptionalFlags = map;
    }

    public static synchronized AdMarvelAd setAdStatus(AdMarvelAd adMarvelAd, String str) {
        synchronized (AdMarvelUtils.class) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason(str);
        }
        return adMarvelAd;
    }

    public static void setFullScreenloadingTimeout(int i) {
        if (i > 0) {
            Constants.WAIT_FOR_INTERSTITIAL = (long) (i * 1000);
        } else {
            Logging.log("setFullScreenloadingTimeout :- time cannot be less than zero");
        }
    }

    public static synchronized void setPreferenceValueBoolean(Context context, String str, String str2, boolean z) {
        synchronized (AdMarvelUtils.class) {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putBoolean(str2, z);
            edit.commit();
        }
    }

    public static synchronized void setPreferenceValueInt(Context context, String str, String str2, int i) {
        synchronized (AdMarvelUtils.class) {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putInt(str2, i);
            edit.commit();
        }
    }

    public static synchronized void setPreferenceValueLong(Context context, String str, String str2, long j) {
        synchronized (AdMarvelUtils.class) {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putLong(str2, j);
            edit.commit();
        }
    }

    public static synchronized void setPreferenceValueString(Context context, String str, String str2, String str3) {
        synchronized (AdMarvelUtils.class) {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putString(str2, str3);
            edit.commit();
        }
    }

    public void firePixel(AdMarvelAd adMarvelAd) {
        new Utils((Context) this.contextReference.get()).firePixel(adMarvelAd);
    }

    public void firePixel(String str) {
        new Utils((Context) this.contextReference.get()).firePixel(str);
    }

    public void firePixelUsingHTTP(String str) {
        new Utils((Context) this.contextReference.get()).firePixelUsingHTTP(str);
    }

    public void firePixelUsingHTTP(String str, Handler handler) {
        new Utils((Context) this.contextReference.get()).firePixelUsingHTTP(str, handler);
    }

    public String getUserAgent() {
        return new Utils((Context) this.contextReference.get()).getUserAgent();
    }
}