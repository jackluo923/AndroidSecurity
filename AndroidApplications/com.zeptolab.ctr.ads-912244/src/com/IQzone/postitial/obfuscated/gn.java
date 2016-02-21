package com.IQzone.postitial.obfuscated;

final class gn implements Runnable {
    private /* synthetic */ gl a;

    gn(gl glVar) {
        this.a = glVar;
    }

    public final void run() {
        if (!this.a.a) {
            gj.a(this.a.b).moveTaskToBack(true);
            gj.a(this.a.b).finish();
        }
    }
}