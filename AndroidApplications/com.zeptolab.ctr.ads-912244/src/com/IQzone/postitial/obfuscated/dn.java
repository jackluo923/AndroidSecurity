package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class dn implements Runnable {
    final /* synthetic */ dk a;

    dn(dk dkVar) {
        this.a = dkVar;
    }

    public final void run() {
        try {
            this.a.a.post(new do_(this, (Drawable) cl.f(this.a.c).d.a()));
        } catch (om e) {
            cl.d();
        }
    }
}