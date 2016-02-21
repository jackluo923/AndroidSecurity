package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.ImageButton;

final class ca implements Runnable {
    final /* synthetic */ ImageButton a;
    private /* synthetic */ bk b;
    private /* synthetic */ Handler c;

    ca(bz bzVar, bk bkVar, Handler handler, ImageButton imageButton) {
        this.b = bkVar;
        this.c = handler;
        this.a = imageButton;
    }

    public final void run() {
        try {
            this.c.post(new cb(this, (Drawable) this.b.d.a()));
        } catch (om e) {
            bz.a;
        }
    }
}