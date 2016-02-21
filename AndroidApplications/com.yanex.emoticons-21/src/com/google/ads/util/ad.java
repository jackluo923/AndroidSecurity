package com.google.ads.util;

import java.lang.ref.WeakReference;

public final class ad extends aa {
    final /* synthetic */ z d;

    public ad(z zVar, String str, Object obj) {
        this.d = zVar;
        super(str, new WeakReference(obj), (byte) 0);
    }

    public final Object a() {
        return ((WeakReference) this.a).get();
    }

    public final String toString() {
        return this.d.toString() + "." + this.b + " = " + a() + " (?)";
    }
}