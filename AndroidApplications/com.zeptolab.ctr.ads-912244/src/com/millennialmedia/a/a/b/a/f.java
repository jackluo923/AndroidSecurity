package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ab;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.v;
import com.millennialmedia.a.a.x;
import com.millennialmedia.a.a.y;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public final class f extends a {
    private static final Reader a;
    private static final Object b;
    private final List c;

    static {
        a = new g();
        b = new Object();
    }

    public f(v vVar) {
        super(a);
        this.c = new ArrayList();
        this.c.add(vVar);
    }

    private void a(d dVar) {
        if (f() != dVar) {
            throw new IllegalStateException("Expected " + dVar + " but was " + f());
        }
    }

    private Object q() {
        return this.c.get(this.c.size() - 1);
    }

    private Object r() {
        return this.c.remove(this.c.size() - 1);
    }

    public void a() {
        a(d.a);
        this.c.add(((s) q()).iterator());
    }

    public void b() {
        a(d.b);
        r();
        r();
    }

    public void c() {
        a(d.c);
        this.c.add(((y) q()).b().iterator());
    }

    public void close() {
        this.c.clear();
        this.c.add(b);
    }

    public void d() {
        a(d.d);
        r();
        r();
    }

    public boolean e() {
        d f = f();
        return f != d.d && f != d.b;
    }

    public d f_() {
        if (this.c.isEmpty()) {
            return d.j;
        }
        Object q = q();
        if (q instanceof Iterator) {
            boolean z = this.c.get(this.c.size() - 2) instanceof y;
            Iterator it = (Iterator) q;
            if (it.hasNext()) {
                if (z) {
                    return d.e;
                }
                this.c.add(it.next());
                return f();
            } else if (z) {
                return d.d;
            } else {
                return d.b;
            }
        } else if (q instanceof y) {
            return d.c;
        } else {
            if (q instanceof s) {
                return d.a;
            }
            if (q instanceof ab) {
                ab abVar = (ab) q;
                if (abVar.z()) {
                    return d.f;
                }
                if (abVar.b()) {
                    return d.h;
                }
                if (abVar.y()) {
                    return d.g;
                }
                throw new AssertionError();
            } else if (q instanceof x) {
                return d.i;
            } else {
                if (q == b) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    public String g() {
        a(d.e);
        Entry entry = (Entry) ((Iterator) q()).next();
        this.c.add(entry.getValue());
        return (String) entry.getKey();
    }

    public String h() {
        d f = f();
        if (f == d.f || f == d.g) {
            return ((ab) r()).d();
        }
        throw new IllegalStateException("Expected " + d.f + " but was " + f);
    }

    public boolean i() {
        a(d.h);
        return ((ab) r()).n();
    }

    public void j() {
        a(d.i);
        r();
    }

    public double k() {
        d f = f();
        if (f == d.g || f == d.f) {
            double e = ((ab) q()).e();
            if (p() || !(Double.isNaN(e) || Double.isInfinite(e))) {
                r();
                return e;
            } else {
                throw new NumberFormatException("JSON forbids NaN and infinities: " + e);
            }
        } else {
            throw new IllegalStateException("Expected " + d.g + " but was " + f);
        }
    }

    public long l() {
        d f = f();
        if (f == d.g || f == d.f) {
            long i = ((ab) q()).i();
            r();
            return i;
        } else {
            throw new IllegalStateException("Expected " + d.g + " but was " + f);
        }
    }

    public int m() {
        d f = f();
        if (f == d.g || f == d.f) {
            int j = ((ab) q()).j();
            r();
            return j;
        } else {
            throw new IllegalStateException("Expected " + d.g + " but was " + f);
        }
    }

    public void n() {
        if (f() == d.e) {
            g();
        } else {
            r();
        }
    }

    public void o() {
        a(d.e);
        Entry entry = (Entry) ((Iterator) q()).next();
        this.c.add(entry.getValue());
        this.c.add(new ab((String) entry.getKey()));
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}