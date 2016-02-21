package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class dv implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ du b;

    dv(du duVar, Drawable drawable) {
        this.b = duVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.b.setImageDrawable(this.a);
    }
}