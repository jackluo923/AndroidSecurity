package com.IQzone.postitial.obfuscated;

final class gq implements Runnable {
    private /* synthetic */ gu a;
    private /* synthetic */ gp b;

    gq(gp gpVar, gu guVar) {
        this.b = gpVar;
        this.a = guVar;
    }

    public final void run() {
        if (this.b.f != null) {
            if (this.b.g == gt.a) {
                this.a.a(this.b.f);
                this.b.f = null;
            }
            this.b.f = null;
        }
    }
}