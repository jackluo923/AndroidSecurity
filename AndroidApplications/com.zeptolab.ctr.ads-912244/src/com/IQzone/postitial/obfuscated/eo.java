package com.IQzone.postitial.obfuscated;

import android.app.Activity;

final class eo implements Runnable {
    private /* synthetic */ Activity a;
    private /* synthetic */ em b;

    eo(em emVar, Activity activity) {
        this.b = emVar;
        this.a = activity;
    }

    public final void run() {
        em.b(this.b).a(null);
        em.a(this.b, this.a);
    }
}