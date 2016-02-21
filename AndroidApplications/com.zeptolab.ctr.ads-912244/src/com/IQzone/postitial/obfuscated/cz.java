package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cz implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ cy b;

    cz(cy cyVar, Drawable drawable) {
        this.b = cyVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.c.setImageDrawable(this.a);
    }
}