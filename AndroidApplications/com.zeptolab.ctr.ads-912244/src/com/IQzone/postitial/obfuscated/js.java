package com.IQzone.postitial.obfuscated;

import android.net.Uri;

final class js implements mx {
    final /* synthetic */ jq a;
    private /* synthetic */ mx b;

    js(jq jqVar, mx mxVar) {
        this.a = jqVar;
        this.b = mxVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        cl clVar = new cl(this.a.d.i(), Uri.fromFile(this.a.c), new jt(this), this.a.b, this.a.d.h(), jk.b(this.a.d), this.b, 25);
        qe qeVar = (qe) this.a.b.findViewById(bt.d);
        kp kpVar = new kp(qeVar, this.a.a);
        jk.l();
        this.a.d.a(true);
        clVar.b();
        clVar.a();
        kpVar.a();
        qeVar.setOnKeyListener(new ju(this));
        return null;
    }
}