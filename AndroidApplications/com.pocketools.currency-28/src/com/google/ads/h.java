package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.util.a;
import com.google.ads.util.b;
import java.util.HashMap;

public class h {
    final com.google.ads.internal.h a;
    private final f b;
    private boolean c;
    private boolean d;
    private final e e;
    private MediationAdapter<?, ?> f;
    private boolean g;
    private boolean h;
    private View i;
    private final Handler j;
    private final String k;
    private final AdRequest l;
    private final HashMap<String, String> m;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ MediationInterstitialAdapter a;

        AnonymousClass_2(MediationInterstitialAdapter mediationInterstitialAdapter) {
            this.a = mediationInterstitialAdapter;
        }

        public void run() {
            try {
                this.a.showInterstitial();
            } catch (Throwable th) {
                b.b("Error while telling adapter (" + h.this.g() + ") ad to show interstitial: ", th);
            }
        }
    }

    public h(e eVar, com.google.ads.internal.h hVar, f fVar, String str, AdRequest adRequest, HashMap<String, String> hashMap) {
        a.b(TextUtils.isEmpty(str));
        this.e = eVar;
        this.a = hVar;
        this.b = fVar;
        this.k = str;
        this.l = adRequest;
        this.m = hashMap;
        this.c = false;
        this.d = false;
        this.f = null;
        this.g = false;
        this.h = false;
        this.i = null;
        this.j = new Handler(Looper.getMainLooper());
    }

    public f a() {
        return this.b;
    }

    public synchronized void a(Activity activity) {
        a.b(this.g, "startLoadAdTask has already been called.");
        this.g = true;
        this.j.post(new i(this, activity, this.k, this.l, this.m));
    }

    synchronized void a(View view) {
        this.i = view;
    }

    synchronized void a(MediationAdapter<?, ?> mediationAdapter) {
        this.f = mediationAdapter;
    }

    synchronized void a(boolean z) {
        this.d = z;
        this.c = true;
        notify();
    }

    public synchronized void b() {
        a.a(this.g, "destroy() called but startLoadAdTask has not been called.");
        this.j.post(new Runnable() {
            public void run() {
                if (h.this.k()) {
                    a.b(h.this.f);
                    try {
                        h.this.f.destroy();
                        b.a("Called destroy() for adapter with class: " + h.this.f.getClass().getName());
                    } catch (Throwable th) {
                        b.b("Error while destroying adapter (" + h.this.g() + "):", th);
                    }
                }
            }
        });
    }

    public synchronized boolean c() {
        return this.c;
    }

    public synchronized boolean d() {
        a.a(c(), "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false.");
        return this.d;
    }

    public synchronized View e() {
        a.a(c(), "getAdView() called when isLoadAdTaskDone() is false.");
        return this.i;
    }

    public synchronized void f() {
        a.a(this.a.a());
        try {
            this.j.post(new AnonymousClass_2((MediationInterstitialAdapter) this.f));
        } catch (ClassCastException e) {
            b.b("In Ambassador.show(): ambassador.adapter does not implement the MediationInterstitialAdapter interface.", e);
        }
    }

    public synchronized String g() {
        return this.f != null ? this.f.getClass().getName() : "\"adapter was not created.\"";
    }

    synchronized MediationAdapter<?, ?> h_() {
        return this.f;
    }

    e i() {
        return this.e;
    }

    synchronized void j() {
        this.h = true;
    }

    synchronized boolean k() {
        return this.h;
    }
}