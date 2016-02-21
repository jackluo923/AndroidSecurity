package com.inmobi.commons.data;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Locale;
import java.util.UUID;

public class DeviceInfo {
    private static String a;
    private static String b;
    private static String c;
    private static String d;
    private static String e;
    private static String f;
    private static String g;
    private static int h;
    private static DeviceInfo i;

    static {
        d = null;
        e = null;
        i = new DeviceInfo();
    }

    private DeviceInfo() {
    }

    private static String a() {
        return c;
    }

    private static void a(int i) {
        h = i;
    }

    private static void a(Context context) {
        try {
            if (f == null) {
                f = context.getSharedPreferences("inmobisdkaid", 0).getString("A_ID", null);
            }
            if (f == null) {
                f = UUID.randomUUID().toString();
                Editor edit = context.getSharedPreferences("inmobisdkaid", 0).edit();
                edit.putString("A_ID", f);
                edit.commit();
            }
        } catch (Exception e) {
        }
    }

    private static void a(String str) {
        a = str;
    }

    private static void b(String str) {
        b = str;
    }

    private static void c(String str) {
        c = str;
    }

    public static String getAid() {
        return f;
    }

    public static DeviceInfo getInstance() {
        return i;
    }

    public static String getLocalization() {
        return b;
    }

    public static String getNetworkType() {
        return a;
    }

    public static int getOrientation() {
        return h;
    }

    public static String getPhoneDefaultUserAgent() {
        return g == null ? AdTrackerConstants.BLANK : g;
    }

    public static String getScreenDensity() {
        return e;
    }

    public static String getScreenSize() {
        return d;
    }

    public static void setPhoneDefaultUserAgent(String str) {
        g = str;
    }

    public static void setScreenDensity(String str) {
        e = str;
    }

    public static void setScreenSize(String str) {
        d = str;
    }

    public void fillDeviceInfo() {
        if (a() == null) {
            String toLowerCase;
            c(Build.BRAND);
            Locale locale = Locale.getDefault();
            String language = locale.getLanguage();
            String country;
            if (language != null) {
                toLowerCase = language.toLowerCase(Locale.ENGLISH);
                country = locale.getCountry();
                if (country != null) {
                    toLowerCase = toLowerCase + "_" + country.toLowerCase(Locale.ENGLISH);
                }
            } else {
                toLowerCase = (String) System.getProperties().get("user.language");
                country = (String) System.getProperties().get("user.region");
                toLowerCase = (toLowerCase == null || country == null) ? language : toLowerCase + "_" + country;
                if (toLowerCase == null) {
                    toLowerCase = "en";
                }
            }
            b(toLowerCase);
        }
        if (InternalSDKUtil.getContext() != null) {
            a(InternalSDKUtil.getContext());
        }
        a(InternalSDKUtil.getConnectivityType(InternalSDKUtil.getContext()));
        try {
            int currentOrientationInFixedValues = WrapperFunctions.getCurrentOrientationInFixedValues(InternalSDKUtil.getContext());
            if (currentOrientationInFixedValues == 9) {
                a((int)GoogleScorer.CLIENT_PLUS);
            } else if (currentOrientationInFixedValues == 8) {
                a((int)GoogleScorer.CLIENT_APPSTATE);
            } else if (currentOrientationInFixedValues == 0) {
                a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            } else {
                a(1);
            }
        } catch (Exception e) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Error getting the orientation info ", e);
        }
    }
}