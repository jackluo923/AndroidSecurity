package com.mixpanel.android.mpmetrics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.util.Log;
import com.brightcove.player.media.CuePointFields;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TimeZone;
import java.util.concurrent.Future;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class j {
    public static final String a = "4.0.0";
    private static final String b = "MixpanelAPI";
    private static final String c = "yyyy-MM-dd'T'HH:mm:ss";
    private static final Map n;
    private static final z o;
    private static Future p;
    private final Context d;
    private final a e;
    private final String f;
    private final d g;
    private final w h;
    private final Object i;
    private int j;
    private Bitmap k;
    private int l;
    private final a m;

    static interface b {
        void a(j jVar);
    }

    private static class a {
        private final ReentrantLock a;
        private boolean b;
        private long c;
        private final long d;

        private a(long j) {
            this.a = new ReentrantLock();
            this.d = j;
        }

        public boolean a_() {
            if (!this.a.tryLock()) {
                return false;
            }
            if (this.c > 0 && System.currentTimeMillis() - this.c > this.d) {
                b();
            }
            if (this.b) {
                this.a.unlock();
                return false;
            } else {
                this.c = System.currentTimeMillis();
                this.b = true;
                this.a.unlock();
                return true;
            }
        }

        public void b() {
            if (this.a.tryLock()) {
                this.b = false;
                this.c = 0;
                this.a.unlock();
            }
        }
    }

    public static interface c {
        void a();

        void a(double d, JSONObject jSONObject);

        void a(aa aaVar, Activity activity);

        void a(ab abVar);

        void a(ab abVar, Activity activity);

        void a(String str);

        void a(String str, double d);

        void a(String str, Object obj);

        void a(String str, JSONArray jSONArray);

        void a(Map map);

        void a(JSONObject jSONObject);

        void b();

        void b(String str);

        void b(String str, Object obj);

        void b(JSONObject jSONObject);

        void c_();

        void c_(String str);

        void c_(String str, Object obj);

        String d();

        void d(String str);

        com.mixpanel.android.mpmetrics.j.c e(String str);
    }

    private class d implements com.mixpanel.android.mpmetrics.j.c {
        private d() {
        }

        public void a() {
            b("$transactions");
        }

        public void a(double d, JSONObject jSONObject) {
            Date date = new Date();
            DateFormat simpleDateFormat = new SimpleDateFormat(c);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("$amount", d);
                jSONObject2.put("$time", simpleDateFormat.format(date));
                if (jSONObject != null) {
                    Iterator keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String str = (String) keys.next();
                        jSONObject2.put(str, jSONObject.get(str));
                    }
                }
                c("$transactions", jSONObject2);
            } catch (JSONException e) {
                Log.e(b, "Exception creating new charge", e);
            }
        }

        public void a(aa aaVar, Activity activity) {
            Bitmap bitmap = null;
            int i = -1;
            if (VERSION.SDK_INT >= 10 && e.b(activity.getApplicationContext())) {
                synchronized (j.this.i) {
                    if (activity.hashCode() == j.this.j) {
                        bitmap = j.this.k;
                        i = j.this.l;
                    }
                    j.this.k = null;
                    j.this.l = -1;
                    j.this.j = -1;
                }
                if (bitmap != null) {
                    SurveyState.a(aaVar, activity, d(), j.this.f, bitmap, i);
                } else {
                    c.a(activity, new o(this, aaVar, activity));
                }
            }
        }

        public void a(ab abVar) {
            if (j.this.m.a()) {
                String d = j.this.f;
                String d2 = d();
                ab lVar = new l(this, abVar);
                if (abVar == null) {
                    Log.i(b, "Skipping survey check, because callback is null.");
                } else if (d2 == null) {
                    Log.i(b, "Skipping survey check, because user has not yet been identified.");
                } else if (VERSION.SDK_INT < 10) {
                    Log.i(b, "Surveys not supported on OS older than API 10, reporting null.");
                    abVar.a(null);
                } else {
                    j.this.e.a(new com.mixpanel.android.mpmetrics.a.b(lVar, d2, d));
                }
            }
        }

        public void a(ab abVar, Activity activity) {
            synchronized (j.this.i) {
                j.this.k = null;
                j.this.l = -1;
                j.this.j = -1;
            }
            a(new m(this, activity, abVar));
        }

        public void a(String str) {
            j.this.h.b(str);
            j.this.i();
        }

        public void a(String str, double d) {
            Map hashMap = new HashMap();
            hashMap.put(str, Double.valueOf(d));
            a(hashMap);
        }

        public void a(String str, Object obj) {
            try {
                a(new JSONObject().put(str, obj));
            } catch (JSONException e) {
                Log.e(b, "set", e);
            }
        }

        public void a(String str, JSONArray jSONArray) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str, jSONArray);
                j.this.c(d("$union", jSONObject));
            } catch (JSONException e) {
                Log.e(b, "Exception unioning a property");
            }
        }

        public void a(Map map) {
            try {
                j.this.c(d("$add", new JSONObject(map)));
            } catch (JSONException e) {
                Log.e(b, "Exception incrementing properties", e);
            }
        }

        public void a(JSONObject jSONObject) {
            try {
                j.this.c(d("$set", jSONObject));
            } catch (JSONException e) {
                Log.e(b, "Exception setting people properties", e);
            }
        }

        public void b() {
            try {
                j.this.c(d("$delete", JSONObject.NULL));
            } catch (JSONException e) {
                Log.e(b, "Exception deleting a user");
            }
        }

        public void b(String str) {
            try {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(str);
                j.this.c(d("$unset", jSONArray));
            } catch (JSONException e) {
                Log.e(b, "Exception unsetting a property", e);
            }
        }

        public void b(String str, Object obj) {
            try {
                b(new JSONObject().put(str, obj));
            } catch (JSONException e) {
                Log.e(b, "set", e);
            }
        }

        public void b(JSONObject jSONObject) {
            try {
                j.this.c(d("$set_once", jSONObject));
            } catch (JSONException e) {
                Log.e(b, "Exception setting people properties");
            }
        }

        public void c() {
            j.this.h.g();
            a("$android_devices", new JSONArray());
        }

        public void c(String str) {
            if (e.a(j.this.d)) {
                String h = j.this.h.h();
                if (h == null) {
                    try {
                        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                        intent.putExtra("app", PendingIntent.getBroadcast(j.this.d, 0, new Intent(), 0));
                        intent.putExtra("sender", str);
                        j.this.d.startService(intent);
                    } catch (SecurityException e) {
                        Log.w(b, e);
                    }
                } else {
                    j.a(new p(this, h));
                }
            } else {
                Log.i(b, "Can't start push notification service. Push notifications will not work.");
                Log.i(b, "See log tagged " + e.a + " above for details.");
            }
        }

        public void c(String str, Object obj) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str, obj);
                j.this.c(d("$append", jSONObject));
            } catch (JSONException e) {
                Log.e(b, "Exception appending a property", e);
            }
        }

        public String d_() {
            return j.this.h.d();
        }

        public JSONObject d_(String str, Object obj) {
            JSONObject jSONObject = new JSONObject();
            String d = d();
            jSONObject.put(str, obj);
            jSONObject.put("$token", j.this.f);
            jSONObject.put("$time", System.currentTimeMillis());
            if (d != null) {
                jSONObject.put("$distinct_id", d());
            }
            return jSONObject;
        }

        public void d_(String str) {
            if (d() != null) {
                j.this.h.c(str);
                try {
                    a("$android_devices", new JSONArray("[" + str + "]"));
                } catch (JSONException e) {
                    Log.e(b, "set push registration id error", e);
                }
            }
        }

        public com.mixpanel.android.mpmetrics.j.c e(String str) {
            return str == null ? null : new q(this, str);
        }
    }

    static {
        n = new HashMap();
        o = new z();
    }

    j(Context context, Future future, String str) {
        this.i = new Object();
        this.j = -1;
        this.m = new a(null);
        this.d = context;
        this.f = str;
        this.g = new d(null);
        this.e = g();
        this.h = new w(future, o.a(context, "com.mixpanel.android.mpmetrics.MixpanelAPI_" + str, new k(this)));
        f();
    }

    public static j a(Context context, String str) {
        j jVar = null;
        if (!(str == null || context == null)) {
            synchronized (n) {
                Map map;
                Context applicationContext = context.getApplicationContext();
                if (p == null) {
                    p = o.a(context, "com.mixpanel.android.mpmetrics.ReferralInfo", null);
                }
                Map map2 = (Map) n.get(str);
                if (map2 == null) {
                    HashMap hashMap = new HashMap();
                    n.put(str, hashMap);
                    HashMap hashMap2 = hashMap;
                } else {
                    map = map2;
                }
                jVar = (j) map.get(applicationContext);
                if (jVar == null) {
                    jVar = new j(applicationContext, p, str);
                    map.put(applicationContext, jVar);
                }
            }
        }
        return jVar;
    }

    @Deprecated
    public static void a(Context context, long j) {
        Log.i(b, "MixpanelAPI.setFlushInterval is deprecated.\n    To set a custom Mixpanel flush interval for your application, add\n    <meta-data android:name=\"com.mixpanel.android.MPConfig.FlushInterval\" android:value=\"YOUR_INTERVAL\" />\n    to the <application> section of your AndroidManifest.xml.");
        a.a(context).a(j);
    }

    @Deprecated
    public static void a(Context context, boolean z) {
        Log.i(b, "MixpanelAPI.enableFallbackServer is deprecated.\n    To disable fallback in your application, add\n    <meta-data android:name=\"com.mixpanel.android.MPConfig.DisableFallback\" android:value=\"true\" />\n    to the <application> section of your AndroidManifest.xml.");
        a.a(context).a(!z);
    }

    static void a(b bVar) {
        synchronized (n) {
            Iterator it = n.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((Map) it.next()).values().iterator();
                while (it2.hasNext()) {
                    bVar.a((j) it2.next());
                }
            }
        }
    }

    private void a(JSONArray jSONArray) {
        int i = 0;
        while (i < jSONArray.length()) {
            try {
                this.e.a(jSONArray.getJSONObject(i));
            } catch (JSONException e) {
                Log.e(b, "Malformed people record stored pending identity, will not send it.", e);
            }
            i++;
        }
    }

    private void c(JSONObject jSONObject) {
        if (jSONObject.has("$distinct_id")) {
            this.e.a(jSONObject);
        } else {
            this.h.a(jSONObject);
        }
    }

    private void i() {
        JSONArray e = this.h.e();
        if (e != null) {
            a(e);
        }
    }

    public void a() {
        this.e.b();
    }

    public void a(String str) {
        this.h.a(str);
    }

    public void a(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            Iterator it = this.h.b().entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                jSONObject2.put((String) entry.getKey(), (String) entry.getValue());
            }
            JSONObject a = this.h.a();
            it = a.keys();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                jSONObject2.put(str2, a.get(str2));
            }
            jSONObject2.put(CuePointFields.TIME, System.currentTimeMillis() / 1000);
            jSONObject2.put("distinct_id", b());
            if (jSONObject != null) {
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    str2 = (String) keys.next();
                    jSONObject2.put(str2, jSONObject.get(str2));
                }
            }
            this.e.a(new a(str, jSONObject2, this.f));
        } catch (JSONException e) {
            Log.e(b, "Exception tracking event " + str, e);
        }
    }

    public void a(JSONObject jSONObject) {
        this.h.b(jSONObject);
    }

    public String b() {
        return this.h.c();
    }

    public void b(String str) {
        this.h.d(str);
    }

    public void b(JSONObject jSONObject) {
        this.h.c(jSONObject);
    }

    public void c() {
        this.h.i();
    }

    public c d() {
        return this.g;
    }

    public void e() {
        this.e.a();
    }

    @TargetApi(14)
    void f() {
        if (VERSION.SDK_INT >= 14 && h.a(this.d).k() && this.d.getApplicationContext() instanceof Application) {
            ((Application) this.d.getApplicationContext()).registerActivityLifecycleCallbacks(new r(this));
        }
    }

    a g() {
        return a.a(this.d);
    }

    void h() {
        this.h.f();
    }
}