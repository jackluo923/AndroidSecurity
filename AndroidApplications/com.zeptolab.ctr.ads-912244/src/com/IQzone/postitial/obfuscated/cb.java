package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cb implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ ca b;

    cb(ca caVar, Drawable drawable) {
        this.b = caVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.setImageDrawable(this.a);
    }
}