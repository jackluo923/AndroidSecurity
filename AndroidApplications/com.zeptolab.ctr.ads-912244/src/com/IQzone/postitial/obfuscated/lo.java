package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;

final class lo implements mx {
    final /* synthetic */ la a;
    private final mx b;
    private final Executor c;

    public lo(la laVar, mx mxVar, Executor executor) {
        this.a = laVar;
        this.c = executor;
        this.b = mxVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.b.a((ec) obj);
        this.c.execute(new lp(this));
        return null;
    }
}