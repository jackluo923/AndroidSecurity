package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup;

public final class am {
    private ViewGroup a;
    private boolean b;
    private boolean c;
    private boolean d;
    private long e;
    private int f;
    private mx g;
    private int h;
    private boolean i;

    public am() {
        this.e = Long.MIN_VALUE;
    }

    public final synchronized void a() {
        this.f++;
    }

    public final synchronized void a(int i) {
        this.h = i;
    }

    public final synchronized void a(long j) {
        this.e = j;
    }

    public final synchronized void a(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    public final synchronized void a(mx mxVar) {
        this.g = mxVar;
    }

    public final synchronized void a(boolean z) {
        this.i = z;
    }

    public final synchronized void b(boolean z) {
        this.b = z;
    }

    public final synchronized boolean b() {
        return this.i;
    }

    public final synchronized int c() {
        return this.h;
    }

    public final synchronized void c(boolean z) {
        this.c = z;
    }

    public final synchronized ViewGroup d() {
        return this.a;
    }

    public final synchronized void d(boolean z) {
        this.d = z;
    }

    public final synchronized boolean e() {
        return this.b;
    }

    public final synchronized boolean f() {
        return this.c;
    }

    public final synchronized boolean g() {
        return this.d;
    }

    public final synchronized long h() {
        return this.e;
    }

    public final synchronized int i() {
        return this.f;
    }

    public final synchronized mx j() {
        return this.g;
    }
}