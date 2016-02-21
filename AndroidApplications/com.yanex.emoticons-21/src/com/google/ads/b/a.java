package com.google.ads.b;

import android.os.Handler;
import com.google.ads.bo;
import com.google.ads.bp;
import com.google.ads.bq;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;

public final class a extends e {
    private volatile boolean b;
    private boolean c;
    private int d;
    private int e;
    private final ad f;

    public a(bq bqVar) {
        super(bqVar, null);
        this.b = true;
        this.c = true;
        this.d = 0;
        this.e = 0;
        if (AdUtil.a < ((Integer) ((bp) ((bo) bqVar.d.a()).b.a()).c.a()).intValue()) {
            g.a("Disabling hardware acceleration for an activation overlay.");
            g();
        }
        this.f = ad.a((w) bqVar.b.a(), h.c, true, true);
        setWebViewClient(this.f);
    }

    public final void a_(int i) {
        this.e = i;
    }

    public final void a_(boolean z) {
        if (!z) {
            ((Handler) bo.a().c.a()).post(new b(this, this));
        }
        this.b = z;
    }

    public final boolean a_() {
        return this.b;
    }

    public final void b(int i) {
        this.d = i;
    }

    public final void b(boolean z) {
        this.c = z;
    }

    public final boolean b() {
        return this.c;
    }

    public final int c() {
        return this.e;
    }

    public final boolean canScrollHorizontally(int i) {
        return false;
    }

    public final boolean canScrollVertically(int i) {
        return false;
    }

    public final int d() {
        return this.d;
    }

    public final ad e() {
        return this.f;
    }
}