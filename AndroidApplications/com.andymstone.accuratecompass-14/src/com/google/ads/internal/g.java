package com.google.ads.internal;

import android.os.SystemClock;
import com.google.ads.g.a;
import com.google.ads.util.b;
import java.util.Iterator;
import java.util.LinkedList;

public class g {
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

    public g() {
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

    protected boolean A() {
        return this.l;
    }

    protected void B() {
        b.d("Interstitial no fill.");
        this.l = true;
    }

    public void C() {
        b.d("Landing page dismissed.");
        this.e.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected String D() {
        return this.m;
    }

    protected synchronized void a() {
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

    public synchronized void a(a aVar) {
        this.o.add(Long.valueOf(SystemClock.elapsedRealtime() - this.n));
        this.p.add(aVar);
    }

    public void a(String str) {
        b.d("Prior impression ticket = " + str);
        this.m = str;
    }

    public synchronized void b() {
        this.o.clear();
        this.p.clear();
    }

    public synchronized void c() {
        this.n = SystemClock.elapsedRealtime();
    }

    public synchronized String d() {
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

    public synchronized String e() {
        StringBuilder stringBuilder;
        stringBuilder = new StringBuilder();
        Iterator it = this.p.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(aVar.ordinal());
        }
        return stringBuilder.toString();
    }

    protected void f() {
        b.d("Ad clicked.");
        this.a.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected void g_() {
        b.d("Ad request loaded.");
        this.b = SystemClock.elapsedRealtime();
    }

    protected synchronized void h() {
        b.d("Ad request before rendering.");
        this.c = SystemClock.elapsedRealtime();
    }

    protected void i() {
        b.d("Ad request started.");
        this.d = SystemClock.elapsedRealtime();
        f++;
    }

    protected long j() {
        return this.a.size() != this.e.size() ? -1 : (long) this.a.size();
    }

    protected String k() {
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

    protected String l() {
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

    protected long m() {
        return this.b - this.d;
    }

    protected synchronized long n() {
        return this.c - this.d;
    }

    protected long o() {
        return f;
    }

    protected synchronized long p() {
        return g;
    }

    protected synchronized void q() {
        b.d("Ad request network error");
        g++;
    }

    protected synchronized void r() {
        g = 0;
    }

    protected synchronized long s() {
        return h;
    }

    protected synchronized void t() {
        h++;
    }

    protected synchronized void u() {
        h = 0;
    }

    protected synchronized long v() {
        return i;
    }

    protected synchronized void w() {
        i++;
    }

    protected synchronized void x() {
        i = 0;
    }

    protected boolean y() {
        return this.k;
    }

    protected void z() {
        b.d("Interstitial network error.");
        this.k = true;
    }
}