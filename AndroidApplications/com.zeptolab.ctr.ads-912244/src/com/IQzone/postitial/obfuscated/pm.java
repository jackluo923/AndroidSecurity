package com.IQzone.postitial.obfuscated;

public class pm implements ou {
    private final ou a;
    private final oo b;

    static {
    }

    public pm(ou ouVar, oo ooVar) {
        if (ooVar == null) {
            throw new NullPointerException("<ValueConvertingCache><1>, converter must not be null");
        } else if (ouVar == null) {
            throw new NullPointerException("<ValueConvertingCache><2>, Internal must not be null");
        } else {
            this.b = ooVar;
            this.a = ouVar;
        }
    }

    public final Object a(Object obj) {
        Object a = this.a.a(obj);
        return a == null ? null : this.b.a(a);
    }

    public final void a() {
        this.a.a();
    }

    public final void a(Object obj, Object obj2) {
        this.a.a(obj, this.b.b(obj2));
    }

    public final boolean b(Object obj) {
        return this.a.b(obj);
    }

    public final void c(Object obj) {
        this.a.c(obj);
    }
}