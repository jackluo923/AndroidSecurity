package com.IQzone.postitial.obfuscated;

final class kq implements Runnable {
    private /* synthetic */ kp a;

    kq(kp kpVar) {
        this.a = kpVar;
    }

    public final void run() {
        this.a.b();
        if (!kp.a(this.a)) {
            kp.b(this.a).postDelayed(this, 50);
        }
    }
}