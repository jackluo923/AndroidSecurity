package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;

final class ad extends an {
    private /* synthetic */ LinearLayout a;
    private /* synthetic */ ag b;
    private /* synthetic */ Handler c;
    private /* synthetic */ o d;

    ad(o oVar, Context context, View view, bf bfVar, LinearLayout linearLayout, ag agVar, Handler handler) {
        this.d = oVar;
        this.a = linearLayout;
        this.b = agVar;
        this.c = handler;
        super(context, view, bfVar);
    }

    public final void a() {
        o.d(this.d).a();
        super.a();
    }

    public final void a(bc bcVar) {
        super.a(bcVar);
        o.d(this.d).a(bcVar);
    }

    public final void a(mx mxVar) {
        if (this.b.a()) {
            this.b.c();
            o.d(this.d).a(null);
            this.c.post(new ae(this, mxVar));
            this.a.requestFocus();
        } else {
            o.a(this.d).a();
        }
    }

    public final void b() {
        this.a.requestFocus();
    }
}