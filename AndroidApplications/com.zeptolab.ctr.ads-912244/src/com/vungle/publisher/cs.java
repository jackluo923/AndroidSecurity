package com.vungle.publisher;

final class cs {
    final Object a;
    final cq b;
    final int c;
    volatile boolean d;

    cs(Object obj, cq cqVar) {
        this.a = obj;
        this.b = cqVar;
        this.c = 0;
        this.d = true;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof cs)) {
            return false;
        }
        cs csVar = (cs) obj;
        return this.a == csVar.a && this.b.equals(csVar.b);
    }

    public final int hashCode() {
        return this.a.hashCode() + this.b.d.hashCode();
    }
}