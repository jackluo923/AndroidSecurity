package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.b.ac;
import com.google.ads.c.b;
import com.google.ads.util.e;
import java.util.HashMap;

public final class bh {
    final ac a;
    private final be b;
    private boolean c;
    private boolean d;
    private bg e;
    private final ba f;
    private b g;
    private boolean h;
    private boolean i;
    private View j;
    private final String k;
    private final d l;
    private final HashMap m;

    public bh(ba baVar, ac acVar, be beVar, String str, d dVar, HashMap hashMap) {
        e.a(TextUtils.isEmpty(str));
        this.f = baVar;
        this.a = acVar;
        this.b = beVar;
        this.k = str;
        this.l = dVar;
        this.m = hashMap;
        this.c = false;
        this.d = false;
        this.e = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.j = null;
    }

    public final synchronized void a() {
        e.a(this.h, "destroy() called but startLoadAdTask has not been called.");
        ((Handler) bo.a().c.a()).post(new bi(this));
    }

    public final synchronized void a(Activity activity) {
        e.b(this.h, "startLoadAdTask has already been called.");
        this.h = true;
        ((Handler) bo.a().c.a()).post(new bj(this, activity, this.k, this.l, this.m));
    }

    final synchronized void a(bg bgVar) {
        this.d = false;
        this.c = true;
        this.e = bgVar;
        notify();
    }

    final synchronized void a(b bVar) {
        this.g = bVar;
    }

    public final synchronized boolean b() {
        return this.c;
    }

    public final synchronized boolean c() {
        e.a(this.c, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false.");
        return this.d;
    }

    public final synchronized bg d() {
        return this.e == null ? bg.d : this.e;
    }

    public final synchronized View e() {
        e.a(this.c, "getAdView() called when isLoadAdTaskDone() is false.");
        return this.j;
    }

    public final synchronized String f() {
        return this.g != null ? this.g.getClass().getName() : "\"adapter was not created.\"";
    }

    final synchronized void g() {
        this.i = true;
    }

    final synchronized boolean h() {
        return this.i;
    }
}