package com.IQzone.postitial.obfuscated;

final class nq implements Runnable {
    private /* synthetic */ Runnable a;

    nq(no noVar, Runnable runnable) {
        this.a = runnable;
    }

    public final void run() {
        try {
            this.a.run();
        } catch (Throwable th) {
            ql qlVar = no.a;
        }
    }
}