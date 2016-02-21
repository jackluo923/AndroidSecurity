package com.wopnersoft.unitconverter.plus.a;

// compiled from: ProGuard
public class c extends Exception {
    k a;

    public c(int i, String str) {
        this(new k(i, str));
    }

    public c(int i, String str, Exception exception) {
        this(new k(i, str), exception);
    }

    public c(k kVar) {
        this(kVar, null);
    }

    public c(k kVar, Exception exception) {
        super(kVar.a(), exception);
        this.a = kVar;
    }

    public k a() {
        return this.a;
    }
}