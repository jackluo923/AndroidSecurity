package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class cy implements Runnable {
    final /* synthetic */ cv a;

    cy(cv cvVar) {
        this.a = cvVar;
    }

    public final void run() {
        try {
            this.a.a.post(new cz(this, (Drawable) cl.f(this.a.d).f.a()));
        } catch (om e) {
            cl.d();
        }
    }
}