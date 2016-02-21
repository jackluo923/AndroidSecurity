package com.amazon.device.ads;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class Version {
    private static String a;
    private static String b;
    private static String c;
    private static String d;

    static {
        a = "5.4.78";
        b = "amznAdSDK-android-";
        c = null;
        d = "(DEV)";
    }

    Version() {
    }

    protected static void a(String str) {
        c = str;
    }

    public static String getRawSDKVersion() {
        String str = a;
        if (str == null || str.equals(AdTrackerConstants.BLANK)) {
            return d;
        }
        return str.endsWith("x") ? str + d : str;
    }

    public static String getSDKVersion() {
        if (c == null) {
            c = b + getRawSDKVersion();
        }
        return c;
    }
}