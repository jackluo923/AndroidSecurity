package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cp implements Runnable {
    final /* synthetic */ cn a;

    cp(cn cnVar) {
        this.a = cnVar;
    }

    public final void run() {
        try {
            this.a.a.post(new cq(this, (Drawable) cl.f(this.a.c).i.a()));
        } catch (om e) {
            cl.d();
        }
    }
}