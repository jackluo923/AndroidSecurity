package com.millennialmedia.android;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

class AdProperties {
    private static final String b;
    WeakReference a;

    static {
        b = AdProperties.class.getName();
    }

    AdProperties(Context context) {
        this.a = new WeakReference(context);
    }

    private JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("android.permission.ACCESS_FINE_LOCATION", a().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0);
        return jSONObject;
    }

    private JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(MMLayout.KEY_HEIGHT, b());
        jSONObject.put(MMLayout.KEY_WIDTH, c());
        return jSONObject;
    }

    private JSONObject h() {
        JSONObject jSONObject = new JSONObject();
        Context a = a();
        jSONObject.put(Event.INTENT_TXT_MESSAGE, Boolean.parseBoolean(MMSDK.t(a)));
        jSONObject.put(Event.INTENT_PHONE_CALL, Boolean.parseBoolean(MMSDK.u(a)));
        jSONObject.put(Event.INTENT_CALENDAR_EVENT, MMSDK.b());
        jSONObject.put("storePicture", false);
        jSONObject.put("inlineVideo", true);
        return jSONObject;
    }

    Context a() {
        return (Context) this.a.get();
    }

    String b() {
        DisplayMetrics displayMetrics = a().getResources().getDisplayMetrics();
        return String.valueOf((int) (((float) displayMetrics.heightPixels) / displayMetrics.density));
    }

    String c() {
        DisplayMetrics displayMetrics = a().getResources().getDisplayMetrics();
        return String.valueOf((int) (((float) displayMetrics.widthPixels) / displayMetrics.density));
    }

    String d() {
        return b();
    }

    String e() {
        return c();
    }

    public JSONObject getAdProperties(View view) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("screen", g());
            jSONObject.put(AdDatabaseHelper.TABLE_AD, Utils.a(view));
            jSONObject.put("do", MMSDK.v(a()));
            jSONObject.put("supports", h());
            jSONObject.put("device", BridgeMMDevice.a(a()));
            jSONObject.put("permissions", f());
            jSONObject.put("maxSize", g());
        } catch (JSONException e) {
            MMLog.e(b, "Error when building ad properties", e);
        }
        return jSONObject;
    }
}