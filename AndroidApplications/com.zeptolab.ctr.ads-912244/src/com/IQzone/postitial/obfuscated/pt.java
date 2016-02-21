package com.IQzone.postitial.obfuscated;

public final class pt implements pw {
    private final String a;
    private final ou b;
    private final px c;
    private final ou d;

    public pt(ou ouVar, px pxVar) {
        this.a = String.valueOf(System.currentTimeMillis()) + hashCode();
        this.d = new pj();
        this.b = ouVar;
        this.c = pxVar;
    }

    public final Object a() {
        Object a = this.b.a(this.a);
        if (a != null) {
            return a;
        }
        if (this.d.b(this.a) && !((Boolean) this.d.a(this.a)).booleanValue()) {
            return null;
        }
        if (this.c != null) {
            a = this.c.a();
            this.b.a(this.a, a);
            this.d.a(this.a, Boolean.valueOf(true));
            return a;
        } else {
            this.d.a(this.a, Boolean.valueOf(false));
            return null;
        }
    }

    public final void a(Object obj) {
        this.b.a(this.a, obj);
        this.d.a(this.a, Boolean.valueOf(true));
    }
}