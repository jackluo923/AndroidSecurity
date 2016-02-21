package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;

final class ls implements mx {
    final /* synthetic */ la a;
    private final mx b;
    private final Executor c;

    public ls(la laVar, mx mxVar, Executor executor) {
        this.a = laVar;
        this.c = executor;
        this.b = mxVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.b.a((ee) obj);
        this.c.execute(new lt(this));
        return null;
    }
}