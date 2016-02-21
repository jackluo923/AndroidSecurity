package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cr implements Runnable {
    final /* synthetic */ cn a;

    cr(cn cnVar) {
        this.a = cnVar;
    }

    public final void run() {
        try {
            this.a.a.post(new cs(this, (Drawable) cl.f(this.a.c).f.a()));
        } catch (om e) {
            cl.d();
        }
    }
}