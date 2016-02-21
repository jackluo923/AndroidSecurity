package com.amazon.device.ads;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class JSONUtils {
    JSONUtils() {
    }

    protected static int a(JSONArray jSONArray, int i, int i2) {
        return jSONArray.optInt(i, i2);
    }

    protected static int a(JSONObject jSONObject, String str, int i) {
        return jSONObject.optInt(str, i);
    }

    protected static long a(JSONObject jSONObject, String str, long j) {
        return jSONObject.optLong(str, j);
    }

    protected static String a(JSONObject jSONObject, String str, String str2) {
        return jSONObject.optString(str, str2);
    }

    protected static JSONArray a(JSONObject jSONObject, String str) {
        return jSONObject.optJSONArray(str);
    }

    protected static JSONObject a(String str) {
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            return null;
        }
    }

    protected static JSONObject a(JSONArray jSONArray, int i) {
        try {
            return jSONArray.getJSONObject(i);
        } catch (JSONException e) {
            return null;
        }
    }

    protected static boolean a(JSONObject jSONObject, String str, boolean z) {
        return jSONObject.optBoolean(str, z);
    }

    protected static void b(JSONObject jSONObject, String str, int i) {
        try {
            jSONObject.put(str, i);
        } catch (JSONException e) {
        }
    }

    protected static void b(JSONObject jSONObject, String str, long j) {
        try {
            jSONObject.put(str, j);
        } catch (JSONException e) {
        }
    }

    protected static void b(JSONObject jSONObject, String str, String str2) {
        if (str2 != null && !str2.equals(AdTrackerConstants.BLANK)) {
            try {
                jSONObject.put(str, str2);
            } catch (JSONException e) {
            }
        }
    }
}