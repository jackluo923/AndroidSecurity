package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.ImageButton;

final class cc implements Runnable {
    final /* synthetic */ ImageButton a;
    private /* synthetic */ bk b;
    private /* synthetic */ Handler c;

    cc(bz bzVar, bk bkVar, Handler handler, ImageButton imageButton) {
        this.b = bkVar;
        this.c = handler;
        this.a = imageButton;
    }

    public final void run() {
        try {
            this.c.post(new cd(this, (Drawable) this.b.b.a()));
        } catch (om e) {
            bz.a;
        }
    }
}