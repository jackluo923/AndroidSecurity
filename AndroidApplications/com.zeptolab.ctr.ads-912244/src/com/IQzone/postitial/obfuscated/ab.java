package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.widget.ImageButton;

final class ab extends ao {
    private /* synthetic */ Context a;
    private /* synthetic */ ImageButton b;
    private /* synthetic */ Handler c;
    private /* synthetic */ o d;

    ab(o oVar, ag agVar, Context context, ImageButton imageButton, Handler handler) {
        this.d = oVar;
        this.a = context;
        this.b = imageButton;
        this.c = handler;
        super(agVar);
    }

    public final void c() {
        o.c(this.d).execute(new bi(this.a, this.b, this.c));
        super.c();
    }
}