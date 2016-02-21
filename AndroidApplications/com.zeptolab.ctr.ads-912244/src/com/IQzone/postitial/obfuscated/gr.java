package com.IQzone.postitial.obfuscated;

final class gr implements Runnable {
    private /* synthetic */ gs a;
    private /* synthetic */ gp b;

    gr(gp gpVar, gs gsVar) {
        this.b = gpVar;
        this.a = gsVar;
    }

    public final void run() {
        if (this.b.a.a()) {
            ((gu) this.b.b()).a(this.a);
        } else {
            this.b.g = gt.a;
            this.b.f = this.a;
        }
    }
}