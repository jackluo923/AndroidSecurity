package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class ck implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ cj b;

    ck(cj cjVar, Drawable drawable) {
        this.b = cjVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.setImageDrawable(this.a);
    }
}