package com.IQzone.postitial.obfuscated;

import android.content.BroadcastReceiver;

final class hb extends pu {
    final /* synthetic */ gv a;
    private BroadcastReceiver b;

    hb(gv gvVar) {
        this.a = gvVar;
    }

    public final /* synthetic */ Object a() {
        if (this.b == null) {
            this.b = new hc(this);
        }
        return this.b;
    }

    public final /* bridge */ /* synthetic */ void a(Object obj) {
        this.b = null;
    }
}