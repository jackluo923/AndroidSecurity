package com.IQzone.postitial.obfuscated;

final class ns implements Runnable {
    private /* synthetic */ Runnable a;

    ns(nr nrVar, Runnable runnable) {
        this.a = runnable;
    }

    public final void run() {
        try {
            this.a.run();
        } catch (Throwable th) {
            nr.a();
        }
    }
}