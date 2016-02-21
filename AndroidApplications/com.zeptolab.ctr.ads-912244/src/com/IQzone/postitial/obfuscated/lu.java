package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;

final class lu implements mx {
    final /* synthetic */ la a;
    private final mx b;
    private final Executor c;

    public lu(la laVar, mx mxVar, Executor executor) {
        this.a = laVar;
        this.c = executor;
        this.b = mxVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.b.a((ef) obj);
        this.c.execute(new lv(this));
        return null;
    }
}