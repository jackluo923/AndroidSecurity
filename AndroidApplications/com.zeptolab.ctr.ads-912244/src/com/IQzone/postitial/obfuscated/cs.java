package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cs implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ cr b;

    cs(cr crVar, Drawable drawable) {
        this.b = crVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.b.setImageDrawable(this.a);
    }
}