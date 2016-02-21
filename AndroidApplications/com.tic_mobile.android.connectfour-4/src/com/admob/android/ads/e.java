package com.admob.android.ads;

import java.util.Map;
import org.json.JSONObject;

// compiled from: AdMobConnectorFactory.java
public final class e {
    private static boolean a;

    static {
        a = false;
    }

    public static r a(String str, String str2, String str3) {
        return a(str, str2, str3, null);
    }

    public static r a(String str, String str2, String str3, h hVar) {
        return a(str, str2, str3, hVar, 5000, null, null);
    }

    public static r a(String str, String str2, String str3, h hVar, int i) {
        r a = a(str, null, str3, hVar, 5000, null, null);
        if (a != null) {
            a.a(1);
        }
        return a;
    }

    public static r a(String str, String str2, String str3, h hVar, int i, Map<String, String> map, String str4) {
        return new i(str, str2, str3, hVar, i, null, str4);
    }

    public static r a(String str, String str2, String str3, JSONObject jSONObject, h hVar) {
        r a = a(str, str2, str3, hVar, 5000, null, jSONObject == null ? null : jSONObject.toString());
        a.a("application/json");
        return a;
    }
}