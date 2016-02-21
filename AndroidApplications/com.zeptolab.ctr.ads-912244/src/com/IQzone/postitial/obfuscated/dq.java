package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class dq implements Runnable {
    final /* synthetic */ dp a;

    dq(dp dpVar) {
        this.a = dpVar;
    }

    public final void run() {
        try {
            this.a.a.post(new dr(this, (Drawable) cl.f(this.a.c).f.a()));
        } catch (om e) {
            cl.d();
        }
    }
}