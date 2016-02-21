package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class dr implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ dq b;

    dr(dq dqVar, Drawable drawable) {
        this.b = dqVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.b.setImageDrawable(this.a);
    }
}