package com.google.ads;

public final class g {

    public enum a {
        AD,
        NO_FILL,
        ERROR,
        TIMEOUT,
        NOT_FOUND,
        EXCEPTION;

        static {
            a = new com.google.ads.g.a("AD", 0);
            b = new com.google.ads.g.a("NO_FILL", 1);
            c = new com.google.ads.g.a("ERROR", 2);
            d = new com.google.ads.g.a("TIMEOUT", 3);
            e = new com.google.ads.g.a("NOT_FOUND", 4);
            f = new com.google.ads.g.a("EXCEPTION", 5);
            g = new com.google.ads.g.a[]{a, b, c, d, e, f};
        }
    }

    public static Object a(String str, Class cls) {
        return cls.cast(Class.forName(str).newInstance());
    }

    public static String a(String str, String str2, Boolean bool, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        String replaceAll = str.replaceAll("@gw_adlocid@", str2).replaceAll("@gw_qdata@", str6).replaceAll("@gw_sdkver@", "afma-sdk-a-v6.2.1").replaceAll("@gw_sessid@", str7).replaceAll("@gw_seqnum@", str8).replaceAll("@gw_devid@", str3);
        if (str5 != null) {
            replaceAll = replaceAll.replaceAll("@gw_adnetid@", str5);
        }
        if (str4 != null) {
            replaceAll = replaceAll.replaceAll("@gw_allocid@", str4);
        }
        if (str9 != null) {
            replaceAll = replaceAll.replaceAll("@gw_adt@", str9);
        }
        if (str10 != null) {
            replaceAll = replaceAll.replaceAll("@gw_aec@", str10);
        }
        if (bool == null) {
            return replaceAll;
        }
        return replaceAll.replaceAll("@gw_adnetrefresh@", bool.booleanValue() ? "1" : "0");
    }
}