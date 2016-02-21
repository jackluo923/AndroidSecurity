package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class bx implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ bw b;

    bx(bw bwVar, Drawable drawable) {
        this.b = bwVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.setImageDrawable(this.a);
    }
}