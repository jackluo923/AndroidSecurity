package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;
import com.brightcove.player.model.Video.Fields;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.b;
import com.chartboost.sdk.Libraries.c;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Libraries.f.a;
import com.chartboost.sdk.Libraries.f.g;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class j {
    private String a;
    private JSONObject b;
    private Map c;
    private Map d;
    private String e;
    private boolean f;
    private a g;

    public j(String str) {
        this.f = false;
        this.g = null;
        this.a = str;
        this.e = "POST";
    }

    public static j a(JSONObject jSONObject) {
        try {
            j jVar = new j(jSONObject.getString("path"));
            jVar.e = jSONObject.getString("method");
            jVar.c = e.a(jSONObject.optJSONObject("query"));
            jVar.b = jSONObject.optJSONObject("body");
            jVar.d = e.a(jSONObject.optJSONObject(Fields.HEADERS));
            jVar.f = jSONObject.getBoolean("ensureDelivery");
            return jVar;
        } catch (Exception e) {
            CBLogging.c("CBAPIRequest", "Unable to deserialize failed request", e);
            return null;
        }
    }

    private void b(Context context) {
        int width;
        int height;
        Throwable th;
        int i = 0;
        try {
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Rect rect = new Rect();
                activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                if (VERSION.SDK_INT < 9) {
                    rect.top = 0;
                }
                width = rect.width();
                try {
                    height = rect.height();
                    i = width;
                } catch (Exception e) {
                    height = width;
                    th = e;
                    CBLogging.b("CBAPIRequest", "Exception getting activity size", th);
                    width = height;
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    height = defaultDisplay.getWidth();
                    width = height;
                    height = defaultDisplay.getHeight();
                    i = height;
                    a("w", AdTrackerConstants.BLANK + width);
                    a("h", AdTrackerConstants.BLANK + i);
                }
            } else {
                height = i;
            }
            width = i;
            i = height;
        } catch (Exception e2) {
            th = e2;
            height = i;
            CBLogging.b("CBAPIRequest", "Exception getting activity size", th);
            width = height;
            Display defaultDisplay2 = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            height = defaultDisplay2.getWidth();
            width = height;
            height = defaultDisplay2.getHeight();
            i = height;
            a("w", AdTrackerConstants.BLANK + width);
            a("h", AdTrackerConstants.BLANK + i);
        }
        Display defaultDisplay22 = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        height = defaultDisplay22.getWidth();
        if (width <= 0 || width > height) {
            width = height;
        }
        height = defaultDisplay22.getHeight();
        if (i <= 0 || i > height) {
            i = height;
        }
        a("w", AdTrackerConstants.BLANK + width);
        a("h", AdTrackerConstants.BLANK + i);
    }

    public void a() {
        a("identity", c.b());
        c.a c = c.c();
        if (c.b()) {
            a("tracking", Integer.valueOf(c.a()));
        }
    }

    public void a(Context context) {
        a("app", CBPreferences.getInstance().getAppID());
        if ("sdk".equals(Build.PRODUCT)) {
            a("model", (Object)"Android Simulator");
        } else {
            a("model", Build.MODEL);
        }
        a("device_type", Build.MANUFACTURER + " " + Build.MODEL);
        a("os", "Android " + VERSION.RELEASE);
        a("country", Locale.getDefault().getCountry());
        a("language", Locale.getDefault().getLanguage());
        a("sdk", com.mixpanel.android.mpmetrics.j.a);
        a(AdDatabaseHelper.COLUMN_TIMESTAMP, String.valueOf(Long.valueOf(new Date().getTime() / 1000).intValue()));
        a("session", Integer.valueOf(CBUtility.a().getInt("cbPrefSessionCount", 0)));
        int b = l.b();
        if (b != -1) {
            a("reachability", Integer.valueOf(b));
        }
        b(context);
        a("scale", AdTrackerConstants.BLANK + context.getResources().getDisplayMetrics().density);
        try {
            Object packageName = context.getPackageName();
            a("bundle", context.getPackageManager().getPackageInfo(packageName, Cast.MAX_NAMESPACE_LENGTH).versionName);
            a("bundle_id", packageName);
        } catch (Exception e) {
            CBLogging.a("CBAPIRequest", "Exception raised getting package mager object", e);
        }
    }

    public void a(String str, Object obj) {
        if (this.b == null) {
            this.b = new JSONObject();
        }
        try {
            this.b.put(str, obj);
        } catch (JSONException e) {
            CBLogging.a("CBAPIRequest", "Error adding body argument", e);
        }
    }

    public void a(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        this.d.put(str, str2);
    }

    public void a(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            try {
                if (jSONObject.getString(str) != null) {
                    a(str, jSONObject.optString(str));
                }
            } catch (JSONException e) {
            }
        }
    }

    public void a(boolean z) {
        this.f = z;
    }

    public void a(g... gVarArr) {
        this.g = f.a(gVarArr);
    }

    public String b() {
        return (this.a.startsWith("/") ? AdTrackerConstants.BLANK : "/") + this.a + CBUtility.a(this.c);
    }

    public void b(String str, String str2) {
        String b = b.b(b.a(String.format(Locale.US, "%s %s\n%s\n%s", new Object[]{this.e, b(), str2, c()}).getBytes()));
        a("X-Chartboost-App", str);
        a("X-Chartboost-Signature", b);
    }

    public String c() {
        return this.b.toString();
    }

    public JSONObject d() {
        return this.b;
    }

    public Map e() {
        return this.d;
    }

    public boolean f() {
        return this.f;
    }

    public a g() {
        return this.g;
    }

    public JSONObject h() {
        return e.a(new e.a[]{e.a("path", this.a), e.a("method", this.e), e.a("query", e.a(this.c)), e.a("body", this.b), e.a(Fields.HEADERS, e.a(this.d)), e.a("ensureDelivery", Boolean.valueOf(this.f))});
    }
}