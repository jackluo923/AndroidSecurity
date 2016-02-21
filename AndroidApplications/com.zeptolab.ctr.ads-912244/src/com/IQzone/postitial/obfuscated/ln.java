package com.IQzone.postitial.obfuscated;

import android.content.Intent;

final class ln implements Runnable {
    final /* synthetic */ km a;
    private /* synthetic */ dz b;
    private /* synthetic */ mx c;

    ln(km kmVar, dz dzVar, mx mxVar) {
        this.a = kmVar;
        this.b = dzVar;
        this.c = mxVar;
    }

    public final void run() {
        try {
            this.a.a;
            new StringBuilder("Launching adActivity: ").append(this.a.e).toString();
            int a = this.a.d.a(this.b == dz.d, this.c);
            Intent intent = new Intent(this.a.b, this.a.e);
            intent.putExtra("session", a);
            intent.setFlags(1954545664);
            this.a.c.postDelayed(new mn(this, intent), 500);
        } catch (eh e) {
            this.a.a;
        }
    }
}