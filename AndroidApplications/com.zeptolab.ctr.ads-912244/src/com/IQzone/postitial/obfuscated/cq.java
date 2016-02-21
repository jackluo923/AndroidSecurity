package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cq implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ cp b;

    cq(cp cpVar, Drawable drawable) {
        this.b = cpVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.b.setImageDrawable(this.a);
    }
}