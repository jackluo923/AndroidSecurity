package com.amazon.device.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONObject;

class DeviceInfo {
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";
    public static final String ORIENTATION_UNKNOWN = "unknown";
    public static final String WIFI_NAME = "Wifi";
    private static final String a = "DeviceInfo";
    private static final String b = "android";
    private static final String c;
    private static final String d;
    private static final String e = "Android";
    private static final String f;
    private static String g;
    private Size A;
    private String h;
    private String i;
    private boolean j;
    private boolean k;
    private String l;
    private String m;
    private boolean n;
    private boolean o;
    private String p;
    private String q;
    private String r;
    private boolean s;
    private boolean t;
    private String u;
    private float v;
    private String w;
    private String x;
    private String y;
    private Size z;

    static {
        c = Build.MANUFACTURER;
        d = Build.MODEL;
        f = VERSION.RELEASE;
    }

    protected DeviceInfo() {
    }

    public DeviceInfo(Context context) {
        h();
        a(context);
        g();
        b(context);
    }

    private void a(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(ZBuildConfig.device);
        if (telephonyManager != null) {
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            if (networkOperatorName == null || networkOperatorName.length() <= 0) {
                networkOperatorName = null;
            }
            this.w = networkOperatorName;
        }
    }

    private void b() {
        if (!this.k) {
            a();
        }
    }

    private void b(Context context) {
        if (c.equals("motorola") && d.equals("MB502")) {
            this.v = 1.0f;
        } else {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.v = displayMetrics.scaledDensity;
        }
        this.u = Float.toString(this.v);
    }

    private void c() {
        if (!this.o) {
            d();
        }
    }

    private void d() {
        try {
            String str = (String) Build.class.getDeclaredField("SERIAL").get(Build.class);
        } catch (Exception e) {
            str = null;
        }
        if (str == null || str.length() == 0 || str.equalsIgnoreCase(ORIENTATION_UNKNOWN)) {
            this.n = true;
        } else {
            this.l = Utils.getURLEncodedString(Utils.sha1(str));
        }
        this.o = true;
    }

    private void e() {
        if (!this.t) {
            f();
        }
    }

    private void f() {
        String string = Secure.getString(InternalAdRegistration.getInstance().getApplicationContext().getContentResolver(), "android_id");
        if (Utils.isNullOrEmpty(string) || string.equalsIgnoreCase("9774d56d682e549c")) {
            this.p = null;
            this.q = null;
            this.s = true;
        } else {
            this.p = Utils.getURLEncodedString(string);
            this.q = Utils.getURLEncodedString(Utils.sha1(string));
        }
        this.t = true;
    }

    private void g() {
        String language = Locale.getDefault().getLanguage();
        if (language == null || language.length() <= 0) {
            language = null;
        }
        this.y = language;
    }

    public static String getDeviceType() {
        return b;
    }

    public static String getMake() {
        return c;
    }

    public static String getModel() {
        return d;
    }

    public static String getOS() {
        return e;
    }

    public static String getOSVersion() {
        return f;
    }

    public static String getUserAgentString() {
        return g;
    }

    private void h() {
        String country = Locale.getDefault().getCountry();
        if (country == null || country.length() <= 0) {
            country = null;
        }
        this.x = country;
    }

    public static void setUserAgentString(String str) {
        if (str != null && !str.equals(g)) {
            g = str;
        }
    }

    JSONObject a(String str) {
        JSONObject dInfoProperty = getDInfoProperty();
        JSONUtils.b(dInfoProperty, "orientation", str);
        JSONUtils.b(dInfoProperty, "screenSize", getScreenSize(str).toString());
        JSONUtils.b(dInfoProperty, "connectionType", getConnectionType());
        return dInfoProperty;
    }

    protected void a() {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) InternalAdRegistration.getInstance().getApplicationContext().getSystemService("wifi");
        if (wifiManager != null) {
            try {
                connectionInfo = wifiManager.getConnectionInfo();
            } catch (SecurityException e) {
                SecurityException securityException = e;
                Log.d(a, "Unable to get Wifi connection information: %s", new Object[]{securityException});
                connectionInfo = null;
            } catch (ExceptionInInitializerError e2) {
                ExceptionInInitializerError exceptionInInitializerError = e2;
                Log.d(a, "Unable to get Wifi connection information: %s", new Object[]{exceptionInInitializerError});
            }
            if (connectionInfo != null) {
                this.h = null;
            } else {
                Object macAddress = connectionInfo.getMacAddress();
                if (macAddress == null || macAddress.length() == 0) {
                    this.h = null;
                    this.j = true;
                } else if (Pattern.compile("((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})").matcher(macAddress).find()) {
                    this.h = Utils.getURLEncodedString(Utils.sha1(macAddress));
                } else {
                    this.h = null;
                    this.j = true;
                }
            }
            this.k = true;
        }
        connectionInfo = null;
        if (connectionInfo != null) {
            Object macAddress2 = connectionInfo.getMacAddress();
            this.h = null;
            this.j = true;
        } else {
            this.h = null;
        }
        this.k = true;
    }

    public String getCarrier() {
        return this.w;
    }

    public String getConnectionType() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) InternalAdRegistration.getInstance().getApplicationContext().getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException e) {
                SecurityException securityException = e;
                Log.d(a, "Unable to get active network information: %s", new Object[]{securityException});
            }
        } else {
            activeNetworkInfo = null;
        }
        networkInfo = activeNetworkInfo;
        if (networkInfo == null) {
            return Integer.toString(0);
        }
        return networkInfo.getType() == 1 ? WIFI_NAME : Integer.toString(networkInfo.getSubtype());
    }

    public String getCountry() {
        return this.x;
    }

    public JSONObject getDInfoProperty() {
        JSONObject jSONObject = new JSONObject();
        JSONUtils.b(jSONObject, "make", getMake());
        JSONUtils.b(jSONObject, "model", getModel());
        JSONUtils.b(jSONObject, "os", getOS());
        JSONUtils.b(jSONObject, "osVersion", getOSVersion());
        JSONUtils.b(jSONObject, "scalingFactor", getScalingFactorAsString());
        JSONUtils.b(jSONObject, "language", getLanguage());
        JSONUtils.b(jSONObject, "country", getCountry());
        JSONUtils.b(jSONObject, "carrier", getCarrier());
        return jSONObject;
    }

    public String getLanguage() {
        return this.y;
    }

    public String getMacMd5() {
        b();
        return this.i;
    }

    public String getMacSha1() {
        b();
        return this.h;
    }

    public String getOrientation() {
        switch (Utils.determineCanonicalScreenOrientation()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return ORIENTATION_LANDSCAPE;
            case GoogleScorer.CLIENT_GAMES:
            case ZBuildConfig.$minsdk:
                return ORIENTATION_PORTRAIT;
            default:
                return ORIENTATION_UNKNOWN;
        }
    }

    public float getScalingFactorAsFloat() {
        return this.v;
    }

    public String getScalingFactorAsString() {
        return this.u;
    }

    public Size getScreenSize(String str) {
        if (str.equals(ORIENTATION_PORTRAIT) && this.A != null) {
            return this.A;
        }
        if (str.equals(ORIENTATION_LANDSCAPE) && this.z != null) {
            return this.z;
        }
        WindowManager windowManager = (WindowManager) InternalAdRegistration.getInstance().getApplicationContext().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        String str2 = String.valueOf(displayMetrics.widthPixels) + "x" + String.valueOf(displayMetrics.heightPixels);
        if (str.equals(ORIENTATION_PORTRAIT)) {
            this.A = new Size(str2);
            return this.A;
        } else if (!str.equals(ORIENTATION_LANDSCAPE)) {
            return new Size(str2);
        } else {
            this.z = new Size(str2);
            return this.z;
        }
    }

    public String getSerialMd5() {
        c();
        return this.m;
    }

    public String getSerialSha1() {
        c();
        return this.l;
    }

    public String getUdid() {
        e();
        return this.p;
    }

    public String getUdidMd5() {
        e();
        return this.r;
    }

    public String getUdidSha1() {
        e();
        return this.q;
    }

    public boolean isMacBad() {
        b();
        return this.j;
    }

    public boolean isSerialBad() {
        c();
        return this.n;
    }

    public boolean isUdidBad() {
        e();
        return this.s;
    }

    public String toJsonString() {
        return a(getOrientation()).toString();
    }
}