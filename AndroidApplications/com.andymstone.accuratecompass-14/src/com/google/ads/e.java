package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import android.view.View;
import com.google.ads.internal.d;
import com.google.ads.internal.h;
import com.google.ads.util.a;
import com.google.ads.util.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class e {
    private final d a;
    private h b;
    private Object c;
    private Thread d;
    private Object e;
    private boolean f;
    private Object g;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ c a;
        final /* synthetic */ AdRequest b;

        AnonymousClass_1(c cVar, AdRequest adRequest) {
            this.a = cVar;
            this.b = adRequest;
        }

        public void run() {
            e.this.b(this.a, this.b);
            synchronized (e.this.e) {
                e.this.d = null;
            }
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ f a;
        final /* synthetic */ boolean b;

        AnonymousClass_2(f fVar, boolean z) {
            this.a = fVar;
            this.b = z;
        }

        public void run() {
            e.this.a.a(this.a, this.b);
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ View a;
        final /* synthetic */ f b;

        AnonymousClass_3(View view, f fVar) {
            this.a = view;
            this.b = fVar;
        }

        public void run() {
            e.this.a.a(this.a, e.this.b, this.b, true);
        }
    }

    class AnonymousClass_7 implements Runnable {
        final /* synthetic */ c a;

        AnonymousClass_7(c cVar) {
            this.a = cVar;
        }

        public void run() {
            e.this.a.b(this.a);
        }
    }

    class AnonymousClass_8 implements Runnable {
        final /* synthetic */ h a;
        final /* synthetic */ View b;
        final /* synthetic */ f c;

        AnonymousClass_8(h hVar, View view, f fVar) {
            this.a = hVar;
            this.b = view;
            this.c = fVar;
        }

        public void run() {
            if (e.this.e(this.a)) {
                b.a("Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation.");
            } else {
                e.this.a.a(this.b, this.a, this.c, false);
            }
        }
    }

    protected e() {
        this.b = null;
        this.c = new Object();
        this.d = null;
        this.e = new Object();
        this.f = false;
        this.g = new Object();
        this.a = null;
    }

    public e(Object obj) {
        this.b = null;
        this.c = new Object();
        this.d = null;
        this.e = new Object();
        this.f = false;
        this.g = new Object();
        a.b(obj);
        this.a = obj;
    }

    public static boolean a(c cVar, d dVar) {
        if (cVar.j() == null) {
            return true;
        }
        if (!dVar.h().b()) {
            AdSize b = ((h) dVar.h().k.a()).b();
            if (cVar.j().a()) {
                b.e("AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  (" + b + ") in the ad-type field in the mediation UI.");
                return false;
            } else {
                AdSize b2 = cVar.j().b();
                if (b2 == b) {
                    return true;
                }
                b.e("Mediation server returned ad size: '" + b2 + "', while the AdView was created with ad size: '" + b + "'. Using the ad-size passed to the AdView on creation.");
                return false;
            }
        } else if (cVar.j().a()) {
            return true;
        } else {
            b.e("InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify 'interstitial' as the ad-type in the mediation UI.");
            return false;
        }
    }

    private boolean a(h hVar, String str) {
        if (e() == hVar) {
            return true;
        }
        b.c("GWController: ignoring callback to " + str + " from non showing ambassador with adapter class: '" + hVar.h() + "'.");
        return false;
    }

    private boolean a(String str, Activity activity, AdRequest adRequest, f fVar, HashMap hashMap, long j) {
        h hVar = new h(this, (h) this.a.h().k.a(), fVar, str, adRequest, hashMap);
        synchronized (hVar) {
            hVar.a(activity);
            while (!hVar.c() && j > 0) {
                try {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    hVar.wait(j);
                    j -= SystemClock.elapsedRealtime() - elapsedRealtime;
                } catch (InterruptedException e) {
                    b.a("Interrupted while waiting for ad network to load ad using adapter class: " + str);
                }
            }
            this.a.m().a(hVar.e());
            if (hVar.c() && hVar.d()) {
                this.a.a(new AnonymousClass_8(hVar, this.a.h().b() ? null : hVar.f(), fVar));
                return true;
            } else {
                hVar.b();
                return false;
            }
        }
    }

    private void b(c cVar, AdRequest adRequest) {
        synchronized (this.e) {
            a.a(Thread.currentThread(), this.d);
        }
        List f = cVar.f();
        long b = cVar.a() ? (long) cVar.b() : 10000;
        Iterator it = f.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            b.a("Looking to fetch ads from network: " + aVar.b());
            List c = aVar.c();
            HashMap e = aVar.e();
            List d = aVar.d();
            String a = aVar.a();
            String b2 = aVar.b();
            String c2 = cVar.c();
            if (d == null) {
                d = cVar.g();
            }
            f fVar = new f(a, b2, c2, d, cVar.h(), cVar.i());
            Iterator it2 = c.iterator();
            while (it2.hasNext()) {
                b2 = (String) it2.next();
                Activity activity = (Activity) this.a.h().e.a();
                if (activity == null) {
                    b.a("Activity is null while mediating.  Terminating mediation thread.");
                    return;
                } else {
                    this.a.m().c();
                    if (!a(b2, activity, adRequest, fVar, e, b)) {
                        if (d()) {
                            b.a("GWController.destroy() called. Terminating mediation thread.");
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }
        this.a.a(new AnonymousClass_7(cVar));
    }

    private boolean d() {
        boolean z;
        synchronized (this.g) {
            z = this.f;
        }
        return z;
    }

    private h e_() {
        h hVar;
        synchronized (this.c) {
            hVar = this.b;
        }
        return hVar;
    }

    private boolean e_(h hVar) {
        boolean z;
        synchronized (this.g) {
            if (d()) {
                hVar.b();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public void a(c cVar, AdRequest adRequest) {
        synchronized (this.e) {
            if (a()) {
                b.c("Mediation thread is not done executing previous mediation  request. Ignoring new mediation request");
            } else {
                a(cVar, this.a);
                this.d = new Thread(new AnonymousClass_1(cVar, adRequest));
                this.d.start();
            }
        }
    }

    public void a(h hVar) {
        if (a(hVar, "onPresentScreen")) {
            this.a.a(new Runnable() {
                public void run() {
                    e.this.t();
                }
            });
        }
    }

    public void a(h hVar, View view) {
        if (e() != hVar) {
            b.c("GWController: ignoring onAdRefreshed() callback from non-showing ambassador (adapter class name is '" + hVar.h() + "').");
        } else {
            this.a.m().a(g.a.a);
            this.a.a(new AnonymousClass_3(view, this.b.a()));
        }
    }

    public void a(h hVar, boolean z) {
        if (a(hVar, "onAdClicked()")) {
            this.a.a(new AnonymousClass_2(hVar.a(), z));
        }
    }

    public boolean a() {
        boolean z;
        synchronized (this.e) {
            z = this.d != null;
        }
        return z;
    }

    public void b() {
        synchronized (this.g) {
            try {
                this.f = true;
                d(null);
                synchronized (this.e) {
                    if (this.d != null) {
                        this.d.interrupt();
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    public void b(h hVar) {
        if (a(hVar, "onDismissScreen")) {
            this.a.a(new Runnable() {
                public void run() {
                    e.this.s();
                }
            });
        }
    }

    public void c(h hVar) {
        if (a(hVar, "onLeaveApplication")) {
            this.a.a(new Runnable() {
                public void run() {
                    e.this.u();
                }
            });
        }
    }

    public boolean c() {
        a.a(this.a.h().b());
        h e = e();
        if (e != null) {
            e.g();
            return true;
        } else {
            b.b("There is no ad ready to show.");
            return false;
        }
    }

    public void d(h hVar) {
        synchronized (this.c) {
            if (this.b != hVar) {
                if (this.b != null) {
                    this.b.b();
                }
                this.b = hVar;
            }
        }
    }
}