package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class du implements Runnable {
    final /* synthetic */ dt a;

    du(dt dtVar) {
        this.a = dtVar;
    }

    public final void run() {
        try {
            this.a.a.post(new dv(this, (Drawable) cl.f(this.a.c).i.a()));
        } catch (om e) {
            cl.d();
        }
    }
}