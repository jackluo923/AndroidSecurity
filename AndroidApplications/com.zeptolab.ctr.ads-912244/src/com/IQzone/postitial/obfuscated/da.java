package com.IQzone.postitial.obfuscated;

final class da implements Runnable {
    private /* synthetic */ cl a;

    da(cl clVar) {
        this.a = clVar;
    }

    public final void run() {
        cl.b(this.a).start();
        this.a.c();
    }
}