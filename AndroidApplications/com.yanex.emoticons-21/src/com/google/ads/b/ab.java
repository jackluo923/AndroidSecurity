package com.google.ads.b;

import android.os.SystemClock;
import com.google.ads.bg;
import com.google.ads.util.g;
import java.util.Iterator;
import java.util.LinkedList;

public final class ab {
    private static long f;
    private static long g;
    private static long h;
    private static long i;
    private static long j;
    private final LinkedList a;
    private long b;
    private long c;
    private long d;
    private final LinkedList e;
    private boolean k;
    private boolean l;
    private String m;
    private long n;
    private final LinkedList o;
    private final LinkedList p;

    static {
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        j = -1;
    }

    public ab() {
        this.k = false;
        this.l = false;
        this.a = new LinkedList();
        this.e = new LinkedList();
        this.o = new LinkedList();
        this.p = new LinkedList();
        a();
    }

    public static long E() {
        if (j != -1) {
            return SystemClock.elapsedRealtime() - j;
        }
        j = SystemClock.elapsedRealtime();
        return 0;
    }

    protected static long o() {
        return f;
    }

    protected final boolean A() {
        return this.l;
    }

    protected final void B() {
        g.d("Interstitial no fill.");
        this.l = true;
    }

    public final void C() {
        g.d("Landing page dismissed.");
        this.e.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected final String D() {
        return this.m;
    }

    protected final synchronized void a() {
        this.a.clear();
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e.clear();
        this.n = -1;
        this.o.clear();
        this.p.clear();
        this.k = false;
        this.l = false;
    }

    public final synchronized void a(bg bgVar) {
        this.o.add(Long.valueOf(SystemClock.elapsedRealtime() - this.n));
        this.p.add(bgVar);
    }

    public final void a(String str) {
        g.d(new StringBuilder("Prior impression ticket = ").append(str).toString());
        this.m = str;
    }

    public final synchronized void b() {
        this.o.clear();
        this.p.clear();
    }

    public final synchronized void c() {
        this.n = SystemClock.elapsedRealtime();
    }

    public final synchronized String d() {
        StringBuilder stringBuilder;
        stringBuilder = new StringBuilder();
        Iterator it = this.o.iterator();
        while (it.hasNext()) {
            long longValue = ((Long) it.next()).longValue();
            if (stringBuilder.length() > 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(longValue);
        }
        return stringBuilder.toString();
    }

    public final synchronized String e() {
        StringBuilder stringBuilder;
        stringBuilder = new StringBuilder();
        Iterator it = this.p.iterator();
        while (it.hasNext()) {
            bg bgVar = (bg) it.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(bgVar.ordinal());
        }
        return stringBuilder.toString();
    }

    protected final void f() {
        g.d("Ad clicked.");
        this.a.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected final void g() {
        g.d("Ad request loaded.");
        this.b = SystemClock.elapsedRealtime();
    }

    protected final synchronized void h() {
        g.d("Ad request before rendering.");
        this.c = SystemClock.elapsedRealtime();
    }

    protected final void i() {
        g.d("Ad request started.");
        this.d = SystemClock.elapsedRealtime();
        f++;
    }

    protected final long j() {
        return this.a.size() != this.e.size() ? -1 : (long) this.a.size();
    }

    protected final String k() {
        if (this.a.isEmpty() || this.a.size() != this.e.size()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < this.a.size()) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(((Long) this.e.get(i)).longValue() - ((Long) this.a.get(i)).longValue()));
            i++;
        }
        return stringBuilder.toString();
    }

    protected final String l() {
        if (this.a.isEmpty()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < this.a.size()) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(((Long) this.a.get(i)).longValue() - this.b));
            i++;
        }
        return stringBuilder.toString();
    }

    protected final long m() {
        return this.b - this.d;
    }

    protected final synchronized long n() {
        return this.c - this.d;
    }

    protected final synchronized long p() {
        return g;
    }

    protected final synchronized void q() {
        g.d("Ad request network error");
        g++;
    }

    protected final synchronized void r() {
        g = 0;
    }

    protected final synchronized long s() {
        return h;
    }

    protected final synchronized void t() {
        h++;
    }

    protected final synchronized void u() {
        h = 0;
    }

    protected final synchronized long v() {
        return i;
    }

    protected final synchronized void w() {
        i++;
    }

    protected final synchronized void x() {
        i = 0;
    }

    protected final boolean y() {
        return this.k;
    }

    protected final void z() {
        g.d("Interstitial network error.");
        this.k = true;
    }
}