package com.google.ads.util;

public abstract class aa {
    protected Object a;
    protected final String b;
    final /* synthetic */ z c;

    private aa(z zVar, String str) {
        this(zVar, str, null);
    }

    private aa(z zVar, String str, Object obj) {
        this.c = zVar;
        this.b = str;
        zVar.d.add(this);
        this.a = obj;
    }

    public String toString() {
        return this.c.toString() + "." + this.b + " = " + this.a;
    }
}