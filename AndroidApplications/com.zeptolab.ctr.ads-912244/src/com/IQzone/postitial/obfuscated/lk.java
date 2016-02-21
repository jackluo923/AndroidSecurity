package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;

final class lk implements mx {
    final /* synthetic */ la a;
    private final mx b;
    private final Executor c;

    public lk(la laVar, mx mxVar, Executor executor) {
        this.a = laVar;
        this.c = executor;
        this.b = mxVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.b.a((eb) obj);
        this.c.execute(new ll(this));
        return null;
    }
}