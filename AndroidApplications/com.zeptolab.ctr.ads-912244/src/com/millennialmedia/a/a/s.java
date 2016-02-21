package com.millennialmedia.a.a;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class s extends v implements Iterable {
    private final List a;

    public s() {
        this.a = new ArrayList();
    }

    s a() {
        s sVar = new s();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            sVar.a(((v) it.next()).o());
        }
        return sVar;
    }

    public v a(int i) {
        return (v) this.a.get(i);
    }

    public void a(s sVar) {
        this.a.addAll(sVar.a);
    }

    public void a(Object obj) {
        if (obj == null) {
            obj = x.a;
        }
        this.a.add(obj);
    }

    public int b() {
        return this.a.size();
    }

    public Number c() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).c();
        }
        throw new IllegalStateException();
    }

    public String d() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).d();
        }
        throw new IllegalStateException();
    }

    public double e() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).e();
        }
        throw new IllegalStateException();
    }

    public boolean equals(s sVar) {
        return sVar == this || (sVar instanceof s && sVar.a.equals(this.a));
    }

    public BigDecimal f() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).f();
        }
        throw new IllegalStateException();
    }

    public BigInteger g() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).g();
        }
        throw new IllegalStateException();
    }

    public float h() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).h();
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public long i() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).i();
        }
        throw new IllegalStateException();
    }

    public Iterator iterator() {
        return this.a.iterator();
    }

    public int j() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).j();
        }
        throw new IllegalStateException();
    }

    public byte k() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).k();
        }
        throw new IllegalStateException();
    }

    public char l() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).l();
        }
        throw new IllegalStateException();
    }

    public short m() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).m();
        }
        throw new IllegalStateException();
    }

    public boolean n() {
        if (this.a.size() == 1) {
            return ((v) this.a.get(0)).n();
        }
        throw new IllegalStateException();
    }

    /* synthetic */ v o() {
        return a();
    }
}