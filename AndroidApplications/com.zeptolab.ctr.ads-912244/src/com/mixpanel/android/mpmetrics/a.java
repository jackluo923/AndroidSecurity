package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import com.brightcove.player.media.MediaService;
import com.google.android.gms.tagmanager.DataLayer;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class a {
    private static int e = 0;
    private static int f = 0;
    private static int g = 0;
    private static int h = 0;
    private static int i = 0;
    private static int j = 0;
    private static int k = 0;
    private static final String l = "MixpanelAPI";
    private static final Map m;
    private final AtomicBoolean a;
    private final c b;
    private final Context c;
    private final h d;

    static class a {
        private final String a;
        private final JSONObject b;
        private final String c;

        public a(String str, JSONObject jSONObject, String str2) {
            this.a = str;
            this.b = jSONObject;
            this.c = str2;
        }

        public String a_() {
            return this.a;
        }

        public JSONObject b() {
            return this.b;
        }

        public String c() {
            return this.c;
        }
    }

    public static class b {
        private final ab a;
        private final String b;
        private final String c;

        public b(ab abVar, String str, String str2) {
            this.a = abVar;
            this.b = str;
            this.c = str2;
        }

        public ab a() {
            return this.a;
        }

        public String b_() {
            return this.b;
        }

        public String c() {
            return this.c;
        }
    }

    private class c {
        private final Object b;
        private Handler c;
        private long d;
        private long e;
        private long f;
        private ae g;

        private class a extends Handler {
            private i b;
            private final Set c;
            private long d;
            private boolean e;

            public a(Looper looper) {
                super(looper);
                this.b = null;
                this.c = new HashSet();
                this.e = c.this.d.d();
                this.d = (long) c.this.d.b();
                c.this.g = new ae(c.this.c);
            }

            private aa a_(com.mixpanel.android.mpmetrics.a.b bVar) {
                String a = a(bVar.c(), bVar.b());
                if (a == null) {
                    return null;
                }
                try {
                    aa aaVar;
                    JSONArray jSONArray = new JSONObject(a).getJSONArray("surveys");
                    int i = 0;
                    boolean z = false;
                    while (aaVar == null && i < jSONArray.length()) {
                        try {
                            aa aaVar2 = new aa(jSONArray.getJSONObject(i));
                            if (!this.c.contains(Integer.valueOf(aaVar2.b()))) {
                                aaVar = aaVar2;
                            }
                        } catch (JSONException e) {
                            Log.i(l, "Received a strange response from surveys service: " + jSONArray.toString());
                            z = false;
                        } catch (a e2) {
                            Log.i(l, "Received a strange response from surveys service: " + jSONArray.toString());
                            z = false;
                        }
                        i++;
                    }
                    return aaVar;
                } catch (JSONException e3) {
                    Log.e(l, "Mixpanel endpoint returned invalid JSON " + a);
                    return null;
                }
            }

            private String a_(String str, String str2) {
                try {
                    String str3 = "?version=1&lib=android&token=" + URLEncoder.encode(str, "utf-8") + "&distinct_id=" + URLEncoder.encode(str2, "utf-8");
                    com.mixpanel.android.mpmetrics.y.a a = c.this.e().a(c.this.d.g() + str3, c.this.d.j() + str3);
                    return a.a() != com.mixpanel.android.mpmetrics.y.b.a ? null : a.b();
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException("Mixpanel library requires utf-8 string encoding to be available", e);
                }
            }

            private JSONObject a_(a aVar) {
                JSONObject jSONObject = new JSONObject();
                JSONObject b = aVar.b();
                JSONObject b2 = b();
                b2.put(MediaService.TOKEN, aVar.c());
                if (b != null) {
                    Iterator keys = b.keys();
                    while (keys.hasNext()) {
                        String str = (String) keys.next();
                        b2.put(str, b.get(str));
                    }
                }
                jSONObject.put(DataLayer.EVENT_KEY, aVar.a());
                jSONObject.put("properties", b2);
                return jSONObject;
            }

            private void a_(i iVar) {
                if (a()) {
                    c.this.a("Sending records to Mixpanel");
                    if (this.e) {
                        a(iVar, com.mixpanel.android.mpmetrics.i.b.a, c.this.d.e(), null);
                        a(iVar, com.mixpanel.android.mpmetrics.i.b.b, c.this.d.f(), null);
                    } else {
                        a(iVar, com.mixpanel.android.mpmetrics.i.b.a, c.this.d.e(), c.this.d.h());
                        a(iVar, com.mixpanel.android.mpmetrics.i.b.b, c.this.d.f(), c.this.d.i());
                    }
                } else {
                    c.this.a("Can't send data to mixpanel, because the device is not connected to the internet");
                }
            }

            private void a_(i iVar, com.mixpanel.android.mpmetrics.i.b bVar, String str, String str2) {
                String[] a = iVar.a(bVar);
                if (a != null) {
                    String str3 = a[0];
                    String str4 = a[1];
                    com.mixpanel.android.mpmetrics.y.b a2 = c.this.e().a(str4, str, str2).a();
                    if (a2 == com.mixpanel.android.mpmetrics.y.b.a) {
                        c.this.a("Posted to " + str);
                        c.this.a("Sent Message\n" + str4);
                        iVar.a(str3, bVar);
                    } else if (a2 != com.mixpanel.android.mpmetrics.y.b.b) {
                        iVar.a(str3, bVar);
                    } else if (!hasMessages(g)) {
                        sendEmptyMessageDelayed(g, this.d);
                    }
                }
            }

            private boolean a_() {
                boolean z = true;
                try {
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) c.this.c.getSystemService("connectivity")).getActiveNetworkInfo();
                    return (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) ? false : z;
                } catch (SecurityException e) {
                    return z;
                }
            }

            private JSONObject b() {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("mp_lib", "android");
                jSONObject.put("$lib_version", j.a);
                jSONObject.put("$os", "Android");
                jSONObject.put("$os_version", VERSION.RELEASE == null ? "UNKNOWN" : VERSION.RELEASE);
                jSONObject.put("$manufacturer", Build.MANUFACTURER == null ? "UNKNOWN" : Build.MANUFACTURER);
                jSONObject.put("$brand", Build.BRAND == null ? "UNKNOWN" : Build.BRAND);
                jSONObject.put("$model", Build.MODEL == null ? "UNKNOWN" : Build.MODEL);
                DisplayMetrics e = c.this.g.e();
                jSONObject.put("$screen_dpi", e.densityDpi);
                jSONObject.put("$screen_height", e.heightPixels);
                jSONObject.put("$screen_width", e.widthPixels);
                String a = c.this.g.a();
                if (a != null) {
                    jSONObject.put("$app_version", a);
                }
                Boolean valueOf = Boolean.valueOf(c.this.g.c());
                if (valueOf != null) {
                    jSONObject.put("$has_nfc", valueOf.booleanValue());
                }
                valueOf = Boolean.valueOf(c.this.g.d());
                if (valueOf != null) {
                    jSONObject.put("$has_telephone", valueOf.booleanValue());
                }
                a = c.this.g.g();
                if (a != null) {
                    jSONObject.put("$carrier", a);
                }
                valueOf = c.this.g.h();
                if (valueOf != null) {
                    jSONObject.put("$wifi", valueOf.booleanValue());
                }
                valueOf = c.this.g.i();
                if (valueOf != null) {
                    jSONObject.put("$bluetooth_enabled", valueOf);
                }
                a = c.this.g.j();
                if (a != null) {
                    jSONObject.put("$bluetooth_version", a);
                }
                return jSONObject;
            }

            public void handleMessage(Message message) {
                if (this.b == null) {
                    this.b = c.this.b(c.this.c);
                    this.b.a(System.currentTimeMillis() - ((long) c.this.d.c()), com.mixpanel.android.mpmetrics.i.b.a);
                    this.b.a(System.currentTimeMillis() - ((long) c.this.d.c()), com.mixpanel.android.mpmetrics.i.b.b);
                }
                int i = -1;
                try {
                    if (message.what == j) {
                        Long l = (Long) message.obj;
                        c.this.a("Changing flush interval to " + l);
                        this.d = l.longValue();
                        removeMessages(g);
                    } else if (message.what == k) {
                        Boolean bool = (Boolean) message.obj;
                        c.this.a("Setting fallback to " + bool);
                        this.e = bool.booleanValue();
                    } else if (message.what == e) {
                        JSONObject jSONObject = (JSONObject) message.obj;
                        c.this.a("Queuing people record for sending later");
                        c.this.a("    " + jSONObject.toString());
                        i = this.b.a(jSONObject, com.mixpanel.android.mpmetrics.i.b.b);
                    } else if (message.what == f) {
                        int a;
                        a aVar = (a) message.obj;
                        try {
                            JSONObject a2 = a(aVar);
                            c.this.a("Queuing event for sending later");
                            c.this.a("    " + a2.toString());
                            a = this.b.a(a2, com.mixpanel.android.mpmetrics.i.b.a);
                        } catch (JSONException e) {
                            Log.e(l, "Exception tracking event " + aVar.a(), e);
                            a = -1;
                        }
                        i = a;
                    } else if (message.what == g) {
                        c.this.a("Flushing queue due to scheduled or forced flush");
                        c.this.c();
                        a(this.b);
                    } else if (message.what == i) {
                        c.this.a("Checking Mixpanel for available surveys");
                        com.mixpanel.android.mpmetrics.a.b bVar = (com.mixpanel.android.mpmetrics.a.b) message.obj;
                        Runnable bVar2 = new b(this, bVar, a(bVar));
                        if (VERSION.SDK_INT >= 11) {
                            AsyncTask.execute(bVar2);
                        } else {
                            new Thread(bVar2).run();
                        }
                    } else if (message.what == h) {
                        Log.w(l, "Worker received a hard kill. Dumping all events and force-killing. Thread id " + Thread.currentThread().getId());
                        synchronized (c.this.b) {
                            this.b.a();
                            c.this.c = null;
                            Looper.myLooper().quit();
                        }
                    } else {
                        Log.e(l, "Unexpected message received by Mixpanel worker: " + message);
                    }
                    if (i >= c.this.d.a()) {
                        c.this.a("Flushing queue due to bulk upload limit");
                        c.this.c();
                        a(this.b);
                    } else if (i > 0 && !hasMessages(g)) {
                        c.this.a("Queue depth " + i + " - Adding flush in " + this.d);
                        if (this.d >= 0) {
                            sendEmptyMessageDelayed(g, this.d);
                        }
                    }
                } catch (RuntimeException e2) {
                    Throwable th;
                    th = e2;
                    Log.e(l, "Worker threw an unhandled exception", th);
                    synchronized (c.this.b) {
                    }
                    c.this.c = null;
                    try {
                        Looper.myLooper().quit();
                        Log.e(l, "Mixpanel will not process any more analytics messages", th);
                    } catch (Exception e3) {
                        Log.e(l, "Could not halt looper", e3);
                    }
                }
            }
        }

        public c() {
            this.b = new Object();
            this.d = 0;
            this.e = 0;
            this.f = -1;
            this.c = b();
        }

        private Handler b() {
            HandlerThread handlerThread = new HandlerThread("com.mixpanel.android.AnalyticsWorker", 1);
            handlerThread.start();
            return new a(handlerThread.getLooper());
        }

        private void c_() {
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.d + 1;
            if (this.f > 0) {
                this.e = ((currentTimeMillis - this.f) + (this.e * this.d)) / j;
                a.this.a("Average send frequency approximately " + (this.e / 1000) + " seconds.");
            }
            this.f = currentTimeMillis;
            this.d = j;
        }

        public void a(Message message) {
            synchronized (this.b) {
                if (this.c == null) {
                    a.this.a("Dead mixpanel worker dropping a message: " + message);
                } else {
                    this.c.sendMessage(message);
                }
            }
        }

        public boolean a() {
            boolean z;
            synchronized (this.b) {
                z = this.c == null;
            }
            return z;
        }
    }

    static {
        e = 0;
        f = 1;
        g = 2;
        h = 5;
        i = 11;
        j = 4;
        k = 10;
        m = new HashMap();
    }

    a(Context context) {
        this.c = context;
        this.d = c(context);
        this.a = new AtomicBoolean(false);
        this.b = new c();
    }

    public static a a_(Context context) {
        a aVar;
        synchronized (m) {
            Context applicationContext = context.getApplicationContext();
            if (m.containsKey(applicationContext)) {
                aVar = (a) m.get(applicationContext);
            } else {
                aVar = new a(applicationContext);
                m.put(applicationContext, aVar);
            }
        }
        return aVar;
    }

    private void a_(String str) {
        if (this.a.get()) {
            Log.i(l, str + " (Thread " + Thread.currentThread().getId() + ")");
        }
    }

    public void a_() {
        this.a.set(true);
    }

    public void a_(long j) {
        Message obtain = Message.obtain();
        obtain.what = j;
        obtain.obj = Long.valueOf(j);
        this.b.a(obtain);
    }

    public void a_(a aVar) {
        Message obtain = Message.obtain();
        obtain.what = f;
        obtain.obj = aVar;
        this.b.a(obtain);
    }

    public void a_(b bVar) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.obj = bVar;
        this.b.a(obtain);
    }

    public void a_(JSONObject jSONObject) {
        Message obtain = Message.obtain();
        obtain.what = e;
        obtain.obj = jSONObject;
        this.b.a(obtain);
    }

    public void a_(boolean z) {
        Message obtain = Message.obtain();
        obtain.what = k;
        obtain.obj = Boolean.valueOf(z);
        this.b.a(obtain);
    }

    protected i b(Context context) {
        return new i(context);
    }

    public void b() {
        Message obtain = Message.obtain();
        obtain.what = g;
        this.b.a(obtain);
    }

    protected h c(Context context) {
        return h.a(context);
    }

    public void c() {
        Message obtain = Message.obtain();
        obtain.what = h;
        this.b.a(obtain);
    }

    boolean d() {
        return this.b.a();
    }

    protected y e() {
        return new y();
    }
}