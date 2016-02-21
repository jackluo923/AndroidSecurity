package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.d.a;
import com.google.ads.interactivemedia.v3.a.d.b;
import com.google.ads.interactivemedia.v3.a.i;
import com.google.ads.interactivemedia.v3.a.n;
import com.google.ads.interactivemedia.v3.a.o;
import com.google.ads.interactivemedia.v3.a.q;
import java.io.Reader;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public final class d extends a {
    private static final Reader a;
    private static final Object b;
    private final List c;

    static {
        a = new Reader() {
            public final void close() {
                throw new AssertionError();
            }

            public final int read(char[] cArr, int i, int i2) {
                throw new AssertionError();
            }
        };
        b = new Object();
    }

    private void a(b bVar) {
        if (f() != bVar) {
            throw new IllegalStateException(new StringBuilder("Expected ").append(bVar).append(" but was ").append(f()).toString());
        }
    }

    private Object q() {
        return this.c.get(this.c.size() - 1);
    }

    private Object r() {
        return this.c.remove(this.c.size() - 1);
    }

    public final void a() {
        a(b.a);
        this.c.add(((i) q()).iterator());
    }

    public final void b() {
        a(b.b);
        r();
        r();
    }

    public final void c() {
        a(b.c);
        this.c.add(((o) q()).n().iterator());
    }

    public final void close() {
        this.c.clear();
        this.c.add(b);
    }

    public final void d_() {
        a(b.d);
        r();
        r();
    }

    public final boolean e() {
        b f = f();
        return f != b.d && f != b.b;
    }

    public final b f() {
        while (!this.c.isEmpty()) {
            Object q = q();
            if (q instanceof Iterator) {
                boolean z = this.c.get(this.c.size() - 2) instanceof o;
                Iterator it = (Iterator) q;
                if (it.hasNext()) {
                    if (z) {
                        return b.e;
                    }
                    this.c.add(it.next());
                } else if (z) {
                    return b.d;
                } else {
                    return b.b;
                }
            } else if (q instanceof o) {
                return b.c;
            } else {
                if (q instanceof i) {
                    return b.a;
                }
                if (q instanceof q) {
                    q qVar = (q) q;
                    if (qVar.p()) {
                        return b.f;
                    }
                    if (qVar.n()) {
                        return b.h;
                    }
                    if (qVar.o()) {
                        return b.g;
                    }
                    throw new AssertionError();
                } else if (q instanceof n) {
                    return b.i;
                } else {
                    if (q == b) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
            }
        }
        return b.j;
    }

    public final String g() {
        a(b.e);
        Entry entry = (Entry) ((Iterator) q()).next();
        this.c.add(entry.getValue());
        return (String) entry.getKey();
    }

    public final String h() {
        b f = f();
        if (f == b.f || f == b.g) {
            return ((q) r()).b();
        }
        throw new IllegalStateException(new StringBuilder("Expected ").append(b.f).append(" but was ").append(f).toString());
    }

    public final boolean i() {
        a(b.h);
        return ((q) r()).f();
    }

    public final void j() {
        a(b.i);
        r();
    }

    public final double k() {
        b f = f();
        if (f == b.g || f == b.f) {
            double c = ((q) q()).c();
            if (p() || !(Double.isNaN(c) || Double.isInfinite(c))) {
                r();
                return c;
            } else {
                throw new NumberFormatException(new StringBuilder("JSON forbids NaN and infinities: ").append(c).toString());
            }
        } else {
            throw new IllegalStateException(new StringBuilder("Expected ").append(b.g).append(" but was ").append(f).toString());
        }
    }

    public final long l() {
        b f = f();
        if (f == b.g || f == b.f) {
            long d = ((q) q()).d();
            r();
            return d;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected ").append(b.g).append(" but was ").append(f).toString());
        }
    }

    public final int m() {
        b f = f();
        if (f == b.g || f == b.f) {
            int e = ((q) q()).e();
            r();
            return e;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected ").append(b.g).append(" but was ").append(f).toString());
        }
    }

    public final void n() {
        if (f() == b.e) {
            g();
        } else {
            r();
        }
    }

    public final void o() {
        a(b.e);
        Entry entry = (Entry) ((Iterator) q()).next();
        this.c.add(entry.getValue());
        this.c.add(new q((String) entry.getKey()));
    }

    public final String toString() {
        return getClass().getSimpleName();
    }
}