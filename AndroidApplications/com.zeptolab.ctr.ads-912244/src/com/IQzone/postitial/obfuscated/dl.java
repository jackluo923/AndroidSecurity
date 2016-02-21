package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.Drawable;

final class dl implements Runnable {
    final /* synthetic */ dk a;

    dl(dk dkVar) {
        this.a = dkVar;
    }

    public final void run() {
        try {
            this.a.a.post(new dm(this, (Drawable) cl.f(this.a.c).h.a()));
        } catch (om e) {
            cl.d();
        }
    }
}