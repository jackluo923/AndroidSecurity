package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Point;
import android.hardware.Camera;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Vibrator;
import android.support.v4.view.GravityCompat;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.OptionalUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.drive.DriveFile;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.vungle.sdk.VunglePub.Gender;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectOutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

public class Utils {
    public static final long FIFTEEN_MIN_MILLISECOND = 900000;
    public static final long FOURTEEN_MIN_MILLISECOND = 840000;
    public static final long ONE_DAY_MILLISECOND = 86400000;
    public static final String VIDEO_CLEANUP_TIMESTAMP_KEY = "adm_video_cleanup_timestamp";
    public static final String VIEWPORT_DATA_KEY = "adm_viewport_data";
    public static final String VIEWPORT_PREFERENCE = "adm_viewport";
    public static final String VIEWPORT_TIMESTAMP_KEY = "adm_viewport_timestamp";
    public static String WEB_VIEW_HTML_DYNAMIC_VIEWPORT;
    public static String dsd;
    public static String mess;
    public static boolean testFlag;
    private WeakReference contextReference;
    private final Handler handler;
    private String mPixelHtml;

    final class AnonymousClass_3 implements Runnable {
        final /* synthetic */ Context a;

        AnonymousClass_3(Context context) {
            this.a = context;
        }

        public void run() {
            int i = 0;
            File dir = this.a.getDir("adm_cache_files", 0);
            if (dir.isDirectory()) {
                try {
                    File[] listFiles = dir.listFiles();
                    int length = listFiles.length;
                    while (i < length) {
                        File file = listFiles[i];
                        if (System.currentTimeMillis() - file.lastModified() > 840000) {
                            file.delete();
                        }
                        i++;
                    }
                } catch (Exception e) {
                }
                AdMarvelUtils.setPreferenceValueLong(this.a, VIEWPORT_PREFERENCE, VIDEO_CLEANUP_TIMESTAMP_KEY, Calendar.getInstance().getTimeInMillis());
            }
        }
    }

    static /* synthetic */ class AnonymousClass_4 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[ErrorReason.values().length];
            try {
                a[ErrorReason.SITE_ID_OR_PARTNER_ID_NOT_PRESENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[ErrorReason.SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[ErrorReason.BOT_USER_AGENT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[ErrorReason.NO_BANNER_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[ErrorReason.NO_AD_FOUND.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[ErrorReason.NO_USER_AGENT_FOUND.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[ErrorReason.SITE_ID_NOT_PRESENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[ErrorReason.PARTNER_ID_NOT_PRESENT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[ErrorReason.NO_NETWORK_CONNECTIVITY.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                a[ErrorReason.NETWORK_CONNECTIVITY_DISRUPTED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                a[ErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                a[ErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                a[ErrorReason.AD_UNIT_NOT_ABLE_TO_RENDER.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                a[ErrorReason.AD_REQUEST_MISSING_XML_ELEMENTS.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                a[ErrorReason.AD_REQUEST_SDK_TYPE_UNSUPPORTED.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            a[ErrorReason.AD_UNIT_NOT_ABLE_TO_LOAD.ordinal()] = 16;
        }
    }

    public enum PROTOCOL_TYPE {
        WITH_SLASH,
        WITHOUT_SLASH,
        NONE
    }

    private static class a implements Runnable {
        private a() {
        }

        public void run() {
            new e().execute(new Object[]{(Object) 0});
        }
    }

    @SuppressLint({"NewApi"})
    private static class b implements Runnable {
        private b() {
        }

        public void run() {
            new e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[]{(Object) 0});
        }
    }

    @SuppressLint({"NewApi"})
    private static class c {
        public static boolean a(Context context, String str) {
            PackageManager packageManager = context.getPackageManager();
            if (str.equals("camera")) {
                return packageManager.hasSystemFeature("android.hardware.camera");
            }
            if (Version.getAndroidSDKVersion() >= 8 && str.equals("location")) {
                return packageManager.hasSystemFeature("android.hardware.location");
            }
            if (str.equals("accelerometer")) {
                return packageManager.hasSystemFeature("android.hardware.sensor.accelerometer");
            }
            if (str.equals("compass")) {
                return packageManager.hasSystemFeature("android.hardware.sensor.compass");
            }
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    private class d extends AsyncTask {
        private String b;

        public d(String str) {
            this.b = str;
        }

        protected Boolean a(Void... voidArr) {
            try {
                Context context = (Context) Utils.this.contextReference.get();
                if (context == null) {
                    return Boolean.valueOf(false);
                }
                if (((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().isConnected()) {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
                    httpURLConnection.setReadTimeout(AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
                    httpURLConnection.setConnectTimeout(AdTrackerConstants.WEBVIEW_NOERROR);
                    httpURLConnection.connect();
                    return httpURLConnection.getResponseCode() == 200 ? Boolean.valueOf(true) : Boolean.valueOf(false);
                }
                return Boolean.valueOf(false);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }
    }

    @SuppressLint({"NewApi"})
    private class e implements Runnable {
        private String b;

        public e(String str) {
            this.b = str;
        }

        public void run() {
            new d(this.b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    static {
        WEB_VIEW_HTML_DYNAMIC_VIEWPORT = AdTrackerConstants.BLANK;
    }

    public Utils(Context context) {
        this.contextReference = new WeakReference(context);
        this.handler = null;
    }

    public Utils(Context context, Handler handler) {
        this.contextReference = new WeakReference(context);
        this.handler = handler;
    }

    public static void appendParams(StringBuilder stringBuilder, String str, String str2) {
        if (stringBuilder != null && str2 != null && str != null) {
            stringBuilder.append("&").append(str).append("=").append(URLEncoder.encode(str2, HTMLEncoder.ENCODE_NAME_DEFAULT));
        }
    }

    public static void blockingFirePixel(Context context, String str) {
        if (str != null && context != null && str.length() > 0) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("<img src=\"").append(str).append("\" />");
            if (stringBuilder != null && stringBuilder.length() > 0) {
                if (!Thread.currentThread().getName().equalsIgnoreCase("main")) {
                    Logging.log("Pixel Fire allowed from main thread only");
                } else if (context != null) {
                    new WebView(context).loadDataWithBaseURL(null, stringBuilder.toString(), WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                }
            }
        }
    }

    public static String captureTargetingParams(Map map, String str) {
        if (map == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            String str3 = map.get(str2) instanceof String ? (String) map.get(str2) : null;
            if (str3 != null && str3.length() > 0) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(str);
                }
                stringBuilder.append(URLEncoder.encode(str2, HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=>").append(URLEncoder.encode(str3, HTMLEncoder.ENCODE_NAME_DEFAULT));
            }
        }
        return stringBuilder.toString();
    }

    public static boolean checkIfPrivateProtocol(String str) {
        return isPrivateProtocol(str, "admarvelsdk") != PROTOCOL_TYPE.NONE || isPrivateProtocol(str, "admarvelinternal") != PROTOCOL_TYPE.NONE || isPrivateProtocol(str, "admarvelvideo") != PROTOCOL_TYPE.NONE || isPrivateProtocol(str, "admarvelexternal") != PROTOCOL_TYPE.NONE || isPrivateProtocol(str, "admarvelcustomvideo") != PROTOCOL_TYPE.NONE;
    }

    public static boolean checkNetworkConnection(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isAvailable() && connectivityManager.getActiveNetworkInfo().isConnected();
    }

    public static void cleanCachedEmebededVideo(Context context) {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        long preferenceValueLong = AdMarvelUtils.getPreferenceValueLong(context, VIEWPORT_PREFERENCE, VIDEO_CLEANUP_TIMESTAMP_KEY);
        if (preferenceValueLong == -2147483648L) {
            preferenceValueLong = 0;
        }
        if (timeInMillis - preferenceValueLong >= 900000) {
            new Thread(new AnonymousClass_3(context)).start();
        }
    }

    static String decodeString(String str) {
        try {
            return new String(com.admarvel.android.util.b.a(URLDecoder.decode(str, HTMLEncoder.ENCODE_NAME_DEFAULT), (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            Logging.log(Log.getStackTraceString(e));
            return AdTrackerConstants.BLANK;
        }
    }

    static String decodeURLString(String str) {
        try {
            return new String(URLDecoder.decode(str, HTMLEncoder.ENCODE_NAME_DEFAULT));
        } catch (UnsupportedEncodingException e) {
            Logging.log(Log.getStackTraceString(e));
            return AdTrackerConstants.BLANK;
        }
    }

    public static boolean detectDeviceForWebViewCrash() {
        return Version.getAndroidSDKVersion() == 16;
    }

    public static int dipValue(float f, Context context) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    static String encodeString(String str) {
        try {
            return URLEncoder.encode(com.admarvel.android.util.b.b(str.getBytes(), IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED), HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (UnsupportedEncodingException e) {
            Logging.log(Log.getStackTraceString(e));
            return AdTrackerConstants.BLANK;
        }
    }

    static String getDeviceConnectivitiy(Context context) {
        if (context == null) {
            throw new NullPointerException();
        } else if (!isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return DeviceInfo.ORIENTATION_UNKNOWN;
        } else {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            if (networkInfo != null && networkInfo.isAvailable()) {
                return "wifi";
            }
            return (networkInfo2 == null || !networkInfo2.isAvailable()) ? "none" : "mobile";
        }
    }

    public static float getDeviceDensity(Context context) {
        WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.density;
    }

    @SuppressLint({"NewApi"})
    public static int getDeviceHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
        if (Version.getAndroidSDKVersion() < 13) {
            return windowManager.getDefaultDisplay().getHeight();
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.y;
    }

    static String getDeviceNetWorkType(Context context) {
        String str = AdTrackerConstants.BLANK;
        if (context == null) {
            return str;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(ZBuildConfig.device);
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return str;
        }
        String str2;
        switch (activeNetworkInfo.getType()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                switch (telephonyManager.getNetworkType()) {
                    case GoogleScorer.CLIENT_GAMES:
                        str2 = "GPRS";
                        break;
                    case GoogleScorer.CLIENT_PLUS:
                        str2 = "EDGE";
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        str2 = "UMTS";
                        break;
                    case GoogleScorer.CLIENT_APPSTATE:
                        str2 = "CDMA";
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                        str2 = "EVDO_0";
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                        str2 = "EVDO_A";
                        break;
                    case GoogleScorer.CLIENT_ALL:
                        str2 = "1xRTT";
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        str2 = "HSDPA";
                        break;
                    case ZBuildConfig.$minsdk:
                        str2 = "HSUPA";
                        break;
                    case R.styleable.MapAttrs_uiZoomControls:
                        str2 = "HSPA";
                        break;
                    case R.styleable.MapAttrs_uiZoomGestures:
                        str2 = "IDEN";
                        break;
                    case R.styleable.MapAttrs_useViewLifecycle:
                        str2 = "EVDO_B";
                        break;
                    case R.styleable.MapAttrs_zOrderOnTop:
                        str2 = "lte";
                        break;
                    case MMException.REQUEST_NOT_FILLED:
                        str2 = "EHRPD";
                        break;
                    case MMException.REQUEST_BAD_RESPONSE:
                        str2 = "HSPAP";
                        break;
                    default:
                        str2 = str;
                        break;
                }
                break;
            case GoogleScorer.CLIENT_GAMES:
                str2 = "wifi";
                break;
            default:
                str2 = str;
                break;
        }
        return str2;
    }

    static String getDeviceNetworkName(Context context) {
        try {
            String str = AdTrackerConstants.BLANK;
            if (context == null) {
                throw new NullPointerException();
            }
            str = ((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getNetworkOperatorName();
            if (str.length() > 0) {
                return str;
            }
            return "unknown-network";
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SuppressLint({"NewApi"})
    public static int getDeviceWidth(Context context) {
        WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
        if (Version.getAndroidSDKVersion() < 13) {
            return windowManager.getDefaultDisplay().getWidth();
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.x;
    }

    public static int getErrorCode(ErrorReason errorReason) {
        switch (AnonymousClass_4.a[errorReason.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return 201;
            case GoogleScorer.CLIENT_PLUS:
                return 202;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return 203;
            case GoogleScorer.CLIENT_APPSTATE:
                return 204;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return 205;
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return 206;
            case GoogleScorer.CLIENT_ALL:
                return 207;
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return 208;
            case ZBuildConfig.$minsdk:
                return 301;
            case R.styleable.MapAttrs_uiZoomControls:
                return 302;
            case R.styleable.MapAttrs_uiZoomGestures:
                return 303;
            case R.styleable.MapAttrs_useViewLifecycle:
                return 304;
            case R.styleable.MapAttrs_zOrderOnTop:
                return 305;
            case MMException.REQUEST_NOT_FILLED:
                return 306;
            case MMException.REQUEST_BAD_RESPONSE:
                return 307;
            case MMException.REQUEST_NOT_PERMITTED:
                return 308;
            default:
                return -1;
        }
    }

    public static ErrorReason getErrorReason(int i) {
        switch (i) {
            case 201:
                return ErrorReason.SITE_ID_OR_PARTNER_ID_NOT_PRESENT;
            case 202:
                return ErrorReason.SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH;
            case 203:
                return ErrorReason.BOT_USER_AGENT_FOUND;
            case 204:
                return ErrorReason.NO_BANNER_FOUND;
            case 205:
                return ErrorReason.NO_AD_FOUND;
            case 206:
                return ErrorReason.NO_USER_AGENT_FOUND;
            case 207:
                return ErrorReason.SITE_ID_NOT_PRESENT;
            case 208:
                return ErrorReason.PARTNER_ID_NOT_PRESENT;
            case 301:
                return ErrorReason.NO_NETWORK_CONNECTIVITY;
            case 302:
                return ErrorReason.NETWORK_CONNECTIVITY_DISRUPTED;
            case 303:
                return ErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION;
            case 304:
                return ErrorReason.AD_REQUEST_IN_PROCESS_EXCEPTION;
            case 305:
                return ErrorReason.AD_UNIT_NOT_ABLE_TO_RENDER;
            case 306:
                return ErrorReason.AD_REQUEST_MISSING_XML_ELEMENTS;
            case 307:
                return ErrorReason.AD_REQUEST_SDK_TYPE_UNSUPPORTED;
            case 308:
                return ErrorReason.AD_UNIT_NOT_ABLE_TO_LOAD;
            default:
                return null;
        }
    }

    public static float getScalingFactor(Context context, int i, int i2) {
        WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return Math.min(displayMetrics.density, ((float) i) / ((float) i2));
    }

    public static Integer getScreenDefaultOrientation(Context context) {
        if (context == null) {
            return null;
        }
        return getScreenOrientation(context) == 1 ? Integer.valueOf(1) : Integer.valueOf(0);
    }

    static int getScreenOrientation(Context context) {
        if (context == null) {
            throw new NullPointerException();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        return defaultDisplay.getWidth() > defaultDisplay.getHeight() ? GoogleScorer.CLIENT_PLUS : 1;
    }

    public static String getSupportedInterfaceOrientations(Activity activity) {
        int requestedOrientation = activity.getRequestedOrientation();
        String str = AdTrackerConstants.BLANK;
        if (Version.getAndroidSDKVersion() < 9) {
            switch (requestedOrientation) {
                case Gender.UNKNOWN:
                    return "0,90";
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    return "90";
                case GoogleScorer.CLIENT_GAMES:
                    return "0";
                case GoogleScorer.CLIENT_PLUS:
                    return "0,90";
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return "0,90";
                case GoogleScorer.CLIENT_APPSTATE:
                    return "0,90";
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return "0";
                default:
                    return "0";
            }
        } else {
            switch (requestedOrientation) {
                case Gender.UNKNOWN:
                    return "0,-90,90";
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    return "90";
                case GoogleScorer.CLIENT_GAMES:
                    return "0";
                case GoogleScorer.CLIENT_PLUS:
                    return "0,90,-90";
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return "0,90,-90";
                case GoogleScorer.CLIENT_APPSTATE:
                    return "0,-90,90";
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return "0";
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    return "90,-90";
                case GoogleScorer.CLIENT_ALL:
                    return "180,-180";
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    return "-90";
                case ZBuildConfig.$minsdk:
                    return "180";
                case R.styleable.MapAttrs_uiZoomControls:
                    return "0,-90,90,180";
                default:
                    return str;
            }
        }
    }

    static String getUniqueId(Context context, Map map, String str) {
        return str != null ? str : OptionalUtils.getId(context);
    }

    public static String getUserAgentApprox() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = VERSION.RELEASE;
        if (str.length() > 0) {
            stringBuffer.append(str);
        } else {
            stringBuffer.append("1.0");
        }
        stringBuffer.append("; ");
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (language != null) {
            stringBuffer.append(language.toLowerCase());
            str = locale.getCountry();
            if (str != null) {
                stringBuffer.append("-");
                stringBuffer.append(str.toLowerCase());
            }
        } else {
            stringBuffer.append("en");
        }
        str = Build.MODEL;
        if (str.length() > 0) {
            stringBuffer.append("; ");
            stringBuffer.append(str);
        }
        str = Build.ID;
        if (str.length() > 0) {
            stringBuffer.append(" Build/");
            stringBuffer.append(str);
        }
        str = "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2";
        return String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2", new Object[]{stringBuffer});
    }

    public static void getViewPort(Context context) {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        long preferenceValueLong = AdMarvelUtils.getPreferenceValueLong(context, VIEWPORT_PREFERENCE, VIEWPORT_TIMESTAMP_KEY);
        if (preferenceValueLong == -2147483648L) {
            preferenceValueLong = 0;
        }
        if (timeInMillis - preferenceValueLong >= 86400000) {
            StringBuilder stringBuilder = new StringBuilder();
            try {
                InputStream inputStream = new URL(Constants.DYNAMIC_VIEWPORT_JS_URL).openConnection().getInputStream();
                String str = AdTrackerConstants.BLANK;
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuilder.append(readLine);
                }
                bufferedReader.close();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            AdMarvelUtils.setPreferenceValueString(context, VIEWPORT_PREFERENCE, VIEWPORT_DATA_KEY, stringBuilder.toString());
            AdMarvelUtils.setPreferenceValueLong(context, VIEWPORT_PREFERENCE, VIEWPORT_TIMESTAMP_KEY, Calendar.getInstance().getTimeInMillis());
        }
        WEB_VIEW_HTML_DYNAMIC_VIEWPORT = AdMarvelUtils.getPreferenceValueString(context, VIEWPORT_PREFERENCE, VIEWPORT_DATA_KEY);
        if (WEB_VIEW_HTML_DYNAMIC_VIEWPORT.equals("VALUE_NOT_DEFINED")) {
            Logging.log("Viewport data fetch failed - Setting blank string");
            WEB_VIEW_HTML_DYNAMIC_VIEWPORT = AdTrackerConstants.BLANK;
        }
    }

    public static boolean handledBySpecialIntents(Context context, String str, boolean z) {
        boolean z2 = false;
        try {
            Uri parse;
            String str2;
            Intent intent;
            Intent intent2;
            if ((AdMarvelView.b || AdMarvelInterstitialAds.enableOfflineSDK) && str != null && str.contains("/") && !URLUtil.isNetworkUrl(str)) {
                String substring = str.substring(str.lastIndexOf("/") + 1);
                if (isSms(substring)) {
                    parse = Uri.parse(substring);
                    Intent intent3;
                    if (Version.getAndroidSDKVersion() > 18) {
                        str2 = null;
                        if (str.contains("?body=")) {
                            str2 = URLDecoder.decode(str.split("\\?body=")[1]);
                        }
                        intent3 = new Intent("android.intent.action.SENDTO", Uri.parse(str));
                        if (str2 != null && str2.trim().length() > 0) {
                            intent3.putExtra("sms_body", str2);
                        }
                        if (isIntentAvailable(context, intent3)) {
                            context.startActivity(intent3);
                            return true;
                        }
                    } else {
                        intent3 = new Intent("android.intent.action.VIEW");
                        if (str.contains("?body=")) {
                            String[] split = str.split("\\?body=");
                            intent3.putExtra("address", URLDecoder.decode(split[0]).substring(GoogleScorer.CLIENT_APPSTATE));
                            intent3.putExtra("sms_body", URLDecoder.decode(split[1]));
                        } else {
                            intent3.putExtra("address", parse.toString().substring(GoogleScorer.CLIENT_APPSTATE));
                        }
                        intent3.setType("vnd.android-dir/mms-sms");
                        intent3.addFlags(DriveFile.MODE_READ_ONLY);
                        if (z) {
                            intent3.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                        }
                        if (isIntentAvailable(context, intent3)) {
                            context.startActivity(intent3);
                            return true;
                        }
                    }
                } else if (isDailer(substring)) {
                    intent = new Intent("android.intent.action.DIAL", Uri.parse(substring));
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    if (z) {
                        intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                    }
                    if (isIntentAvailable(context, intent)) {
                        context.startActivity(intent);
                        return true;
                    }
                }
                try {
                    FileInputStream readFile = readFile(str);
                    if (readFile == null || substring == null) {
                        if (isVideoLinkOffline(str) || isPDFOffline(str) || isAudioLinkOffline(str)) {
                            Logging.log(" ");
                            return true;
                        }
                    } else if (isVideoLinkOffline(str)) {
                        str2 = writeFileToSDCard(readFile, substring);
                        if (str2 != null) {
                            intent2 = new Intent("android.intent.action.VIEW");
                            intent2.addFlags(DriveFile.MODE_READ_ONLY);
                            if (z) {
                                intent2.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                            }
                            intent2.setDataAndType(Uri.fromFile(new File(str2)), "video/*");
                            if (!isIntentAvailable(context, intent2)) {
                                return true;
                            }
                            context.startActivity(intent2);
                            return true;
                        }
                    } else if (isAudioLinkOffline(str)) {
                        str2 = writeFileToSDCard(readFile, substring);
                        if (str2 != null) {
                            intent2 = new Intent("android.intent.action.VIEW");
                            intent2.addFlags(DriveFile.MODE_READ_ONLY);
                            if (z) {
                                intent2.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                            }
                            intent2.setDataAndType(Uri.fromFile(new File(str2)), "audio/*");
                            if (!isIntentAvailable(context, intent2)) {
                                return true;
                            }
                            context.startActivity(intent2);
                            return true;
                        }
                    } else if (isPDFOffline(str)) {
                        str2 = writeFileToSDCard(readFile, substring);
                        if (str2 == null) {
                            return true;
                        }
                        intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                        intent2.setDataAndType(Uri.fromFile(new File(str2)), "application/pdf");
                        intent2.setFlags(DriveFile.MODE_READ_ONLY);
                        if (z) {
                            intent2.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                        }
                        if (isIntentAvailable(context, intent2)) {
                            context.startActivity(intent2);
                            return true;
                        } else {
                            intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            if (z) {
                                intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                            }
                            if (!isIntentAvailable(context, intent)) {
                                return true;
                            }
                            context.startActivity(intent);
                            return true;
                        }
                    }
                } catch (Exception e) {
                    if (isVideoLinkOffline(str) || isPDFOffline(str) || isAudioLinkOffline(str)) {
                        Logging.log(" ");
                        return true;
                    }
                }
            }
            if (str != null) {
                if (str.length() > 0) {
                    str = str.replace("content://" + context.getPackageName() + ".AdMarvelLocalFileContentProvider", AdTrackerConstants.BLANK);
                }
            }
            try {
                if (isNetworkAvailable(context) && isVideoLink(str)) {
                    intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    if (z) {
                        intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                    }
                    intent.setDataAndType(Uri.parse(str), "video/*");
                    if (isIntentAvailable(context, intent)) {
                        context.startActivity(intent);
                        return true;
                    }
                    return z2;
                } else if (isNetworkAvailable(context) && isAudioLink(str)) {
                    intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    if (z) {
                        intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                    }
                    intent.setDataAndType(Uri.parse(str), "audio/*");
                    if (isIntentAvailable(context, intent)) {
                        context.startActivity(intent);
                        return true;
                    }
                    return z2;
                } else if (isNetworkAvailable(context) && isPDF(str)) {
                    intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent.setDataAndType(Uri.parse(str), "application/pdf");
                    intent.setFlags(DriveFile.MODE_READ_ONLY);
                    if (z) {
                        intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                    }
                    if (isIntentAvailable(context, intent)) {
                        context.startActivity(intent);
                        return true;
                    } else {
                        intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        if (!isIntentAvailable(context, intent)) {
                            return true;
                        }
                        context.startActivity(intent);
                        return true;
                    }
                } else {
                    if (isSms(str)) {
                        if (Version.getAndroidSDKVersion() >= 19) {
                            str2 = null;
                            if (str.contains("?body=")) {
                                str2 = URLDecoder.decode(str.split("\\?body=")[1]);
                            }
                            intent2 = new Intent("android.intent.action.SENDTO", Uri.parse(str));
                            if (str2 != null && str2.trim().length() > 0) {
                                intent2.putExtra("sms_body", str2);
                            }
                            if (isIntentAvailable(context, intent2)) {
                                context.startActivity(intent2);
                                return true;
                            }
                        } else {
                            parse = Uri.parse(str);
                            intent2 = new Intent("android.intent.action.VIEW");
                            if (str.contains("?body=")) {
                                split = str.split("\\?body=");
                                intent2.putExtra("address", URLDecoder.decode(split[0]).substring(GoogleScorer.CLIENT_APPSTATE));
                                intent2.putExtra("sms_body", URLDecoder.decode(split[1]));
                            } else {
                                intent2.putExtra("address", parse.toString().substring(GoogleScorer.CLIENT_APPSTATE));
                            }
                            intent2.setType("vnd.android-dir/mms-sms");
                            intent2.addFlags(DriveFile.MODE_READ_ONLY);
                            if (z) {
                                intent2.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                            }
                            if (isIntentAvailable(context, intent2)) {
                                context.startActivity(intent2);
                                return true;
                            }
                        }
                    } else if (isDailer(str)) {
                        intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        if (z) {
                            intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                        }
                        if (isIntentAvailable(context, intent)) {
                            context.startActivity(intent);
                            return true;
                        }
                    } else if (isGoogleMaps(str) || isGoogleStreetView(str) || isMarket(str) || isVZWMarket(str) || isEmail(str)) {
                        intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        if (z) {
                            intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                        }
                        if (isIntentAvailable(context, intent)) {
                            context.startActivity(intent);
                            return true;
                        }
                    }
                    return z2;
                }
            } catch (ActivityNotFoundException e2) {
                Logging.log(" ActivityNotFoundException");
                testFlag = checkIfPrivateProtocol(str);
                if ((AdMarvelView.b || AdMarvelInterstitialAds.enableOfflineSDK) && !testFlag) {
                    return true;
                }
            }
        } catch (Exception e3) {
            Logging.log(" Exception in handling special intents");
            return z2;
        }
    }

    static boolean isAppInstalled(Context context, String str) {
        try {
            context.getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    private static boolean isAudioLink(String str) {
        if (str == null || str.length() <= 0) {
            return false;
        }
        if (!str.toLowerCase().endsWith(".flac") && !str.toLowerCase().endsWith(".mp3") && !str.toLowerCase().endsWith(".mid") && !str.toLowerCase().endsWith(".xmf") && !str.toLowerCase().endsWith(".mxmf") && !str.toLowerCase().endsWith(".rtttl") && !str.toLowerCase().endsWith(".rtx") && !str.toLowerCase().endsWith(".ota") && !str.toLowerCase().endsWith(".imy")) {
            return false;
        }
        try {
            String path = new URL(str).getPath();
            if (path == null || path.length() <= 0) {
                return false;
            }
            return path.toLowerCase().endsWith(".flac") || path.toLowerCase().endsWith(".mp3") || path.toLowerCase().endsWith(".mid") || path.toLowerCase().endsWith(".xmf") || path.toLowerCase().endsWith(".mxmf") || path.toLowerCase().endsWith(".rtttl") || path.toLowerCase().endsWith(".rtx") || path.toLowerCase().endsWith(".ota") || path.toLowerCase().endsWith(".imy");
        } catch (MalformedURLException e) {
            return false;
        }
    }

    private static boolean isAudioLinkOffline(String str) {
        return str != null && str.length() > 0 && (str.toLowerCase().endsWith(".flac") || str.toLowerCase().endsWith(".mp3") || str.toLowerCase().endsWith(".mid") || str.toLowerCase().endsWith(".xmf") || str.toLowerCase().endsWith(".mxmf") || str.toLowerCase().endsWith(".rtttl") || str.toLowerCase().endsWith(".rtx") || str.toLowerCase().endsWith(".ota") || str.toLowerCase().endsWith(".imy"));
    }

    private static boolean isDailer(String str) {
        return str != null && str.length() > 0 && (str.toLowerCase().startsWith("tel:") || str.toLowerCase().startsWith("voicemail:"));
    }

    private static boolean isEmail(String str) {
        return str != null && str.length() > 0 && str.toLowerCase().startsWith("mailto:");
    }

    public static boolean isFeatureSupported(Context context, String str) {
        Boolean valueOf = Boolean.valueOf(false);
        if (Version.getAndroidSDKVersion() >= 7 && str.equals("camera")) {
            return Boolean.valueOf(c.a(context, str)).booleanValue();
        }
        if (Version.getAndroidSDKVersion() >= 8) {
            return Boolean.valueOf(c.a(context, str)).booleanValue();
        }
        if (str.equals("camera")) {
            Camera camera = null;
            try {
                camera = Camera.open();
            } catch (RuntimeException e) {
            }
            valueOf = camera != null ? Boolean.valueOf(true) : valueOf;
        } else if (str.equals("location")) {
            if (((LocationManager) context.getSystemService("location")) != null) {
                valueOf = Boolean.valueOf(true);
            }
        } else if (str.equals("accelerometer")) {
            if (k.a().a(context)) {
                valueOf = Boolean.valueOf(true);
            }
        } else if (str.equals("compass") && k.a().b(context)) {
            valueOf = Boolean.valueOf(true);
        }
        return valueOf.booleanValue();
    }

    private static boolean isGoogleMaps(String str) {
        return str != null && str.length() > 0 && str.toLowerCase().startsWith("geo:");
    }

    private static boolean isGoogleStreetView(String str) {
        return str != null && str.length() > 0 && str.toLowerCase().startsWith("google.streetview:");
    }

    public static boolean isIntentAvailable(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, Cast.MAX_MESSAGE_LENGTH).size() > 0;
    }

    private static boolean isMarket(String str) {
        return str != null && str.length() > 0 && str.toLowerCase().startsWith("market://");
    }

    public static boolean isMediaVolumeOff(Context context) {
        boolean z;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        z = audioManager.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) == 0 ? true : 0;
        if (!z) {
            int ringerMode = audioManager.getRingerMode();
            if (ringerMode == 0 || ringerMode == 1) {
                return true;
            }
        }
        return z;
    }

    public static final boolean isNetworkAvailable(Context context) {
        if (isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isAvailable() && connectivityManager.getActiveNetworkInfo().isConnected()) {
                return true;
            }
        }
        return false;
    }

    static boolean isNoLink(String str) {
        return str != null && str.length() > 0 && (str.equals("admarvelsdk://noclick") || str.equals("admarvelsdk://nothing"));
    }

    private static boolean isPDF(String str) {
        if (str == null || str.length() <= 0) {
            return false;
        }
        if (!str.toLowerCase().endsWith(".pdf") && !str.toLowerCase().endsWith(".pdf")) {
            return false;
        }
        try {
            String path = new URL(str).getPath();
            if (path == null || path.length() <= 0) {
                return false;
            }
            return path.toLowerCase().endsWith(".pdf") || path.toLowerCase().endsWith(".pdf");
        } catch (MalformedURLException e) {
            return false;
        }
    }

    private static boolean isPDFOffline(String str) {
        return str != null && str.length() > 0 && (str.toLowerCase().endsWith(".pdf") || str.toLowerCase().endsWith(".pdf"));
    }

    public static boolean isPermissionGranted(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static PROTOCOL_TYPE isPrivateProtocol(String str, String str2) {
        if (str.startsWith(str2 + "://")) {
            return PROTOCOL_TYPE.WITH_SLASH;
        }
        return str.startsWith(str2) ? PROTOCOL_TYPE.WITHOUT_SLASH : PROTOCOL_TYPE.NONE;
    }

    private static boolean isSms(String str) {
        return str != null && str.length() > 0 && str.toLowerCase().startsWith("sms:");
    }

    public static boolean isTelephonySupported(Context context) {
        return ((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getPhoneType() != 0;
    }

    private static boolean isVZWMarket(String str) {
        return str != null && str.length() > 0 && str.toLowerCase().startsWith("vzw://");
    }

    private static boolean isVideoLink(String str) {
        if (str == null || str.length() <= 0) {
            return false;
        }
        if (!str.toLowerCase().endsWith(".mp4") && !str.toLowerCase().endsWith(".3gp")) {
            return false;
        }
        try {
            String path = new URL(str).getPath();
            if (path == null || path.length() <= 0) {
                return false;
            }
            return path.toLowerCase().endsWith(".mp4") || path.toLowerCase().endsWith(".3gp");
        } catch (MalformedURLException e) {
            return false;
        }
    }

    private static boolean isVideoLinkOffline(String str) {
        return str != null && str.length() > 0 && (str.toLowerCase().endsWith(".mp4") || str.toLowerCase().endsWith(".3gp"));
    }

    public static String parsePrivateProtocol(String str, String str2, String str3, PROTOCOL_TYPE protocol_type, Context context) {
        if (str != null && str.length() > 0) {
            str = str.replace("content://" + context.getPackageName() + ".AdMarvelLocalFileContentProvider", AdTrackerConstants.BLANK);
        }
        if (protocol_type == PROTOCOL_TYPE.WITH_SLASH) {
            return str.replaceFirst(str2 + "://", str3);
        }
        return protocol_type == PROTOCOL_TYPE.WITHOUT_SLASH ? str.replaceFirst(str2, str3) : null;
    }

    public static FileInputStream readFile(String str) {
        str.substring(0, str.lastIndexOf("/"));
        str.substring(str.lastIndexOf("/") + 1);
        try {
            return new FileInputStream(new File(str));
        } catch (FileNotFoundException e) {
            Logging.log("read file" + e.getMessage());
            return null;
        } catch (NullPointerException e2) {
            Logging.log("read file" + e2.getMessage());
            return null;
        } catch (Exception e3) {
            Logging.log("read file" + e3.getMessage());
            return null;
        }
    }

    static String redirectURLCheck(String str, Context context) {
        if (str == null || str.length() <= 0) {
            return str;
        }
        String str2 = str;
        while (true) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty("User-Agent", new Utils(context).getUserAgent());
                httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                httpURLConnection.setRequestProperty("Content-Length", "0");
                httpURLConnection.setConnectTimeout(4000);
                httpURLConnection.setReadTimeout(AdTrackerConstants.WEBVIEW_NOERROR);
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 301 || responseCode == 302) {
                    str2 = httpURLConnection.getHeaderField("Location");
                } else if (str2 == null || str2.length() <= 0) {
                    return str;
                } else {
                    return str2;
                }
            } catch (Exception e) {
            }
        }
    }

    public static boolean vibrate(Context context, int i) {
        if (context != null) {
            try {
                if (isPermissionGranted(context, "android.permission.VIBRATE")) {
                    ((Vibrator) context.getSystemService("vibrator")).vibrate((long) i);
                }
            } catch (Exception e) {
                return false;
            }
        }
        return true;
    }

    public static boolean vibrate(Context context, long[] jArr, int i) {
        if (context != null) {
            try {
                if (isPermissionGranted(context, "android.permission.VIBRATE")) {
                    ((Vibrator) context.getSystemService("vibrator")).vibrate(jArr, i);
                }
            } catch (Exception e) {
                return false;
            }
        }
        return true;
    }

    public static String writeFileToSDCard(FileInputStream fileInputStream, String str) {
        File file = new File(Environment.getExternalStorageDirectory() + "/" + ".admfiles");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file.getAbsolutePath() + "/" + str);
        if (!file2.exists()) {
            byte[] bArr = new byte[16384];
            try {
                file2.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return file2.getAbsolutePath();
    }

    public void firePixel(AdMarvelAd adMarvelAd) {
        StringBuilder stringBuilder = new StringBuilder();
        if (!(adMarvelAd == null || adMarvelAd.getPixels() == null)) {
            Iterator it = adMarvelAd.getPixels().iterator();
            while (it.hasNext()) {
                stringBuilder.append("<img src=\"").append((String) it.next()).append("\" />");
            }
        }
        if (stringBuilder != null && stringBuilder.length() > 0) {
            if (!Thread.currentThread().getName().equalsIgnoreCase("main")) {
                this.mPixelHtml = stringBuilder.toString();
                this.handler.post(new Runnable() {
                    public void run() {
                        if (Utils.this.contextReference != null) {
                            Context context = (Context) Utils.this.contextReference.get();
                            if (context != null) {
                                new WebView(context).loadDataWithBaseURL(null, Utils.this.mPixelHtml, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                            }
                        }
                    }
                });
            } else if (this.contextReference != null) {
                Context context = (Context) this.contextReference.get();
                if (context != null) {
                    new WebView(context).loadDataWithBaseURL(null, stringBuilder.toString(), WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                }
            }
        }
    }

    public void firePixel(String str) {
        if (str != null && str.length() > 0) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("<img src=\"").append(str).append("\" />");
            if (stringBuilder != null && stringBuilder.length() > 0) {
                if (!Thread.currentThread().getName().equalsIgnoreCase("main")) {
                    this.mPixelHtml = stringBuilder.toString();
                    this.handler.post(new Runnable() {
                        public void run() {
                            if (Utils.this.contextReference != null) {
                                Context context = (Context) Utils.this.contextReference.get();
                                if (context != null) {
                                    new WebView(context).loadDataWithBaseURL(null, Utils.this.mPixelHtml, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                                }
                            }
                        }
                    });
                } else if (this.contextReference != null) {
                    Context context = (Context) this.contextReference.get();
                    if (context != null) {
                        new WebView(context).loadDataWithBaseURL(null, stringBuilder.toString(), WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                    }
                }
            }
        }
    }

    public void firePixelUsingHTTP(String str) {
        try {
            if (Version.getAndroidSDKVersion() >= 11) {
                new Thread(new e(str)).start();
            } else {
                new d(str).execute(new Void[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void firePixelUsingHTTP(String str, Handler handler) {
        try {
            if (Version.getAndroidSDKVersion() < 11 || handler == null) {
                new d(str).execute(new Void[0]);
            } else {
                handler.post(new e(str));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SuppressLint({"NewApi"})
    public String getUserAgent() {
        Context context;
        try {
            if (this.contextReference == null || ((Context) this.contextReference.get()) == null) {
                return getUserAgentApprox();
            }
            Constructor declaredConstructor = WebSettings.class.getDeclaredConstructor(new Class[]{Context.class, WebView.class});
            declaredConstructor.setAccessible(true);
            String userAgentString = ((WebSettings) declaredConstructor.newInstance(new Object[]{context.getApplicationContext(), null})).getUserAgentString();
            declaredConstructor.setAccessible(false);
            return userAgentString;
        } catch (Exception e) {
            if (Thread.currentThread().getName().equalsIgnoreCase("main") && this.contextReference != null) {
                context = (Context) this.contextReference.get();
                if (context != null) {
                    return new WebView(context).getSettings().getUserAgentString();
                }
            }
            return getUserAgentApprox();
        }
    }

    void registerTrackingEvent(String str) {
        Throwable th;
        if (str != null) {
            String str2;
            ArrayList arrayList;
            try {
                if (Version.getAndroidSDKVersion() >= 11) {
                    this.handler.post(new b());
                } else {
                    this.handler.post(new a());
                }
                AdMarvelXMLReader adMarvelXMLReader = new AdMarvelXMLReader();
                adMarvelXMLReader.parseXMLString(str);
                AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
                if (parsedXMLData.getChildren().containsKey(Constants.NATIVE_AD_TRACKERS_ELEMENT)) {
                    parsedXMLData = (AdMarvelXMLElement) ((ArrayList) parsedXMLData.getChildren().get(Constants.NATIVE_AD_TRACKERS_ELEMENT)).get(0);
                    str2 = (String) parsedXMLData.getAttributes().get(AnalyticsEvent.EVENT_ID);
                    try {
                        if (parsedXMLData.getChildren().containsKey(Constants.NATIVE_AD_TRACKER_ELEMENT)) {
                            int size = ((ArrayList) parsedXMLData.getChildren().get(Constants.NATIVE_AD_TRACKER_ELEMENT)).size();
                            int i = 0;
                            arrayList = null;
                            while (i < size) {
                                try {
                                    ArrayList arrayList2;
                                    AdMarvelXMLElement adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) parsedXMLData.getChildren().get(Constants.NATIVE_AD_TRACKER_ELEMENT)).get(i);
                                    if (adMarvelXMLElement != null) {
                                        String data = adMarvelXMLElement.getData();
                                        arrayList2 = arrayList == null ? new ArrayList() : arrayList;
                                        try {
                                            arrayList2.add(data);
                                        } catch (Exception e) {
                                            th = e;
                                            arrayList = arrayList2;
                                        }
                                    } else {
                                        arrayList2 = arrayList;
                                    }
                                    i++;
                                    arrayList = arrayList2;
                                } catch (Exception e2) {
                                    th = e2;
                                }
                            }
                        } else {
                            arrayList = null;
                        }
                    } catch (Exception e3) {
                        th = e3;
                        arrayList = null;
                        Logging.log(Log.getStackTraceString(th));
                    }
                } else {
                    arrayList = null;
                    str2 = null;
                }
            } catch (Exception e4) {
                th = e4;
                arrayList = null;
                str2 = null;
                Logging.log(Log.getStackTraceString(th));
            }
            if (str2 != null && str2.length() > 0) {
                Context context;
                context = this.contextReference != null ? (Context) this.contextReference.get() : null;
                if (context != null && !isAppInstalled(context, str2) && arrayList != null) {
                    try {
                        if (!arrayList.isEmpty()) {
                            if ("mounted".equals(Environment.getExternalStorageState())) {
                                File file = new File(Environment.getExternalStorageDirectory(), "/" + encodeString("adm_tracker_dir") + "/" + encodeString(str2));
                                file.getParentFile().mkdirs();
                                ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
                                objectOutputStream.writeObject(arrayList);
                                objectOutputStream.close();
                            }
                        }
                    } catch (Exception e5) {
                        Logging.log(Log.getStackTraceString(e5));
                    }
                }
            }
        }
    }
}