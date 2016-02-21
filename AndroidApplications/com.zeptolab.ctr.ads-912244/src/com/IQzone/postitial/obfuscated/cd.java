package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cd implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ cc b;

    cd(cc ccVar, Drawable drawable) {
        this.b = ccVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.setImageDrawable(this.a);
    }
}