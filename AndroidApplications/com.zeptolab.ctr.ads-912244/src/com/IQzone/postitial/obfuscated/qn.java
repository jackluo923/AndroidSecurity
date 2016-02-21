package com.IQzone.postitial.obfuscated;

final class qn implements Runnable {
    private /* synthetic */ int a;
    private /* synthetic */ np b;

    qn(np npVar, int i) {
        this.b = npVar;
        this.a = i;
    }

    public final void run() {
        if (!this.b.e.a.a() && this.b.k == this.a) {
            this.b.a();
        }
    }
}