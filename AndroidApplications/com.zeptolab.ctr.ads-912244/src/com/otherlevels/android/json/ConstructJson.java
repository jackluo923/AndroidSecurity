package com.otherlevels.android.json;

import android.location.Location;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.model.Video.Fields;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class ConstructJson {
    public JSONObject constructAppEventPayloadObject(String str, String str2, String str3, String str4, String str5) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event_type", str);
            jSONObject.put("event_label", str2);
            jSONObject.put("device_id", str3);
            jSONObject.put("app_key", str4);
            jSONObject.put("phash", str5);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    public JSONObject constructDeviceJsonObject(String str, String str2, String str3, String str4, String str5) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("os_name", str);
            jSONObject.put("manufacturer", str2);
            jSONObject.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, str3);
            jSONObject.put("version", str4);
            jSONObject.put("os_version", str5);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    public JSONObject constructGeoLocationUpdatePayloadObject(Location location, String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put("acc", (double) location.getAccuracy());
            jSONObject.put("alt", location.getAltitude());
            jSONObject.put("lat", location.getLatitude());
            jSONObject.put("long", location.getLongitude());
            jSONObject.put("tracking_id", str);
            jSONObject.put("phash", str3);
            jSONObject2.put("payload", jSONObject);
            jSONObject2.put("group_id", str2);
            jSONObject2.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, Event.INTENT_MAPS);
            return jSONObject2;
        } catch (JSONException e) {
            return null;
        }
    }

    public JSONObject constructPayloadObject(JSONObject jSONObject, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, String str9) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("platform", "android");
            jSONObject2.put("device", jSONObject);
            jSONObject2.put("phash", str);
            jSONObject2.put("app_version", str2);
            jSONObject2.put("device_id", str3);
            jSONObject2.put("app_key", str4);
            jSONObject2.put("developer_key", str5);
            jSONObject2.put("app_name", str6);
            jSONObject2.put("timezone", str7);
            jSONObject2.put("language", str8);
            jSONObject2.put("session_length", i);
            jSONObject2.put("lv", str9);
            return jSONObject2;
        } catch (JSONException e) {
            return null;
        }
    }

    public JSONObject constructSetTagPayloadObject(String str, String str2, String str3, String str4, String str5) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Fields.NAME, str);
            jSONObject.put(Constants.NATIVE_AD_VALUE_ELEMENT, str2);
            jSONObject.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, str3);
            jSONObject.put("tracking_id", str5);
            jSONObject.put("app_key", str4);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    public JSONObject constructTrackingLinkUnLinkPayloadObject(String str, String str2, String str3, String str4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("app_key", str);
            jSONObject.put("device_id", str2);
            jSONObject.put("tracking_id", str3);
            jSONObject.put("phash", str4);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }
}