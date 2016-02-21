package me.kiip.internal.i;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.event.Event;
import com.brightcove.player.media.CuePointFields;
import com.brightcove.player.model.Video.Fields;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.millennialmedia.android.MMRequest;
import com.zeptolab.zbuild.ZBuildConfig;
import java.text.ParseException;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import me.kiip.internal.a.l;
import me.kiip.internal.a.m;
import me.kiip.internal.a.n.b;
import me.kiip.internal.k.c;
import me.kiip.internal.k.d;
import me.kiip.internal.k.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a {
    private static final me.kiip.internal.j.a a;
    private final Handler b;
    private final Runnable c;
    private final int d;
    private m e;
    private final ConnectivityManager f;
    private final LocationManager g;
    private final String h;
    private final String i;
    private final String j;
    private String k;
    private final JSONObject l;
    private final JSONObject m;
    private final JSONObject n;
    private final JSONObject o;
    private final JSONObject p;
    private JSONObject q;
    private JSONArray r;

    class AnonymousClass_2 implements b {
        final /* synthetic */ String a;
        final /* synthetic */ me.kiip.internal.i.a.a b;

        AnonymousClass_2(String str, me.kiip.internal.i.a.a aVar) {
            this.a = str;
            this.b = aVar;
        }

        public void a(JSONObject jSONObject) {
            if (this.b != null) {
                this.b.a(jSONObject);
            }
        }
    }

    class AnonymousClass_3 implements me.kiip.internal.a.n.a {
        final /* synthetic */ String a;
        final /* synthetic */ JSONArray b;
        final /* synthetic */ me.kiip.internal.i.a.a c;

        AnonymousClass_3(String str, JSONArray jSONArray, me.kiip.internal.i.a.a aVar) {
            this.a = str;
            this.b = jSONArray;
            this.c = aVar;
        }

        public void a(Exception exception) {
            int length = this.b.length();
            int i = 0;
            while (i < length) {
                a.this.r.put(this.b.opt(i));
                i++;
            }
            if (this.c != null) {
                this.c.a(exception);
            }
        }
    }

    public static interface a {
        void a_(Exception exception);

        void a_(JSONObject jSONObject);
    }

    static {
        a = new me.kiip.internal.j.a();
    }

    a(Context context, String str, String str2, String str3, String str4, m mVar) {
        this.c = new Runnable() {
            public void run() {
                a.this.b(null);
            }
        };
        this.d = 30000;
        this.l = new JSONObject();
        this.m = new JSONObject();
        this.n = new JSONObject();
        this.o = new JSONObject();
        this.p = new JSONObject();
        this.r = new JSONArray();
        this.h = str;
        this.i = str3;
        this.j = str4;
        this.e = mVar;
        this.b = new Handler();
        this.f = (ConnectivityManager) context.getSystemService("connectivity");
        this.g = (LocationManager) context.getSystemService("location");
        JSONObject jSONObject = this.l;
        try {
            jSONObject.put("app_key", str3);
            jSONObject.put("versionCode", me.kiip.internal.k.a.a(context));
            jSONObject.put("versionName", me.kiip.internal.k.a.b(context));
            jSONObject.put("version", me.kiip.internal.k.a.a(context) + " " + me.kiip.internal.k.a.b(context));
        } catch (JSONException e) {
        }
        jSONObject = this.m;
        try {
            jSONObject.put(Fields.NAME, "Kiip Android");
            jSONObject.put("version", str2);
        } catch (JSONException e2) {
        }
        jSONObject = this.n;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        d.a(context, displayMetrics);
        try {
            jSONObject.put(AnalyticsEvent.EVENT_ID, c.a(context));
            jSONObject.put("manufacturer", Build.MANUFACTURER);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("os", "Android " + VERSION.RELEASE);
            jSONObject.put("lang", Locale.getDefault().getLanguage());
            jSONObject.put("locale", Locale.getDefault().toString());
            jSONObject.put("timezone", TimeZone.getDefault().getID());
            jSONObject.put("resolution", displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
            jSONObject.put("density", (double) displayMetrics.density);
            jSONObject.put("kiipsake", c.a(context, "me.kiip.kiipsake"));
        } catch (JSONException e3) {
        }
        try {
            this.o.put("carrier", ((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getNetworkOperatorName());
        } catch (JSONException e4) {
        }
    }

    static String a_() {
        return UUID.randomUUID().toString();
    }

    private l a_(String str, String str2, JSONObject jSONObject, a aVar) {
        this.b.removeCallbacks(this.c);
        Date date = new Date();
        String str3 = this.h + str2;
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        int length = this.r.length();
        int i = 0;
        while (i < length) {
            jSONArray.put(this.r.opt(i));
            i++;
        }
        this.r = new JSONArray();
        h();
        i();
        try {
            jSONObject2.put("session_id", this.k);
            jSONObject2.put("date", a.format(date));
            jSONObject2.put(Event.SOURCE, "application");
            jSONObject2.put("app", this.l);
            jSONObject2.put("sdk", this.m);
            jSONObject2.put("location", this.q);
            jSONObject2.put("device", this.n);
            jSONObject2.put("connection", this.o);
            jSONObject2.put("user", this.p);
            jSONObject2.put("events", jSONArray);
            jSONObject2.put("moment", jSONObject);
        } catch (JSONException e) {
        }
        l bVar = new me.kiip.internal.n.b(1, str3, jSONObject2, new AnonymousClass_2(str3, aVar), new AnonymousClass_3(str3, jSONArray, aVar));
        bVar.a(this.i, this.j);
        this.e.a(bVar);
        return bVar;
    }

    private void a_(Location location) {
        if (this.q == null) {
            this.q = new JSONObject();
        }
        try {
            this.q.put("lat", location.getLatitude());
            this.q.put("lng", location.getLongitude());
            this.q.put("accuracy", (double) location.getAccuracy());
            this.q.put(CuePointFields.TIME, a.format(Long.valueOf(location.getTime())));
        } catch (JSONException e) {
        }
    }

    private void h() {
        try {
            this.o.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, me.kiip.internal.k.b.a(this.f));
        } catch (JSONException e) {
        }
    }

    private void i() {
        try {
            Location a = e.a(this.g, (float) (System.currentTimeMillis() - 86400000));
            if (a != null) {
                a(a);
            }
        } catch (SecurityException e) {
        }
    }

    public l a_(String str, Double d, a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsEvent.EVENT_ID, str);
            jSONObject.put(Constants.NATIVE_AD_VALUE_ELEMENT, d);
        } catch (JSONException e) {
        }
        return a("POST", "/moment/save", jSONObject, aVar);
    }

    public l a_(a aVar) {
        return a("POST", "/app/cache", null, aVar);
    }

    public void a_(String str) {
        this.k = str;
    }

    public void a_(String str, Long l, Long l2, Bundle bundle) {
        Object obj = null;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsEvent.EVENT_ID, str);
            jSONObject.put("start", l != null ? a.format(l) : null);
            String str2 = "end";
            if (l2 != null) {
                obj = a.format(l2);
            }
            jSONObject.put(str2, obj);
            if (bundle != null) {
                Iterator it = bundle.keySet().iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    jSONObject.put(str3, bundle.get(str3));
                }
            }
        } catch (JSONException e) {
        }
        this.r.put(jSONObject);
        this.b.removeCallbacks(this.c);
        this.b.postDelayed(this.c, 30000);
    }

    public void a_(Date date) {
        try {
            this.p.put("birthday", date != null ? a.format(date) : null);
        } catch (JSONException e) {
        }
    }

    public void a_(String[] strArr) {
        JSONArray jSONArray = new JSONArray();
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            jSONArray.put(strArr[i]);
            i++;
        }
        try {
            this.m.put("capabilities", jSONArray);
        } catch (JSONException e) {
        }
    }

    public l b(a aVar) {
        return a("POST", "/moment/save", (JSONObject) 0, aVar);
    }

    public m b() {
        return this.e;
    }

    void b(String str) {
        try {
            this.m.put("wrapper", str);
        } catch (JSONException e) {
        }
    }

    public String c() {
        return this.n.optString(AnalyticsEvent.EVENT_ID);
    }

    public void c(String str) {
        try {
            this.p.put(MMRequest.KEY_GENDER, str);
        } catch (JSONException e) {
        }
    }

    public String d() {
        return this.k;
    }

    public String[] e() {
        JSONArray optJSONArray = this.m.optJSONArray("capabilities");
        if (optJSONArray == null) {
            return null;
        }
        String[] strArr = new String[optJSONArray.length()];
        int i = 0;
        while (i < optJSONArray.length()) {
            strArr[i] = optJSONArray.optString(i);
            i++;
        }
        return strArr;
    }

    public String f() {
        return this.p.isNull(MMRequest.KEY_GENDER) ? null : this.p.optString(MMRequest.KEY_GENDER);
    }

    public Date g() {
        if (this.p.isNull("birthday")) {
            return null;
        }
        try {
            return a.parse(this.p.optString("birthday"));
        } catch (ParseException e) {
            return null;
        }
    }
}