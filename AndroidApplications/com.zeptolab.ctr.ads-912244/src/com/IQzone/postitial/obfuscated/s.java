package com.IQzone.postitial.obfuscated;

import android.os.Handler;

final class s implements mx {
    final /* synthetic */ o a;
    private /* synthetic */ Handler b;

    s(o oVar, Handler handler) {
        this.a = oVar;
        this.b = handler;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.b.post(new u(this));
        return null;
    }
}