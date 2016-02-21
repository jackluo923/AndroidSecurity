package com.IQzone.postitial.obfuscated;

import android.app.Activity;
import android.os.PowerManager;
import java.util.HashSet;
import java.util.Set;

final class ep implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ Set b;
    private /* synthetic */ boolean c;
    private /* synthetic */ boolean d;
    private /* synthetic */ Activity e;
    private /* synthetic */ em f;

    ep(em emVar, String str, Set set, boolean z, boolean z2, Activity activity) {
        this.f = emVar;
        this.a = str;
        this.b = set;
        this.c = false;
        this.d = z2;
        this.e = activity;
    }

    public final void run() {
        boolean z = 1;
        if (!this.f.d() && this.f.c()) {
            mh a = mg.a(this.a, this.f.c, this.b);
            em.a;
            new StringBuilder("launcher top ").append(a.h).toString();
            Set hashSet = new HashSet();
            hashSet.addAll(new HashSet(a.i));
            hashSet.addAll(new HashSet(a.j));
            if (this.c) {
                boolean z2;
                PowerManager powerManager = (PowerManager) this.f.c.getSystemService("power");
                em.a;
                new StringBuilder("native player launching ").append(powerManager.isScreenOn()).toString();
                z2 = !a.a || this.f.i || this.d;
                z = z2;
            } else if (this.d && a.d && a.f == 1 && hashSet.size() == 1 && this.e.getTaskId() == a.k) {
                em.a;
                if (a.g) {
                    z = false;
                }
            } else {
                if (a.h) {
                    if ((a.c || a.b || !a.a) && a.e) {
                        em.a;
                    }
                }
                z = false;
            }
            if (i != 0 && System.currentTimeMillis() > this.f.h) {
                this.f.i = false;
                em.a;
                dy a2 = this.f.d.a(dz.a);
                a2.a(this.f.c(this.e));
                a2.a(this.d ? dz.a : dz.d, new eq(this));
            }
        }
    }
}