package com.IQzone.postitial.obfuscated;

final class lh implements Runnable {
    private /* synthetic */ long a;
    private /* synthetic */ la b;

    lh(la laVar, long j) {
        this.b = laVar;
        this.a = j;
    }

    public final void run() {
        try {
            Thread.sleep(this.a + 100);
        } catch (InterruptedException e) {
            la.l();
        }
        this.b.b();
    }
}