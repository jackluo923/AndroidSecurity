package com.IQzone.postitial.obfuscated;

import android.view.View;

final class bb implements Runnable {
    private /* synthetic */ View a;
    private /* synthetic */ ba b;

    bb(ba baVar, View view) {
        this.b = baVar;
        this.a = view;
    }

    public final void run() {
        try {
            this.b.a.removeView(this.a);
        } catch (Throwable th) {
            ap.a;
        }
    }
}