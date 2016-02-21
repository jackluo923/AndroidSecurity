package com.google.ads.internal;

import android.os.SystemClock;
import com.google.ads.util.b;
import java.util.LinkedList;

public class g {
    private static long f;
    private static long h;
    public String a;
    private LinkedList<Long> b;
    private long c;
    private long d;
    private LinkedList<Long> e;
    private String g;
    private boolean i;
    private boolean j;

    static {
        f = 0;
        h = -1;
    }

    protected g() {
        this.i = false;
        this.j = false;
        this.b = new LinkedList();
        this.e = new LinkedList();
        a();
    }

    public static long q() {
        if (h != -1) {
            return SystemClock.elapsedRealtime() - h;
        }
        h = SystemClock.elapsedRealtime();
        return 0;
    }

    protected void a() {
        this.b.clear();
        this.c = 0;
        this.d = 0;
        this.e.clear();
        this.g = null;
        this.i = false;
        this.j = false;
    }

    public void a(String str) {
        b.d("Prior ad identifier = " + str);
        this.g = str;
    }

    protected void b() {
        b.d("Ad clicked.");
        this.b.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    public void b(String str) {
        b.d("Prior impression ticket = " + str);
        this.a = str;
    }

    protected void c() {
        b.d("Ad request loaded.");
        this.c = SystemClock.elapsedRealtime();
    }

    protected void d() {
        b.d("Ad request started.");
        this.d = SystemClock.elapsedRealtime();
        f++;
    }

    protected long e() {
        return this.b.size() != this.e.size() ? -1 : (long) this.b.size();
    }

    protected String f() {
        if (this.b.isEmpty() || this.b.size() != this.e.size()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < this.b.size()) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(((Long) this.e.get(i)).longValue() - ((Long) this.b.get(i)).longValue()));
            i++;
        }
        return stringBuilder.toString();
    }

    protected String g_() {
        if (this.b.isEmpty()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < this.b.size()) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(((Long) this.b.get(i)).longValue() - this.c));
            i++;
        }
        return stringBuilder.toString();
    }

    protected long h() {
        return this.c - this.d;
    }

    protected long i() {
        return f;
    }

    protected String j() {
        return this.g;
    }

    protected boolean k() {
        return this.i;
    }

    protected void l() {
        b.d("Interstitial network error.");
        this.i = true;
    }

    protected boolean m() {
        return this.j;
    }

    protected void n() {
        b.d("Interstitial no fill.");
        this.j = true;
    }

    public void o() {
        b.d("Landing page dismissed.");
        this.e.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected String p() {
        return this.a;
    }
}