package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.ImageButton;

final class cf implements Runnable {
    final /* synthetic */ ImageButton a;
    private /* synthetic */ bk b;
    private /* synthetic */ Handler c;

    cf(bz bzVar, bk bkVar, Handler handler, ImageButton imageButton) {
        this.b = bkVar;
        this.c = handler;
        this.a = imageButton;
    }

    public final void run() {
        try {
            this.c.post(new cg(this, (Drawable) this.b.e.a()));
        } catch (om e) {
            bz.a;
        }
    }
}