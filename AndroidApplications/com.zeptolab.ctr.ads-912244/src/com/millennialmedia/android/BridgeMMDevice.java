package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.media.ErrorFields;
import com.brightcove.player.media.MediaService;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.house.Manager;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class BridgeMMDevice extends MMJSObject {
    private static final String a = "call";
    private static final String d = "composeEmail";
    private static final String e = "composeSms";
    private static final String f = "enableHardwareAcceleration";
    private static final String g = "getAvailableSchemes";
    private static final String h = "getInfo";
    private static final String i = "getLocation";
    private static final String j = "getOrientation";
    private static final String k = "isSchemeAvailable";
    private static final String l = "openAppStore";
    private static final String m = "openUrl";
    private static final String n = "setMMDID";
    private static final String o = "showMap";
    private static final String p = "tweet";
    private static final String q = "BridgeMMDevice";

    BridgeMMDevice() {
    }

    static JSONObject a(Context context) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("sdkVersion", MMSDK.VERSION);
                jSONObject.put("connection", MMSDK.c(context));
                jSONObject.put("platform", "Android");
                if (VERSION.RELEASE != null) {
                    jSONObject.put("version", VERSION.RELEASE);
                }
                if (Build.MODEL != null) {
                    jSONObject.put("device", Build.MODEL);
                }
                jSONObject.put("mmdid", MMSDK.d(context));
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                jSONObject.put("density", new Float(displayMetrics.density));
                jSONObject.put(MMLayout.KEY_HEIGHT, new Integer(displayMetrics.heightPixels));
                jSONObject.put(MMLayout.KEY_WIDTH, new Integer(displayMetrics.widthPixels));
                Locale locale = Locale.getDefault();
                if (locale != null) {
                    jSONObject.put("language", locale.getLanguage());
                    jSONObject.put("country", locale.getCountry());
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Fields.NAME, "MAC-ID");
                jSONObject2.put("path", "/");
                jSONObject2.put(Constants.NATIVE_AD_VALUE_ELEMENT, MMSDK.m);
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject2);
                jSONObject.put("cookies", jSONArray);
            } catch (JSONException e) {
                th = e;
                MMLog.e(q, "Bridge getting deviceInfo json exception: ", th);
                return jSONObject;
            }
        } catch (JSONException e2) {
            jSONObject = null;
            Throwable th2 = e2;
            MMLog.e(q, "Bridge getting deviceInfo json exception: ", th2);
            return jSONObject;
        }
        return jSONObject;
    }

    MMJSResponse a(String str, Map map) {
        if (a.equals(str)) {
            return call(map);
        }
        if (d.equals(str)) {
            return composeEmail(map);
        }
        if (e.equals(str)) {
            return composeSms(map);
        }
        if (f.equals(str)) {
            return enableHardwareAcceleration(map);
        }
        if (g.equals(str)) {
            return getAvailableSchemes(map);
        }
        if (h.equals(str)) {
            return getInfo(map);
        }
        if (i.equals(str)) {
            return getLocation(map);
        }
        if (j.equals(str)) {
            return getOrientation(map);
        }
        if (k.equals(str)) {
            return isSchemeAvailable(map);
        }
        if (l.equals(str)) {
            return openAppStore(map);
        }
        if (m.equals(str)) {
            return openUrl(map);
        }
        if (n.equals(str)) {
            return setMMDID(map);
        }
        if (o.equals(str)) {
            return showMap(map);
        }
        return p.equals(str) ? tweet(map) : null;
    }

    public MMJSResponse call(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get("number");
        if (context == null || str == null) {
            return null;
        }
        Intent intent;
        MMLog.b(q, String.format("Dialing Phone: %s", new Object[]{str}));
        intent = (Boolean.parseBoolean((String) map.get("dial")) && context.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0) ? new Intent("android.intent.action.CALL", Uri.parse("tel:" + str)) : new Intent("android.intent.action.VIEW", Uri.parse("tel:" + str));
        IntentUtils.c(context, intent);
        Event.a(context, Event.INTENT_PHONE_CALL, b((String) map.get("PROPERTY_EXPANDING")));
        return MMJSResponse.a();
    }

    public MMJSResponse composeEmail(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get("recipient");
        String str2 = (String) map.get("subject");
        String str3 = (String) map.get(ErrorFields.MESSAGE);
        if (context == null) {
            return null;
        }
        MMLog.b(q, "Creating email");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("plain/text");
        if (str != null) {
            intent.putExtra("android.intent.extra.EMAIL", str.split(","));
        }
        if (str2 != null) {
            intent.putExtra("android.intent.extra.SUBJECT", str2);
        }
        if (str3 != null) {
            intent.putExtra("android.intent.extra.TEXT", str3);
        }
        IntentUtils.c(context, intent);
        Event.a(context, Event.INTENT_EMAIL, b((String) map.get("PROPERTY_EXPANDING")));
        return MMJSResponse.a();
    }

    public MMJSResponse composeSms(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get("number");
        String str2 = (String) map.get(ErrorFields.MESSAGE);
        if (context == null || str == null) {
            return null;
        }
        MMLog.b(q, String.format("Creating sms: %s", new Object[]{str}));
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("sms:" + str));
        if (str2 != null) {
            intent.putExtra("sms_body", str2);
        }
        IntentUtils.c(context, intent);
        Event.a(context, Event.INTENT_TXT_MESSAGE, b((String) map.get("PROPERTY_EXPANDING")));
        return MMJSResponse.a("SMS Sent");
    }

    public MMJSResponse enableHardwareAcceleration(Map map) {
        MMLog.b(q, "hardware accel call" + map);
        String str = (String) map.get("enabled");
        MMWebView mMWebView = (MMWebView) this.c.get();
        if (mMWebView == null || mMWebView == null) {
            return null;
        }
        if (Boolean.parseBoolean(str)) {
            mMWebView.c();
        } else {
            mMWebView.a();
        }
        return MMJSResponse.a();
    }

    public MMJSResponse getAvailableSchemes(Map map) {
        Context context = (Context) this.b.get();
        if (context == null) {
            return null;
        }
        HandShake a = HandShake.a(context);
        MMJSResponse mMJSResponse = new MMJSResponse();
        mMJSResponse.c = 1;
        mMJSResponse.d = a.c(context);
        return mMJSResponse;
    }

    public MMJSResponse getInfo(Map map) {
        Context context = (Context) this.b.get();
        if (context == null) {
            return null;
        }
        MMJSResponse mMJSResponse = new MMJSResponse();
        mMJSResponse.c = 1;
        mMJSResponse.d = a(context);
        return mMJSResponse;
    }

    public MMJSResponse getLocation(Map map) {
        if (MMRequest.l == null) {
            return MMJSResponse.b("location object has not been set");
        }
        Object jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("lat", Double.toString(MMRequest.l.getLatitude()));
                jSONObject.put("long", Double.toString(MMRequest.l.getLongitude()));
                if (MMRequest.l.hasAccuracy()) {
                    jSONObject.put("ha", Float.toString(MMRequest.l.getAccuracy()));
                    jSONObject.put("va", Float.toString(MMRequest.l.getAccuracy()));
                }
                if (MMRequest.l.hasSpeed()) {
                    jSONObject.put("spd", Float.toString(MMRequest.l.getSpeed()));
                }
                if (MMRequest.l.hasBearing()) {
                    jSONObject.put("brg", Float.toString(MMRequest.l.getBearing()));
                }
                if (MMRequest.l.hasAltitude()) {
                    jSONObject.put("alt", Double.toString(MMRequest.l.getAltitude()));
                }
                jSONObject.put("tslr", Long.toString(MMRequest.l.getTime()));
            } catch (JSONException e) {
                th = e;
                MMLog.e(q, "Bridge getLocation json exception: ", th);
                MMJSResponse mMJSResponse = new MMJSResponse();
                mMJSResponse.c = 1;
                mMJSResponse.d = jSONObject;
                return mMJSResponse;
            }
        } catch (JSONException e2) {
            JSONObject jSONObject2 = null;
            Throwable th2 = e2;
            MMLog.e(q, "Bridge getLocation json exception: ", th2);
            MMJSResponse mMJSResponse2 = new MMJSResponse();
            mMJSResponse2.c = 1;
            mMJSResponse2.d = jSONObject;
            return mMJSResponse2;
        }
        MMJSResponse mMJSResponse22 = new MMJSResponse();
        mMJSResponse22.c = 1;
        mMJSResponse22.d = jSONObject;
        return mMJSResponse22;
    }

    public MMJSResponse getOrientation(Map map) {
        Context context = (Context) this.b.get();
        if (context == null) {
            return null;
        }
        int i = context.getResources().getConfiguration().orientation;
        int orientation = i == 0 ? ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getOrientation() : i;
        MMJSResponse mMJSResponse = new MMJSResponse();
        mMJSResponse.c = 1;
        switch (orientation) {
            case GoogleScorer.CLIENT_PLUS:
                mMJSResponse.d = DeviceInfo.ORIENTATION_LANDSCAPE;
                break;
            default:
                mMJSResponse.d = DeviceInfo.ORIENTATION_PORTRAIT;
                break;
        }
        return mMJSResponse;
    }

    public MMJSResponse isSchemeAvailable(Map map) {
        String str;
        String str2 = (String) map.get("scheme");
        str = str2.contains(":") ? str2 : str2 + ":";
        Context context = (Context) this.b.get();
        if (!(str == null || context == null)) {
            if (context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str)), Cast.MAX_MESSAGE_LENGTH).size() > 0) {
                return MMJSResponse.a(str);
            }
        }
        return MMJSResponse.b(str);
    }

    public MMJSResponse openAppStore(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get("appId");
        String str2 = (String) map.get(AdTrackerConstants.REFERRER);
        if (context == null || str == null) {
            return null;
        }
        MMLog.b(q, String.format("Opening marketplace: %s", new Object[]{str}));
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.MANUFACTURER.equals("Amazon")) {
            intent.setData(Uri.parse(String.format("amzn://apps/android?p=%s", new Object[]{str})));
        } else if (str2 != null) {
            intent.setData(Uri.parse(String.format(Manager.ACTION_URL_PLACEHOLDER, new Object[]{str, URLEncoder.encode(str2)})));
        } else {
            intent.setData(Uri.parse("market://details?id=" + str));
        }
        Event.a(context, Event.INTENT_MARKET, b((String) map.get("PROPERTY_EXPANDING")));
        IntentUtils.c(context, intent);
        return MMJSResponse.a();
    }

    public MMJSResponse openUrl(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL);
        if (context == null || str == null) {
            return MMJSResponse.b("URL could not be opened");
        }
        MMLog.b(q, String.format("Opening: %s", new Object[]{str}));
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if (intent.getScheme().startsWith(MediaService.DEFAULT_MEDIA_DELIVERY) || intent.getScheme().startsWith("https")) {
            Event.a(context, Event.INTENT_EXTERNAL_BROWSER, b((String) map.get("PROPERTY_EXPANDING")));
        }
        IntentUtils.c(context, intent);
        return MMJSResponse.a("Overlay opened");
    }

    public MMJSResponse setMMDID(Map map) {
        String str = (String) map.get("mmdid");
        Context context = (Context) this.b.get();
        if (context == null) {
            return null;
        }
        HandShake.a(context).d(context, str);
        return MMJSResponse.a("MMDID is set");
    }

    public MMJSResponse showMap(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get("location");
        if (context == null || str == null) {
            return null;
        }
        MMLog.b(q, String.format("Launching Google Maps: %s", new Object[]{str}));
        IntentUtils.c(context, new Intent("android.intent.action.VIEW", Uri.parse("geo:" + str)));
        Event.a(context, Event.INTENT_MAPS, b((String) map.get("PROPERTY_EXPANDING")));
        return MMJSResponse.a("Map successfully opened");
    }

    public MMJSResponse tweet(Map map) {
        return null;
    }
}