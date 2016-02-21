package com.google.ads.util;

public final class ac extends aa {
    final /* synthetic */ z d;
    private boolean e;

    public ac(z zVar, String str) {
        this.d = zVar;
        super((z)str, (String)(byte) 0);
        this.e = false;
        this.e = false;
    }

    public ac(z zVar, String str, Object obj) {
        this.d = zVar;
        super(str, obj, (byte) 0);
        this.e = false;
        this.e = false;
    }

    public final synchronized Object a() {
        return this.a;
    }

    public final synchronized void a(Object obj) {
        g.d(new StringBuilder("State changed - ").append(this.d.toString()).append(".").append(this.b).append(": '").append(obj).append("' <-- '").append(this.a).append("'.").toString());
        this.a = obj;
        this.e = true;
    }

    public final String toString() {
        return super.toString() + (this.e ? " (*)" : "");
    }
}