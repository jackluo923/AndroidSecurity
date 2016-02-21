package com.millennialmedia.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;
import org.apache.http.conn.util.InetAddressUtils;

public final class MMSDK {
    public static final String DEFAULT_APID = "28911";
    public static final String DEFAULT_BANNER_APID = "28913";
    public static final String DEFAULT_RECT_APID = "28914";
    public static final int LOG_LEVEL_DEBUG = 1;
    public static final int LOG_LEVEL_ERROR = 0;
    public static final int LOG_LEVEL_INFO = 2;
    @Deprecated
    public static final int LOG_LEVEL_INTERNAL = 4;
    @Deprecated
    public static final int LOG_LEVEL_PRIVATE_VERBOSE = 5;
    public static final int LOG_LEVEL_VERBOSE = 3;
    public static final String SDKLOG = "MMSDK";
    public static final String VERSION = "5.3.0-c3980670.a";
    static int a = 0;
    @Deprecated
    static boolean b = false;
    static final String c = "MillennialMediaSettings";
    static final String d = "yyyy-MM-dd HH:mm:ss ZZZZ";
    static final int e = 600;
    static final int f = 400;
    static final int g = 10000;
    static final int h = 30000;
    static final int i = 3000;
    static final String j = "";
    static String k = null;
    static Handler l = null;
    static String m = null;
    private static boolean n = false;
    private static int o = 0;
    private static final String p = "http://ads.mp.mydas.mobi/pixel?id=";
    private static String q;
    private static boolean r;

    final class AnonymousClass_2 extends Iterator {
        final /* synthetic */ Context a;

        AnonymousClass_2(Context context) {
            this.a = context;
        }

        boolean a(CachedAd cachedAd) {
            String str = SDKLOG;
            String str2 = "%s %s is %son disk. Is %sexpired.";
            Object[] objArr = new Object[4];
            objArr[0] = cachedAd.d();
            objArr[1] = cachedAd.e();
            objArr[2] = cachedAd.d(this.a) ? j : "not ";
            objArr[3] = cachedAd.a() ? j : "not ";
            MMLog.c(str, String.format(str2, objArr));
            return true;
        }
    }

    static class Event {
        public static final String INTENT_CALENDAR_EVENT = "calendar";
        public static final String INTENT_EMAIL = "email";
        public static final String INTENT_EXTERNAL_BROWSER = "browser";
        public static final String INTENT_MAPS = "geo";
        public static final String INTENT_MARKET = "market";
        public static final String INTENT_PHONE_CALL = "tel";
        public static final String INTENT_STREAMING_VIDEO = "streamingVideo";
        public static final String INTENT_TXT_MESSAGE = "sms";
        static final String a = "packageName";
        static final String b = "internalId";
        static final String c = "intentType";
        protected static final String d;
        private static final String e = "error";

        final class AnonymousClass_1 implements Runnable {
            final /* synthetic */ String a;

            AnonymousClass_1(String str) {
                this.a = str;
            }

            public void run() {
                try {
                    new HttpGetRequest().a(this.a);
                } catch (Exception e) {
                    MMLog.e(d, "Error logging event: ", e);
                }
            }
        }

        final class AnonymousClass_2 implements Runnable {
            final /* synthetic */ MMAdImpl a;

            AnonymousClass_2(MMAdImpl mMAdImpl) {
                this.a = mMAdImpl;
            }

            public void run() {
                if (this.a != null && this.a.e != null) {
                    try {
                        this.a.e.onSingleTap(this.a.d());
                    } catch (Exception e) {
                        MMLog.e(SDKLOG, "Exception raised in your RequestListener: ", e);
                    }
                }
            }
        }

        final class AnonymousClass_3 implements Runnable {
            final /* synthetic */ MMAdImpl a;

            AnonymousClass_3(MMAdImpl mMAdImpl) {
                this.a = mMAdImpl;
            }

            public void run() {
                if (this.a != null && this.a.e != null) {
                    try {
                        this.a.e.MMAdRequestIsCaching(this.a.d());
                    } catch (Exception e) {
                        MMLog.e(SDKLOG, "Exception raised in your RequestListener: ", e);
                    }
                }
            }
        }

        final class AnonymousClass_4 implements Runnable {
            final /* synthetic */ MMAdImpl a;

            AnonymousClass_4(MMAdImpl mMAdImpl) {
                this.a = mMAdImpl;
            }

            public void run() {
                if (this.a != null && this.a.e != null) {
                    try {
                        this.a.e.MMAdOverlayLaunched(this.a.d());
                    } catch (Exception e) {
                        MMLog.e(SDKLOG, "Exception raised in your RequestListener: ", e);
                    }
                }
            }
        }

        final class AnonymousClass_5 implements Runnable {
            final /* synthetic */ MMAdImpl a;

            AnonymousClass_5(MMAdImpl mMAdImpl) {
                this.a = mMAdImpl;
            }

            public void run() {
                if (this.a != null && this.a.e != null) {
                    try {
                        this.a.e.MMAdOverlayClosed(this.a.d());
                    } catch (Exception e) {
                        MMLog.e(SDKLOG, "Exception raised in your RequestListener: ", e);
                    }
                }
            }
        }

        final class AnonymousClass_6 implements Runnable {
            final /* synthetic */ MMAdImpl a;

            AnonymousClass_6(MMAdImpl mMAdImpl) {
                this.a = mMAdImpl;
            }

            public void run() {
                if (this.a != null && this.a.e != null) {
                    try {
                        this.a.e.requestCompleted(this.a.d());
                    } catch (Exception e) {
                        MMLog.e(SDKLOG, "Exception raised in your RequestListener: ", e);
                    }
                }
            }
        }

        final class AnonymousClass_7 implements Runnable {
            final /* synthetic */ MMAdImpl a;
            final /* synthetic */ MMException b;

            AnonymousClass_7(MMAdImpl mMAdImpl, MMException mMException) {
                this.a = mMAdImpl;
                this.b = mMException;
            }

            public void run() {
                if (this.a != null && this.a.e != null) {
                    try {
                        this.a.e.requestFailed(this.a.d(), this.b);
                    } catch (Exception e) {
                        MMLog.e(SDKLOG, "Exception raised in your RequestListener: ", e);
                    }
                }
            }
        }

        static {
            d = Event.class.getName();
        }

        Event() {
        }

        static void a(Context context, long j) {
            if (n) {
                a(context, new Intent(MMBroadcastReceiver.ACTION_OVERLAY_OPENED), j);
            }
        }

        private static final void a(Context context, Intent intent, long j) {
            if (context != null) {
                String str;
                intent.addCategory(MMBroadcastReceiver.CATEGORY_SDK);
                if (j != -4) {
                    intent.putExtra(b, j);
                }
                intent.putExtra(a, context.getPackageName());
                if (TextUtils.isEmpty(intent.getStringExtra(c))) {
                    str = j;
                } else {
                    str = String.format(" Type[%s]", new Object[]{charSequence});
                }
                MMLog.a(SDKLOG, " @@ Intent: " + intent.getAction() + " " + str + " for " + j);
                context.sendBroadcast(intent);
            }
        }

        static void a(Context context, String str, long j) {
            if (n && str != null) {
                a(context, new Intent(MMBroadcastReceiver.ACTION_INTENT_STARTED).putExtra(c, str), j);
            }
        }

        static void a(MMAdImpl mMAdImpl) {
            if (mMAdImpl != null) {
                MMSDK.a(new AnonymousClass_2(mMAdImpl));
                if (n) {
                    a(mMAdImpl.j(), new Intent(MMBroadcastReceiver.ACTION_OVERLAY_TAP), mMAdImpl.k);
                    a(mMAdImpl.j(), new Intent(MMBroadcastReceiver.ACTION_AD_SINGLE_TAP), mMAdImpl.k);
                }
            }
        }

        static void a(MMAdImpl mMAdImpl, MMException mMException) {
            if (mMAdImpl == null) {
                MMLog.d(SDKLOG, "No Context in the listener: ");
            } else {
                MMSDK.a(new AnonymousClass_7(mMAdImpl, mMException));
                if (n) {
                    a(mMAdImpl.j(), new Intent(mMAdImpl.m()).putExtra(e, mMException), mMAdImpl.k);
                }
            }
        }

        protected static void a(String str) {
            MMLog.b("Logging event to: %s", str);
            ThreadUtils.a(new AnonymousClass_1(str));
        }

        static void b(MMAdImpl mMAdImpl) {
            if (mMAdImpl == null) {
                MMLog.d(SDKLOG, "No Context in the listener: ");
            } else {
                MMSDK.a(new AnonymousClass_3(mMAdImpl));
                if (n) {
                    a(mMAdImpl.j(), new Intent(MMBroadcastReceiver.ACTION_FETCH_STARTED_CACHING), mMAdImpl.k);
                }
            }
        }

        static void c(MMAdImpl mMAdImpl) {
            if (mMAdImpl == null) {
                MMLog.d(SDKLOG, "No Context in the listener: ");
            } else {
                if (n) {
                    a(mMAdImpl.j(), new Intent(MMBroadcastReceiver.ACTION_DISPLAY_STARTED), mMAdImpl.k);
                }
                d(mMAdImpl);
            }
        }

        static void d(MMAdImpl mMAdImpl) {
            if (mMAdImpl == null) {
                MMLog.d(SDKLOG, "No Context in the listener: ");
            } else {
                MMSDK.a(new AnonymousClass_4(mMAdImpl));
                a(mMAdImpl.j(), mMAdImpl.k);
            }
        }

        static void e(MMAdImpl mMAdImpl) {
            if (mMAdImpl == null) {
                MMLog.d(SDKLOG, "No Context in the listener: ");
            } else {
                MMSDK.a(new AnonymousClass_5(mMAdImpl));
                if (n && mMAdImpl.j() != null) {
                    a(mMAdImpl.j(), new Intent(MMBroadcastReceiver.ACTION_OVERLAY_CLOSED), mMAdImpl.k);
                }
            }
        }

        static void f(MMAdImpl mMAdImpl) {
            if (mMAdImpl == null) {
                MMLog.d(SDKLOG, "No Context in the listener: ");
            } else {
                MMSDK.a(new AnonymousClass_6(mMAdImpl));
                if (n) {
                    a(mMAdImpl.j(), new Intent(mMAdImpl.n()), mMAdImpl.k);
                }
            }
        }
    }

    static {
        b = false;
        o = 1897808289;
        k = ",";
        l = new Handler(Looper.getMainLooper());
        q = null;
        r = false;
        System.loadLibrary("nmsp_speex");
        r = true;
    }

    private MMSDK() {
    }

    private static AlertDialog a(Context context, String str) {
        AlertDialog create = new Builder(context).create();
        create.setTitle("Whoops!");
        create.setMessage(String.format("The developer has forgot to declare the %s in the manifest file. Please reach out to the developer to remove this error.", new Object[]{str}));
        create.setButton(ConfigException.MISSING_CONFIG_CHANGES, "OK", new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        create.show();
        return create;
    }

    static String a(Info info) {
        return info == null ? null : info.getId();
    }

    static String a(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder(bArr.length * 2);
        int i = 0;
        while (i < bArr.length) {
            stringBuilder.append(String.format("%02X", new Object[]{Byte.valueOf(bArr[i])}));
            i++;
        }
        return stringBuilder.toString();
    }

    static void a(Context context, Map map) {
        Object a;
        String d;
        CharSequence m;
        Locale locale;
        String c;
        StatFs statFs;
        String toString;
        Intent registerReceiver;
        String str = null;
        MMLog.b(SDKLOG, "executing getIDThread");
        map.put("density", x(context));
        map.put("hpx", p(context));
        map.put("wpx", o(context));
        map.put("sk", y(context));
        map.put("mic", Boolean.toString(q(context)));
        Object obj = "true";
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) == 0) {
            Info n = n(context);
            if (n != null) {
                a = a(n);
                if (a != null && n.isLimitAdTrackingEnabled()) {
                    obj = "false";
                }
                if (a == null) {
                    map.put("aaid", a);
                    map.put("ate", obj);
                } else {
                    d = d(context);
                    if (d != null) {
                        map.put("mmdid", d);
                    }
                }
                if (h(context)) {
                    map.put("cachedvideo", "false");
                } else {
                    map.put("cachedvideo", "true");
                }
                if (Build.MODEL != null) {
                    map.put("dm", Build.MODEL);
                }
                if (VERSION.RELEASE != null) {
                    map.put("dv", "Android" + VERSION.RELEASE);
                }
                map.put("sdkversion", VERSION);
                map.put("mcc", i(context));
                map.put("mnc", j(context));
                m = m(context);
                if (!TextUtils.isEmpty(m)) {
                    map.put("cn", m);
                }
                locale = Locale.getDefault();
                if (locale != null) {
                    map.put("language", locale.getLanguage());
                    map.put("country", locale.getCountry());
                }
                d = context.getPackageName();
                map.put("pkid", d);
                PackageManager packageManager = context.getPackageManager();
                map.put("pknm", packageManager.getApplicationLabel(packageManager.getApplicationInfo(d, LOG_LEVEL_ERROR)).toString());
                d = HandShake.a(context).b(context);
                if (d != null) {
                    map.put("appsids", d);
                }
                d = AdCache.a(context);
                if (d != null) {
                    map.put("vid", d);
                }
                try {
                    c = c(context);
                    statFs = AdCache.i(context) ? new StatFs(context.getFilesDir().getPath()) : new StatFs(AdCache.f(context).getAbsolutePath());
                    toString = Long.toString(((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize()));
                    registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                    if (registerReceiver == null) {
                        str = registerReceiver.getIntExtra("plugged", LOG_LEVEL_ERROR) != 0 ? "false" : "true";
                        d = Integer.toString((int) (((float) registerReceiver.getIntExtra("level", LOG_LEVEL_ERROR)) * (100.0f / ((float) registerReceiver.getIntExtra("scale", MMException.UNKNOWN_ERROR)))));
                    } else {
                        d = null;
                    }
                    if (d != null && d.length() > 0) {
                        map.put("bl", d);
                    }
                    if (str != null && str.length() > 0) {
                        map.put("plugged", str);
                    }
                    if (toString.length() > 0) {
                        map.put("space", toString);
                    }
                    if (c != null) {
                        map.put("conn", c);
                    }
                    m = URLEncoder.encode(b(context), HTMLEncoder.ENCODE_NAME_DEFAULT);
                    if (!TextUtils.isEmpty(m)) {
                        map.put("pip", m);
                    }
                } catch (Exception e) {
                    MMLog.e(SDKLOG, "Exception inserting common parameters: ", e);
                }
                MMRequest.b(map);
            }
        }
        a = null;
        if (a == null) {
            d = d(context);
            if (d != null) {
                map.put("mmdid", d);
            }
        } else {
            map.put("aaid", a);
            map.put("ate", obj);
        }
        if (h(context)) {
            map.put("cachedvideo", "false");
        } else {
            map.put("cachedvideo", "true");
        }
        if (Build.MODEL != null) {
            map.put("dm", Build.MODEL);
        }
        if (VERSION.RELEASE != null) {
            map.put("dv", "Android" + VERSION.RELEASE);
        }
        map.put("sdkversion", VERSION);
        map.put("mcc", i(context));
        map.put("mnc", j(context));
        m = m(context);
        if (TextUtils.isEmpty(m)) {
            map.put("cn", m);
        }
        locale = Locale.getDefault();
        if (locale != null) {
            map.put("language", locale.getLanguage());
            map.put("country", locale.getCountry());
        }
        try {
            d = context.getPackageName();
            map.put("pkid", d);
            PackageManager packageManager2 = context.getPackageManager();
            map.put("pknm", packageManager2.getApplicationLabel(packageManager2.getApplicationInfo(d, LOG_LEVEL_ERROR)).toString());
        } catch (Exception e2) {
            MMLog.e(SDKLOG, "Can't insert package information", e2);
        }
        d = HandShake.a(context).b(context);
        if (d != null) {
            map.put("appsids", d);
        }
        d = AdCache.a(context);
        if (d != null) {
            map.put("vid", d);
        }
        c = c(context);
        if (AdCache.i(context)) {
        }
        toString = Long.toString(((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize()));
        registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            d = null;
        } else {
            if (registerReceiver.getIntExtra("plugged", LOG_LEVEL_ERROR) != 0) {
            }
            d = Integer.toString((int) (((float) registerReceiver.getIntExtra("level", LOG_LEVEL_ERROR)) * (100.0f / ((float) registerReceiver.getIntExtra("scale", MMException.UNKNOWN_ERROR)))));
        }
        map.put("bl", d);
        map.put("plugged", str);
        if (toString.length() > 0) {
            map.put("space", toString);
        }
        if (c != null) {
            map.put("conn", c);
        }
        m = URLEncoder.encode(b(context), HTMLEncoder.ENCODE_NAME_DEFAULT);
        if (TextUtils.isEmpty(m)) {
            map.put("pip", m);
        }
        MMRequest.b(map);
    }

    static void a(MMAdImpl mMAdImpl) {
        if (mMAdImpl != null) {
            Context j = mMAdImpl.j();
            MMLog.c(SDKLOG, String.format("MMAd External ID: %d", new Object[]{Integer.valueOf(mMAdImpl.e())}));
            MMLog.c(SDKLOG, String.format("MMAd Internal ID: %d", new Object[]{Long.valueOf(mMAdImpl.k)}));
            MMLog.c(SDKLOG, String.format("APID: %s", new Object[]{mMAdImpl.g}));
            String str = SDKLOG;
            String str2 = "SD card is %savailable.";
            Object[] objArr = new Object[1];
            objArr[0] = AdCache.i(j) ? j : "not ";
            MMLog.c(str, String.format(str2, objArr));
            if (j != null) {
                MMLog.c(SDKLOG, String.format("Package: %s", new Object[]{j.getPackageName()}));
                MMLog.c(SDKLOG, String.format("MMDID: %s", new Object[]{d(j)}));
                MMLog.c(SDKLOG, "Permissions:");
                str = SDKLOG;
                str2 = "android.permission.ACCESS_NETWORK_STATE is %spresent";
                objArr = new Object[1];
                objArr[0] = j.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1 ? "not " : j;
                MMLog.c(str, String.format(str2, objArr));
                str = SDKLOG;
                str2 = "android.permission.INTERNET is %spresent";
                objArr = new Object[1];
                objArr[0] = j.checkCallingOrSelfPermission("android.permission.INTERNET") == -1 ? "not " : j;
                MMLog.c(str, String.format(str2, objArr));
                str = SDKLOG;
                str2 = "android.permission.WRITE_EXTERNAL_STORAGE is %spresent";
                objArr = new Object[1];
                objArr[0] = j.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == -1 ? "not " : j;
                MMLog.c(str, String.format(str2, objArr));
                str = SDKLOG;
                str2 = "android.permission.VIBRATE is %spresent";
                objArr = new Object[1];
                objArr[0] = j.checkCallingOrSelfPermission("android.permission.VIBRATE") == -1 ? "not " : j;
                MMLog.c(str, String.format(str2, objArr));
                str = SDKLOG;
                str2 = "android.permission.ACCESS_COARSE_LOCATION is %spresent";
                objArr = new Object[1];
                objArr[0] = j.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == -1 ? "not " : j;
                MMLog.c(str, String.format(str2, objArr));
                str = SDKLOG;
                str2 = "android.permission.ACCESS_FINE_LOCATION is %spresent";
                objArr = new Object[1];
                objArr[0] = j.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == -1 ? "not " : j;
                MMLog.c(str, String.format(str2, objArr));
                MMLog.c(SDKLOG, "Cached Ads:");
                AdCache.a(j, (int)LOG_LEVEL_INFO, new AnonymousClass_2(j));
            }
        }
    }

    static void a(Runnable runnable) {
        if (a()) {
            runnable.run();
        } else {
            l.post(runnable);
        }
    }

    static void a(Runnable runnable, long j) {
        l.postDelayed(runnable, j);
    }

    static synchronized void a(String str) {
        synchronized (MMSDK.class) {
            q = str;
        }
    }

    static boolean a() {
        return l.getLooper() == Looper.myLooper();
    }

    static boolean a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        boolean z;
        z = connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isConnected();
        return z;
    }

    static String b(Context context) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration inetAddresses = ((NetworkInterface) networkInterfaces.nextElement()).getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddress = (InetAddress) inetAddresses.nextElement();
                    if (!inetAddress.isLoopbackAddress()) {
                        if (stringBuilder.length() > 0) {
                            stringBuilder.append(',');
                        }
                        String toUpperCase = inetAddress.getHostAddress().toUpperCase();
                        if (InetAddressUtils.isIPv4Address(toUpperCase)) {
                            stringBuilder.append(toUpperCase);
                        } else {
                            int indexOf = toUpperCase.indexOf(ApiEventType.API_MRAID_GET_AUDIO_VOLUME);
                            if (indexOf >= 0) {
                                toUpperCase = toUpperCase.substring(LOG_LEVEL_ERROR, indexOf);
                            }
                            stringBuilder.append(toUpperCase);
                        }
                    }
                }
            }
            return stringBuilder.toString();
        } catch (Exception e) {
            MMLog.e(SDKLOG, "Exception getting ip information: ", e);
            return j;
        }
    }

    static boolean b() {
        return VERSION.SDK_INT >= 14;
    }

    static String c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
        if (connectivityManager.getActiveNetworkInfo() == null || !connectivityManager.getActiveNetworkInfo().isConnected()) {
            return "offline";
        }
        int type = connectivityManager.getActiveNetworkInfo().getType();
        int subtype = connectivityManager.getActiveNetworkInfo().getSubtype();
        if (type == 1) {
            return "wifi";
        }
        if (type != 0) {
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
        switch (subtype) {
            case LOG_LEVEL_DEBUG:
                return "gprs";
            case LOG_LEVEL_INFO:
                return "edge";
            case LOG_LEVEL_VERBOSE:
                return "umts";
            case LOG_LEVEL_INTERNAL:
                return "cdma";
            case LOG_LEVEL_PRIVATE_VERBOSE:
                return "evdo_0";
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return "evdo_a";
            case GoogleScorer.CLIENT_ALL:
                return "1xrtt";
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return "hsdpa";
            case ZBuildConfig.$minsdk:
                return "hsupa";
            case R.styleable.MapAttrs_uiZoomControls:
                return "hspa";
            case R.styleable.MapAttrs_uiZoomGestures:
                return "iden";
            case R.styleable.MapAttrs_useViewLifecycle:
                return "evdo_b";
            case R.styleable.MapAttrs_zOrderOnTop:
                return "lte";
            case MMException.REQUEST_NOT_FILLED:
                return "ehrpd";
            case MMException.REQUEST_BAD_RESPONSE:
                return "hspap";
            default:
                return DeviceInfo.ORIENTATION_UNKNOWN;
        }
    }

    static boolean c() {
        return Integer.parseInt(VERSION.SDK) >= 14;
    }

    static synchronized String d(Context context) {
        String str = null;
        synchronized (MMSDK.class) {
            if (q != null) {
                str = q;
            } else {
                String string = Secure.getString(context.getContentResolver(), "android_id");
                if (string != null) {
                    StringBuilder stringBuilder = new StringBuilder("mmh_");
                    try {
                        stringBuilder.append(a(MessageDigest.getInstance("MD5").digest(string.getBytes())));
                        stringBuilder.append("_");
                        stringBuilder.append(a(MessageDigest.getInstance("SHA1").digest(string.getBytes())));
                        str = stringBuilder.toString();
                        q = str;
                    } catch (Exception e) {
                        MMLog.e(SDKLOG, "Exception calculating hash: ", e);
                    }
                }
            }
        }
        return str;
    }

    static boolean d() {
        return Integer.parseInt(VERSION.SDK) >= 11;
    }

    static float e(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    static boolean e() {
        return Integer.parseInt(VERSION.SDK) >= 11;
    }

    static void f(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            a(context, "INTERNET permission").show();
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
            a(context, "ACCESS_NETWORK_STATE permission").show();
        }
    }

    static void g(Context context) {
        try {
            context.getPackageManager().getActivityInfo(new ComponentName(context, "com.millennialmedia.android.MMActivity"), Cast.MAX_NAMESPACE_LENGTH);
        } catch (NameNotFoundException e) {
            Throwable th = e;
            MMLog.e(SDKLOG, "Activity MMActivity not declared in AndroidManifest.xml", th);
            th.printStackTrace();
            a(context, "MMActivity class").show();
        }
    }

    public static boolean getBroadcastEvents() {
        return n;
    }

    public static int getDefaultAdId() {
        int i;
        synchronized (MMSDK.class) {
            i = o + 1;
            o = i;
        }
        return i;
    }

    @Deprecated
    public static int getLogLevel() {
        return MMLog.getLogLevel();
    }

    static boolean h(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != -1 && (!VERSION.SDK.equalsIgnoreCase("8") || (Environment.getExternalStorageState().equals("mounted") && AdCache.d));
    }

    static String i(Context context) {
        Configuration k = k(context);
        if (k.mcc == 0) {
            String l = l(context);
            if (l != null && l.length() >= 6) {
                return l.substring(LOG_LEVEL_ERROR, LOG_LEVEL_VERBOSE);
            }
        }
        return String.valueOf(k.mcc);
    }

    public static void initialize(Context context) {
        HandShake a = HandShake.a(context);
        a.b();
        a.c();
    }

    static String j(Context context) {
        Configuration k = k(context);
        if (k.mnc == 0) {
            String l = l(context);
            if (l != null && l.length() >= 6) {
                return l.substring(LOG_LEVEL_VERBOSE);
            }
        }
        return String.valueOf(k.mnc);
    }

    static Configuration k(Context context) {
        return context.getResources().getConfiguration();
    }

    static String l(Context context) {
        return ((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getNetworkOperator();
    }

    static String m(Context context) {
        return ((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getNetworkOperatorName();
    }

    static Info n(Context context) {
        Info info = null;
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (IOException e) {
            MMLog.e(SDKLOG, "Unrecoverable error connecting to Google Play services (e.g.,the old version of the service doesnt support getting AdvertisingId", e);
            return info;
        } catch (GooglePlayServicesNotAvailableException e2) {
            MMLog.e(SDKLOG, "Google Play services is not available entirely.", e2);
            return info;
        } catch (IllegalStateException e3) {
            MMLog.e(SDKLOG, "IllegalStateException: ", e3);
            return info;
        } catch (GooglePlayServicesRepairableException e4) {
            MMLog.e(SDKLOG, "Google Play Services is not installed, up-to-date, or enabled", e4);
            return info;
        }
    }

    static String o(Context context) {
        return Integer.toString(context.getResources().getDisplayMetrics().widthPixels);
    }

    static String p(Context context) {
        return Integer.toString(context.getResources().getDisplayMetrics().heightPixels);
    }

    static boolean q(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.microphone");
    }

    static boolean r(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") == 0;
    }

    public static void resetCache(Context context) {
        AdCache.e(context);
    }

    static int s(Context context) {
        return ((AudioManager) context.getApplicationContext().getSystemService("audio")).getStreamVolume(LOG_LEVEL_VERBOSE);
    }

    public static void setBroadcastEvents(boolean z) {
        n = z;
    }

    @Deprecated
    public static void setLogLevel(int i) {
        switch (i) {
            case LOG_LEVEL_ERROR:
                MMLog.setLogLevel(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
            case LOG_LEVEL_DEBUG:
                MMLog.setLogLevel(LOG_LEVEL_VERBOSE);
            case LOG_LEVEL_INFO:
                MMLog.setLogLevel(LOG_LEVEL_INTERNAL);
            case LOG_LEVEL_VERBOSE:
                MMLog.setLogLevel(LOG_LEVEL_INFO);
            default:
                MMLog.setLogLevel(LOG_LEVEL_INTERNAL);
        }
    }

    static String t(Context context) {
        return String.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.telephony"));
    }

    public static void trackConversion(Context context, String str) {
        MMConversionTracker.a(context, str, null);
    }

    public static void trackConversion(Context context, String str, MMRequest mMRequest) {
        MMConversionTracker.a(context, str, mMRequest);
    }

    public static void trackEvent(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            Object d = d(context);
            if (!TextUtils.isEmpty(d)) {
                HttpUtils.a(p + str + "&mmdid=" + d);
            }
        }
    }

    static String u(Context context) {
        return String.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.telephony"));
    }

    static String v(Context context) {
        switch (context.getResources().getConfiguration().orientation) {
            case LOG_LEVEL_DEBUG:
                return DeviceInfo.ORIENTATION_PORTRAIT;
            case LOG_LEVEL_INFO:
                return DeviceInfo.ORIENTATION_LANDSCAPE;
            case LOG_LEVEL_VERBOSE:
                return "square";
            default:
                return "default";
        }
    }

    static final String w(Context context) {
        return System.getString(context.getContentResolver(), "accelerometer_rotation").equals("1") ? "false" : "true";
    }

    private static String x(Context context) {
        return Float.toString(e(context));
    }

    private static String y(Context context) {
        return (r && r(context)) ? "true" : "false";
    }
}