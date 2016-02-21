package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cg implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ cf b;

    cg(cf cfVar, Drawable drawable) {
        this.b = cfVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.setImageDrawable(this.a);
    }
}