package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class do_ implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ dn b;

    do_(dn dnVar, Drawable drawable) {
        this.b = dnVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.b.setImageDrawable(this.a);
    }
}