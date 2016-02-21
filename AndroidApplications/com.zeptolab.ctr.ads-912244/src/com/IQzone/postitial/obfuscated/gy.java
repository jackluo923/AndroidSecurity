package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;

final class gy implements mx {
    final /* synthetic */ gv a;
    private /* synthetic */ Executor b;

    gy(gv gvVar, Executor executor) {
        this.a = gvVar;
        this.b = executor;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.b.execute(new gz(this));
        return null;
    }
}