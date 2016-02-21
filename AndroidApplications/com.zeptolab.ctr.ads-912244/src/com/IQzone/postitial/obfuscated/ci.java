package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class ci implements Runnable {
    private /* synthetic */ Drawable a;
    private /* synthetic */ ch b;

    ci(ch chVar, Drawable drawable) {
        this.b = chVar;
        this.a = drawable;
    }

    public final void run() {
        this.b.a.setImageDrawable(this.a);
    }
}