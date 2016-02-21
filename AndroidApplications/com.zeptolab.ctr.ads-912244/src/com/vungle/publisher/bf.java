package com.vungle.publisher;

import com.inmobi.androidsdk.impl.ConfigException;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bf {
    public static Boolean a(JSONObject jSONObject, String str) {
        boolean optBoolean = jSONObject.optBoolean(str, false);
        if (optBoolean) {
            return Boolean.valueOf(optBoolean);
        }
        optBoolean = jSONObject.optBoolean(str, true);
        return !optBoolean ? Boolean.valueOf(optBoolean) : null;
    }

    public static JSONArray a(bq[] bqVarArr) {
        JSONArray jSONArray = null;
        if (bqVarArr != null) {
            jSONArray = new JSONArray();
            int length = bqVarArr.length;
            int i = 0;
            while (i < length) {
                jSONArray.put(a(bqVarArr[i]));
                i++;
            }
        }
        return jSONArray;
    }

    public static JSONObject a(bq bqVar) {
        return bqVar != null ? bqVar.b() : null;
    }

    public static Float b(JSONObject jSONObject, String str) {
        Double valueOf;
        double optDouble = jSONObject.optDouble(str);
        if (optDouble == Double.NaN) {
            optDouble = jSONObject.optDouble(str, -1.0d);
            valueOf = optDouble != -1.0d ? Double.valueOf(optDouble) : null;
        } else {
            valueOf = Double.valueOf(optDouble);
        }
        return valueOf == null ? null : Float.valueOf(valueOf.floatValue());
    }

    public static Integer c(JSONObject jSONObject, String str) {
        int optInt = jSONObject.optInt(str, -1);
        if (optInt != -1) {
            return Integer.valueOf(optInt);
        }
        optInt = jSONObject.optInt(str, ConfigException.MISSING_ACTIVITY_DECLARATION);
        return optInt != -2 ? Integer.valueOf(optInt) : null;
    }

    public static String d(JSONObject jSONObject, String str) {
        return jSONObject.isNull(str) ? null : jSONObject.optString(str, null);
    }

    public static String[] e(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        int length = optJSONArray.length();
        String[] strArr = new String[length];
        int i = 0;
        while (i < length) {
            strArr[i] = optJSONArray.optString(i, null);
            i++;
        }
        return strArr;
    }
}