package com.IQzone.postitial.obfuscated;

import android.content.Intent;

final class mn implements Runnable {
    private /* synthetic */ Intent a;
    private /* synthetic */ ln b;

    mn(ln lnVar, Intent intent) {
        this.b = lnVar;
        this.a = intent;
    }

    public final void run() {
        this.b.a.b.startActivity(this.a);
    }
}