package com.IQzone.postitial.obfuscated;

public final class ph implements ou {
    private final ou a;
    private final oo b;

    public ph(ou ouVar, oo ooVar) {
        if (ooVar == null) {
            throw new NullPointerException("<KeyConvertingCache><1>, converter must not be null");
        } else if (ouVar == null) {
            throw new NullPointerException("<KeyConvertingCache><2>, Internal must not be null");
        } else {
            this.b = ooVar;
            this.a = ouVar;
        }
    }

    public final Object a(Object obj) {
        return this.a.a(this.b.b(obj));
    }

    public final void a() {
        this.a.a();
    }

    public final void a(Object obj, Object obj2) {
        try {
            this.a.a(this.b.b(obj), obj2);
        } catch (om e) {
            throw new RuntimeException(new StringBuilder("<KeyConvertingCache><1>, ").append(e).toString());
        }
    }

    public final boolean b(Object obj) {
        return this.a.b(this.b.b(obj));
    }

    public final void c(Object obj) {
        try {
            this.a.c(this.b.b(obj));
        } catch (om e) {
            throw new RuntimeException(new StringBuilder("<KeyConvertingCache><1>, ").append(e).toString());
        }
    }
}