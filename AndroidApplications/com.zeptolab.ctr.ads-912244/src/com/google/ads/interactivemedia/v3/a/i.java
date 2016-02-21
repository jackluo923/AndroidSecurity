package com.google.ads.interactivemedia.v3.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class i extends l implements Iterable {
    private final List a;

    public i() {
        this.a = new ArrayList();
    }

    public final Number a() {
        if (this.a.size() == 1) {
            return ((l) this.a.get(0)).a();
        }
        throw new IllegalStateException();
    }

    public final void a(Object obj) {
        if (obj == null) {
            obj = n.a;
        }
        this.a.add(obj);
    }

    public final String b() {
        if (this.a.size() == 1) {
            return ((l) this.a.get(0)).b();
        }
        throw new IllegalStateException();
    }

    public final double c() {
        if (this.a.size() == 1) {
            return ((l) this.a.get(0)).c();
        }
        throw new IllegalStateException();
    }

    public final long d() {
        if (this.a.size() == 1) {
            return ((l) this.a.get(0)).d();
        }
        throw new IllegalStateException();
    }

    public final int e() {
        if (this.a.size() == 1) {
            return ((l) this.a.get(0)).e();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(i iVar) {
        return iVar == this || (iVar instanceof i && iVar.a.equals(this.a));
    }

    public final boolean f() {
        if (this.a.size() == 1) {
            return ((l) this.a.get(0)).f();
        }
        throw new IllegalStateException();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final Iterator iterator() {
        return this.a.iterator();
    }
}