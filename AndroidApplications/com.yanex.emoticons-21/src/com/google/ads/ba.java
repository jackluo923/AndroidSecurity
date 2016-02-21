package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.SystemClock;
import com.google.ads.b.ac;
import com.google.ads.b.w;
import com.google.ads.util.e;
import com.google.ads.util.g;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class ba {
    private final w a;
    private bh b;
    private final Object c;
    private Thread d;
    private final Object e;
    private boolean f;
    private final Object g;

    protected ba() {
        this.b = null;
        this.c = new Object();
        this.d = null;
        this.e = new Object();
        this.f = false;
        this.g = new Object();
        this.a = null;
    }

    public ba(Object obj) {
        this.b = null;
        this.c = new Object();
        this.d = null;
        this.e = new Object();
        this.f = false;
        this.g = new Object();
        e.a(obj);
        this.a = obj;
    }

    static /* synthetic */ void a(ba baVar, ax axVar, d dVar) {
        synchronized (baVar.e) {
            e.a(Thread.currentThread(), baVar.d);
        }
        List f = axVar.f();
        long b = axVar.a() ? (long) axVar.b() : 10000;
        Iterator it = f.iterator();
        while (it.hasNext()) {
            j jVar = (j) it.next();
            g.a(new StringBuilder("Looking to fetch ads from network: ").append(jVar.b()).toString());
            List c = jVar.c();
            HashMap e = jVar.e();
            List d = jVar.d();
            String a = jVar.a();
            String b2 = jVar.b();
            String c2 = axVar.c();
            if (d == null) {
                d = axVar.g();
            }
            be beVar = new be(a, b2, c2, d, axVar.h(), axVar.i());
            Iterator it2 = c.iterator();
            while (it2.hasNext()) {
                b2 = (String) it2.next();
                Activity activity = (Activity) baVar.a.g().c.a();
                if (activity == null) {
                    g.a("Activity is null while mediating.  Terminating mediation thread.");
                    return;
                } else {
                    baVar.a.l().c();
                    if (!baVar.a(b2, activity, dVar, beVar, e, b)) {
                        if (baVar.b()) {
                            g.a("GWController.destroy() called. Terminating mediation thread.");
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }
        ((Handler) bo.a().c.a()).post(new bc(baVar, axVar));
    }

    private boolean a() {
        boolean z;
        synchronized (this.e) {
            z = this.d != null;
        }
        return z;
    }

    private boolean a(String str, Activity activity, d dVar, be beVar, HashMap hashMap, long j) {
        bh bhVar = new bh(this, (ac) this.a.g().g.a(), beVar, str, dVar, hashMap);
        synchronized (bhVar) {
            bhVar.a(activity);
            while (!bhVar.b() && j > 0) {
                try {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    bhVar.wait(j);
                    j -= SystemClock.elapsedRealtime() - elapsedRealtime;
                } catch (InterruptedException e) {
                    g.a(new StringBuilder("Interrupted while waiting for ad network to load ad using adapter class: ").append(str).toString());
                }
            }
            this.a.l().a(bhVar.d());
            if (bhVar.b() && bhVar.c()) {
                ((Handler) bo.a().c.a()).post(new bd(this, bhVar, this.a.g().b() ? null : bhVar.e(), beVar));
                return true;
            } else {
                if (!bhVar.b()) {
                    g.a(new StringBuilder("Timeout occurred in adapter class: ").append(bhVar.f()).toString());
                }
                bhVar.a();
                return false;
            }
        }
    }

    private boolean b() {
        boolean z;
        synchronized (this.g) {
            z = this.f;
        }
        return z;
    }

    private boolean b(bh bhVar) {
        boolean z;
        synchronized (this.g) {
            if (b()) {
                bhVar.a();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final void a(ax axVar, d dVar) {
        synchronized (this.e) {
            if (a()) {
                g.c("Mediation thread is not done executing previous mediation  request. Ignoring new mediation request");
            } else {
                if (axVar.d()) {
                    this.a.a((float) axVar.e());
                    if (!this.a.p()) {
                        this.a.f();
                    }
                } else if (this.a.p()) {
                    this.a.e();
                }
                w wVar = this.a;
                if (axVar.j() != null) {
                    if (!wVar.g().b()) {
                        g c = ((ac) wVar.g().g.a()).c();
                        if (axVar.j().a()) {
                            g.e(new StringBuilder("AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  (").append(c).append(") in the ad-type field in the mediation UI.").toString());
                        } else {
                            g c2 = axVar.j().c();
                            if (c2 != c) {
                                g.e(new StringBuilder("Mediation server returned ad size: '").append(c2).append("', while the AdView was created with ad size: '").append(c).append("'. Using the ad-size passed to the AdView on creation.").toString());
                            }
                        }
                    } else if (!axVar.j().a()) {
                        g.e("InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify 'interstitial' as the ad-type in the mediation UI.");
                    }
                }
                this.d = new Thread(new bb(this, axVar, dVar));
                this.d.start();
            }
        }
    }

    public final void a(bh bhVar) {
        synchronized (this.c) {
            if (this.b != bhVar) {
                if (this.b != null) {
                    this.b.a();
                }
                this.b = bhVar;
            }
        }
    }
}