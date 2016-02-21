package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.SystemClock;
import com.flurry.android.impl.analytics.FlurryAnalyticsModule;
import com.flurry.sdk.dj.b;
import com.flurry.sdk.dn.a;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;

public class dg implements b, a {
    static int a;
    static int b;
    static int c;
    static int d;
    static int e;
    static int f;
    private static final String g;
    private String A;
    private String B;
    private byte C;
    private Location D;
    private boolean E;
    private String F;
    private byte G;
    private long H;
    private long I;
    private final Map J;
    private final List K;
    private boolean L;
    private int M;
    private final List N;
    private int O;
    private int P;
    private final cv Q;
    private Map R;
    private dj S;
    private int T;
    private boolean U;
    private final AtomicInteger h;
    private final AtomicInteger i;
    private final AtomicInteger j;
    private final String k;
    private String l;
    private WeakReference m;
    private File n;
    private List o;
    private final Map p;
    private boolean q;
    private long r;
    private List s;
    private Info t;
    private byte[] u;
    private String v;
    private long w;
    private long x;
    private long y;
    private long z;

    static {
        g = dg.class.getSimpleName();
        a = 100;
        b = 10;
        c = 1000;
        d = 160000;
        e = 50;
        f = 20;
    }

    public dg(String str) {
        this.h = new AtomicInteger(0);
        this.i = new AtomicInteger(0);
        this.j = new AtomicInteger(0);
        this.n = null;
        this.p = new HashMap();
        this.s = new ArrayList();
        this.A = AdTrackerConstants.BLANK;
        this.B = AdTrackerConstants.BLANK;
        this.C = (byte) -1;
        this.J = new HashMap();
        this.K = new ArrayList();
        this.N = new ArrayList();
        this.Q = new cv();
        this.U = false;
        el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "Creating new Flurry session");
        this.k = str;
        this.m = new WeakReference(null);
    }

    private void A() {
        try {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "generating agent report");
            cz czVar = new cz(this.k, this.l, this.q, o(), this.r, this.w, this.s, p(), this.Q.a(false), a(), cu.a().b(), System.currentTimeMillis());
            this.o = new ArrayList(this.s);
            if (czVar == null || czVar.a() == null) {
                el.d(g, "Error generating report");
            } else {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "generated report of size " + czVar.a().length + " with " + this.s.size() + " reports.");
                a(czVar.a());
                this.s.removeAll(this.o);
                this.o = null;
                B();
            }
        } catch (Throwable th) {
            el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, g, AdTrackerConstants.BLANK, th);
        }
    }

    private synchronized void B() {
        if (fa.a(this.n)) {
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.n));
                dh dhVar = new dh();
                dhVar.a(this.q);
                dhVar.a(this.r);
                dhVar.a(this.s);
                dhVar.a(dataOutputStream, this.k, i());
            } catch (Exception e) {
                el.b(g, "Error saving persistent data", e);
            }
        } else {
            el.d(g, "Error persisting report: could not create directory");
        }
    }

    private synchronized void C() {
        Closeable fileInputStream;
        Closeable dataInputStream;
        boolean z;
        Throwable th;
        Closeable closeable = null;
        synchronized (this) {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "Loading persistent data: " + this.n.getAbsolutePath());
            if (this.n.exists()) {
                try {
                    fileInputStream = new FileInputStream(this.n);
                    try {
                        dataInputStream = new DataInputStream(fileInputStream);
                        try {
                            dh dhVar = new dh();
                            dhVar.a((DataInputStream)dataInputStream, this.k);
                            this.q = dhVar.a();
                            this.r = dhVar.c();
                            this.s = dhVar.b();
                            z = 1;
                            fb.a(dataInputStream);
                            fb.a(fileInputStream);
                        } catch (Exception e) {
                            th = e;
                            closeable = fileInputStream;
                            el.b(g, "Error loading persistent data", th);
                            fb.a(dataInputStream);
                            fb.a(closeable);
                            z = false;
                            if (i == 0) {
                                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Deleting agent cache file");
                                this.n.delete();
                            }
                            if (i == 0) {
                                this.q = false;
                                this.r = this.w;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fb.a(dataInputStream);
                            fb.a(fileInputStream);
                            throw th;
                        }
                    } catch (Exception e2) {
                        th = e2;
                        dataInputStream = null;
                        closeable = fileInputStream;
                        el.b(g, "Error loading persistent data", th);
                        fb.a(dataInputStream);
                        fb.a(closeable);
                        z = false;
                        if (i == 0) {
                            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Deleting agent cache file");
                            this.n.delete();
                        }
                        if (i == 0) {
                            this.q = false;
                            this.r = this.w;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        dataInputStream = null;
                        fb.a(dataInputStream);
                        fb.a(fileInputStream);
                        throw th;
                    }
                } catch (Exception e3) {
                    th = e3;
                    dataInputStream = null;
                    try {
                        el.b(g, "Error loading persistent data", th);
                        fb.a(dataInputStream);
                        fb.a(closeable);
                        z = false;
                    } catch (Throwable th4) {
                        th = th4;
                        fileInputStream = closeable;
                        fb.a(dataInputStream);
                        fb.a(fileInputStream);
                        throw th;
                    }
                    if (i == 0) {
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Deleting agent cache file");
                        this.n.delete();
                    }
                    if (i == 0) {
                        this.q = false;
                        this.r = this.w;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    dataInputStream = null;
                    fileInputStream = null;
                    fb.a(dataInputStream);
                    fb.a(fileInputStream);
                    throw th;
                }
                if (i == 0) {
                    el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Deleting agent cache file");
                    this.n.delete();
                }
            } else {
                el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "Agent cache file doesn't exist.");
                z = false;
            }
            if (i == 0) {
                this.q = false;
                this.r = this.w;
            }
        }
    }

    private void D() {
        this.T++;
    }

    private void E() {
        if (this.T > 0) {
            this.T--;
        }
    }

    private String F() {
        return ".flurryagent." + Integer.toString(this.k.hashCode(), MMException.REQUEST_NOT_PERMITTED);
    }

    private int G() {
        return this.h.incrementAndGet();
    }

    private int H() {
        return this.i.incrementAndGet();
    }

    private synchronized void a(long j) {
        Iterator it = this.K.iterator();
        while (it.hasNext()) {
            cy cyVar = (cy) it.next();
            if (cyVar.a() && !cyVar.b()) {
                cyVar.a(j);
            }
        }
    }

    private void a(do_ com_flurry_sdk_do, ByteBuffer byteBuffer) {
        synchronized (this.p) {
            this.p.put(com_flurry_sdk_do, byteBuffer);
        }
    }

    private void a(byte[] bArr) {
        FlurryAnalyticsModule.getInstance().a().b(bArr, this.k, AdTrackerConstants.BLANK + dk.a().b());
    }

    private Map d(Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        Bundle extras = ((Activity) context).getIntent().getExtras();
        if (extras == null) {
            return null;
        }
        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Launch Options Bundle is present " + extras.toString());
        Map hashMap = new HashMap();
        Iterator it = extras.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null) {
                Object obj = extras.get(str);
                hashMap.put(str, new ArrayList(Arrays.asList(new String[]{obj != null ? obj.toString() : "null"})));
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Launch options Key: " + str + ". Its value: " + str);
            }
        }
        return hashMap;
    }

    private void u() {
        dn a = dm.a();
        this.G = ((Byte) a.a("Gender")).byteValue();
        a.a("Gender", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "initSettings, Gender = " + this.G);
        this.F = (String) a.a("UserId");
        a.a("UserId", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "initSettings, UserId = " + this.F);
        this.E = ((Boolean) a.a("LogEvents")).booleanValue();
        a.a("LogEvents", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "initSettings, LogEvents = " + this.E);
        this.H = ((Long) a.a("Age")).longValue();
        a.a("Age", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "initSettings, BirthDate = " + this.H);
        this.I = ((Long) a.a("ContinueSessionMillis")).longValue();
        a.a("ContinueSessionMillis", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "initSettings, ContinueSessionMillis = " + this.I);
    }

    private void v() {
        try {
            if (this.v != null) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Fetched phone id");
                a(do_.a, ByteBuffer.wrap(this.v.getBytes()));
            }
            if (this.u != null) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Fetched hashed IMEI");
                a(do_.b, ByteBuffer.wrap(this.u));
            }
            if (this.t != null) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, g, "Fetched advertising id");
                a(do_.c, ByteBuffer.wrap(this.t.getId().getBytes()));
            }
            A();
        } catch (Throwable th) {
            el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, g, AdTrackerConstants.BLANK, th);
        }
    }

    private void w() {
        a(new fc() {
            public void a() {
                de d = dg.this.d();
                dg.this.s.clear();
                dg.this.s.add(d);
                dg.this.B();
            }
        });
    }

    private void x() {
        a(new fc() {
            public void a() {
                dg.this.y();
            }
        });
    }

    private void y() {
        try {
            synchronized (this) {
                int i = this.s.size() > 0 ? 1 : 0;
            }
            if (i != 0) {
                A();
            }
        } catch (Throwable th) {
            el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, g, AdTrackerConstants.BLANK, th);
        }
    }

    private void z() {
        a(new fc() {
            public void a() {
                dw.a().d();
            }
        });
    }

    Map a() {
        return this.R;
    }

    public synchronized void a(Context context) {
        el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "Initializing new Flurry session with context:" + context);
        this.m = new WeakReference(context);
        this.S = new dj(this);
        this.n = context.getFileStreamPath(F());
        this.l = dy.a();
        this.y = -1;
        this.O = 0;
        this.B = TimeZone.getDefault().getID();
        this.A = Locale.getDefault().getLanguage() + "_" + Locale.getDefault().getCountry();
        this.L = true;
        this.M = 0;
        this.P = 0;
        this.R = d(context);
        u();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.w = System.currentTimeMillis();
        this.x = elapsedRealtime;
        a(new fc() {
            public void a() {
                dg.this.t = dt.a();
            }
        });
        a(new fc() {
            public void a() {
                dg.this.u = dv.a();
            }
        });
        a(new fc() {
            public void a() {
                dg.this.v = dx.a();
            }
        });
        a(new fc() {
            public void a() {
                dg.this.C();
            }
        });
        a(new fc() {
            public void a() {
                dg.this.v();
            }
        });
        em.a().a(this, context);
        this.U = true;
    }

    public void a(fc fcVar) {
        dl.a().c(fcVar);
    }

    public void a(String str, Object obj) {
        if (str.equals("Gender")) {
            this.G = ((Byte) obj).byteValue();
            el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "onSettingUpdate, Gender = " + this.G);
        } else if (str.equals("UserId")) {
            this.F = (String) obj;
            el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "onSettingUpdate, UserId = " + this.F);
        } else if (str.equals("LogEvents")) {
            this.E = ((Boolean) obj).booleanValue();
            el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "onSettingUpdate, LogEvents = " + this.E);
        } else if (str.equals("Age")) {
            this.H = ((Long) obj).longValue();
            el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "onSettingUpdate, Birthdate = " + this.H);
        } else if (str.equals("ContinueSessionMillis")) {
            this.I = ((Long) obj).longValue();
            el.a((int)GoogleScorer.CLIENT_APPSTATE, g, "onSettingUpdate, ContinueSessionMillis = " + this.I);
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, g, "onSettingUpdate internal error!");
        }
    }

    public synchronized void a(String str, String str2, String str3, Throwable th) {
        boolean z;
        cx cxVar;
        int i;
        if (str != null) {
            if ("uncaught".equals(str)) {
                z = 1;
                this.O++;
                if (this.N.size() < e) {
                    cxVar = new cx(H(), Long.valueOf(System.currentTimeMillis()).longValue(), str, str2, str3, th);
                    this.N.add(cxVar);
                    el.d(g, "Error logged: " + cxVar.c());
                } else if (i == 0) {
                    i = 0;
                    while (i < this.N.size()) {
                        cxVar = (cx) this.N.get(i);
                        if (cxVar.c() != null && !"uncaught".equals(cxVar.c())) {
                            this.N.set(i, new cx(H(), Long.valueOf(System.currentTimeMillis()).longValue(), str, str2, str3, th));
                            break;
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    el.d(g, "Max errors logged. No more errors logged.");
                }
            }
        }
        z = false;
        this.O++;
        if (this.N.size() < e) {
            cxVar = new cx(H(), Long.valueOf(System.currentTimeMillis()).longValue(), str, str2, str3, th);
            this.N.add(cxVar);
            el.d(g, "Error logged: " + cxVar.c());
        } else if (i == 0) {
            el.d(g, "Max errors logged. No more errors logged.");
        } else {
            i = 0;
            while (i < this.N.size()) {
                cxVar = (cx) this.N.get(i);
                i++;
            }
        }
    }

    public synchronized void a(String str, Map map) {
        Iterator it = this.K.iterator();
        while (it.hasNext()) {
            cy cyVar = (cy) it.next();
            if (cyVar.a(str)) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - this.x;
                if (map != null && map.size() > 0 && this.M < d) {
                    int d = this.M - cyVar.d();
                    Map hashMap = new HashMap(cyVar.c());
                    cyVar.a(map);
                    if (cyVar.d() + d > d) {
                        cyVar.b(hashMap);
                        this.L = false;
                        this.M = d;
                        el.d(g, "Event Log size exceeded. No more event details logged.");
                    } else if (cyVar.c().size() > b) {
                        el.d(g, "MaxEventParams exceeded on endEvent: " + cyVar.c().size());
                        cyVar.b(hashMap);
                    } else {
                        this.M = d + cyVar.d();
                    }
                }
                cyVar.a(elapsedRealtime);
                break;
            }
        }
    }

    public synchronized void a(String str, Map map, boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.x;
        String a = fb.a(str);
        if (a.length() != 0) {
            cu.a aVar = (cu.a) this.J.get(a);
            if (aVar != null) {
                aVar.a++;
                el.d(g, "Event count incremented: " + a);
            } else if (this.J.size() < a) {
                aVar = new cu.a();
                aVar.a = 1;
                this.J.put(a, aVar);
                el.d(g, "Event count started: " + a);
            } else {
                el.d(g, "Too many different events. Event not counted: " + a);
            }
            if (!this.E || this.K.size() >= c || this.M >= d) {
                this.L = false;
            } else {
                Map emptyMap;
                emptyMap = map == null ? Collections.emptyMap() : map;
                if (emptyMap.size() > b) {
                    el.d(g, "MaxEventParams exceeded: " + emptyMap.size());
                } else {
                    cy cyVar = new cy(G(), a, emptyMap, elapsedRealtime, z);
                    if (cyVar.d() + this.M <= d) {
                        this.K.add(cyVar);
                        this.M = cyVar.d() + this.M;
                    } else {
                        this.M = d;
                        this.L = false;
                        el.d(g, "Event Log size exceeded. No more event details logged.");
                    }
                }
            }
        }
    }

    public void b() {
        this.q = true;
    }

    public synchronized void b(Context context) {
        if (this.U) {
            el.d(g, "Start session with context: " + context + " count:" + g());
            this.m = new WeakReference(context);
            if (this.S.b()) {
                this.S.a();
            }
            D();
            dw.a().c();
            this.D = dw.a().f();
            em.a().b(this, context);
        }
    }

    public synchronized void c() {
        if (this.U) {
            el.d(g, "Finalize session");
            if (this.S.b()) {
                this.S.a();
            }
            if (g() != 0) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, g, "Session with apiKey = " + j() + " was ended while getSessionCount() is not 0");
            }
            this.T = 0;
            x();
            em.a().a(this);
            a(new fc() {
                public void a() {
                    di.a().a(dg.this.j());
                }
            });
            dm.a().b("Gender", this);
            dm.a().b("UserId", this);
            dm.a().b("Age", this);
            dm.a().b("LogEvents", this);
            dm.a().b("ContinueSessionMillis", this);
        }
    }

    public synchronized void c(Context context) {
        if (this.U) {
            em.a().c(this, context);
            this.D = dw.a().f();
            z();
            E();
            el.d(g, "End session with context: " + context + " count:" + g());
            this.y = SystemClock.elapsedRealtime() - this.x;
            a(this.y);
            w();
            if (g() == 0) {
                this.S.a(this.I);
            }
        }
    }

    synchronized de d() {
        de deVar;
        df dfVar = new df();
        dfVar.a(this.l);
        dfVar.a(this.w);
        dfVar.b(this.y);
        dfVar.c(this.z);
        dfVar.b(k());
        dfVar.c(l());
        dfVar.a(this.C);
        dfVar.d(h());
        dfVar.a(this.D);
        dfVar.b(f());
        dfVar.a(this.G);
        dfVar.a(Long.valueOf(this.H));
        dfVar.a(t());
        dfVar.a(r());
        dfVar.a(this.L);
        dfVar.b(s());
        dfVar.c(this.O);
        de deVar2 = null;
        try {
            deVar = new de(dfVar);
        } catch (IOException e) {
            e.printStackTrace();
            deVar = deVar2;
        }
        if (deVar == null) {
            el.d(g, "New session report wasn't created");
        }
        return deVar;
    }

    public synchronized void e() {
        this.P++;
    }

    int f() {
        return this.P;
    }

    int g() {
        return this.T;
    }

    String h() {
        return this.F == null ? AdTrackerConstants.BLANK : this.F;
    }

    public String i() {
        return this.v;
    }

    public String j() {
        return this.k;
    }

    public String k() {
        return this.A;
    }

    public String l() {
        return this.B;
    }

    public long m() {
        return this.w;
    }

    public long n() {
        return this.x;
    }

    public boolean o() {
        return this.t == null || !this.t.isLimitAdTrackingEnabled();
    }

    public Map p() {
        return new HashMap(this.p);
    }

    public void q() {
        c();
    }

    List r() {
        return this.K;
    }

    List s() {
        return this.N;
    }

    Map t() {
        return this.J;
    }
}