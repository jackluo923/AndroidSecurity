package com.IQzone.postitial.obfuscated;

import android.os.Handler;

final class v implements mx {
    final /* synthetic */ o a;
    private /* synthetic */ Handler b;

    v(o oVar, Handler handler) {
        this.a = oVar;
        this.b = handler;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.b.post(new w(this));
        return null;
    }
}