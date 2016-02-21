package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class dm implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ dl b;

    dm(dl dlVar, Drawable drawable) {
        this.b = dlVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.b.setImageDrawable(this.a);
    }
}