package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.ImageButton;

final class bw implements Runnable {
    final /* synthetic */ ImageButton a;
    private /* synthetic */ bk b;
    private /* synthetic */ Handler c;

    bw(bv bvVar, bk bkVar, Handler handler, ImageButton imageButton) {
        this.b = bkVar;
        this.c = handler;
        this.a = imageButton;
    }

    public final void run() {
        try {
            this.c.post(new bx(this, (Drawable) this.b.c.a()));
        } catch (om e) {
            bv.b();
        }
    }
}