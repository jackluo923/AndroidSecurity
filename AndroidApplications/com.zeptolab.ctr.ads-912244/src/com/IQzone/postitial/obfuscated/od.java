package com.IQzone.postitial.obfuscated;

final class od implements Runnable {
    private /* synthetic */ Runnable a;
    private /* synthetic */ oc b;

    od(oc ocVar, Runnable runnable) {
        this.b = ocVar;
        this.a = runnable;
    }

    public final void run() {
        this.a.run();
        this.b.a();
    }
}