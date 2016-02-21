package com.IQzone.postitial.obfuscated;

public class pn implements pq {
    private static final ql a;
    private final ou b;
    private final ou c;
    private final pq d;
    private final String e;

    static {
        a = new ql();
    }

    public pn(pq pqVar, ou ouVar, ou ouVar2) {
        this.b = ouVar;
        this.c = ouVar2;
        this.d = pqVar;
        this.e = null;
    }

    private Object c(Object obj) {
        if (obj == null) {
            throw new NullPointerException("<CachedResourceLoader><3>, key cannot be null");
        }
        Object a = this.d.a(obj);
        if (a == null) {
            this.c.a(obj, Boolean.valueOf(false));
        } else {
            this.c.a(obj, Boolean.valueOf(true));
            this.b.a(obj, a);
        }
        return a;
    }

    public final Object a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("<CachedResourceLoader><2>, key cannot be null");
        }
        Object a = this.b.a(obj);
        if (a != null) {
            return a;
        }
        Boolean bool = (Boolean) this.c.a(obj);
        return (bool == null || bool.booleanValue()) ? c(obj) : null;
    }

    public final boolean b(Object obj) {
        if (obj == null) {
            throw new NullPointerException("<CachedResourceLoader><1>, key cannot be null");
        }
        Boolean bool = (Boolean) this.c.a(obj);
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.b.a(obj) != null) {
            return true;
        }
        boolean b = this.d.b(obj);
        this.c.a(obj, Boolean.valueOf(b));
        return b;
    }
}