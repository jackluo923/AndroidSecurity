package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.g.a;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.util.b;
import java.util.HashMap;

public class h {
    final com.google.ads.internal.h a;
    private final f b;
    private boolean c;
    private boolean d;
    private a e;
    private final e f;
    private MediationAdapter g;
    private boolean h;
    private boolean i;
    private View j;
    private final Handler k;
    private final String l;
    private final AdRequest m;
    private final HashMap n;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ MediationInterstitialAdapter a;

        AnonymousClass_2(MediationInterstitialAdapter mediationInterstitialAdapter) {
            this.a = mediationInterstitialAdapter;
        }

        public void run() {
            try {
                this.a.e();
            } catch (Throwable th) {
                b.b("Error while telling adapter (" + h.this.h() + ") ad to show interstitial: ", th);
            }
        }
    }

    public h(e eVar, com.google.ads.internal.h hVar, f fVar, String str, AdRequest adRequest, HashMap hashMap) {
        com.google.ads.util.a.b(TextUtils.isEmpty(str));
        this.f = eVar;
        this.a = hVar;
        this.b = fVar;
        this.l = str;
        this.m = adRequest;
        this.n = hashMap;
        this.c = false;
        this.d = false;
        this.e = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.j = null;
        this.k = new Handler(Looper.getMainLooper());
    }

    public f a() {
        return this.b;
    }

    public synchronized void a(Activity activity) {
        com.google.ads.util.a.b(this.h, "startLoadAdTask has already been called.");
        this.h = true;
        this.k.post(new i(this, activity, this.l, this.m, this.n));
    }

    synchronized void a(View view) {
        this.j = view;
    }

    synchronized void a(MediationAdapter mediationAdapter) {
        this.g = mediationAdapter;
    }

    synchronized void a(boolean z, a aVar) {
        this.d = z;
        this.c = true;
        this.e = aVar;
        notify();
    }

    public synchronized void b() {
        com.google.ads.util.a.a(this.h, "destroy() called but startLoadAdTask has not been called.");
        this.k.post(new Runnable() {
            public void run() {
                if (h.this.l()) {
                    com.google.ads.util.a.b(h.this.g);
                    try {
                        h.this.g.a();
                        b.a("Called destroy() for adapter with class: " + h.this.g.getClass().getName());
                    } catch (Throwable th) {
                        b.b("Error while destroying adapter (" + h.this.h() + "):", th);
                    }
                }
            }
        });
    }

    public synchronized boolean c() {
        return this.c;
    }

    public synchronized boolean d() {
        com.google.ads.util.a.a(this.c, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false.");
        return this.d;
    }

    public synchronized a e() {
        return this.e == null ? a.d : this.e;
    }

    public synchronized View f() {
        com.google.ads.util.a.a(this.c, "getAdView() called when isLoadAdTaskDone() is false.");
        return this.j;
    }

    public synchronized void g() {
        com.google.ads.util.a.a(this.a.a());
        try {
            this.k.post(new AnonymousClass_2((MediationInterstitialAdapter) this.g));
        } catch (ClassCastException e) {
            b.b("In Ambassador.show(): ambassador.adapter does not implement the MediationInterstitialAdapter interface.", e);
        }
    }

    public synchronized String h_() {
        return this.g != null ? this.g.getClass().getName() : "\"adapter was not created.\"";
    }

    synchronized MediationAdapter i() {
        return this.g;
    }

    e j() {
        return this.f;
    }

    synchronized void k() {
        this.i = true;
    }

    synchronized boolean l() {
        return this.i;
    }
}