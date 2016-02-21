package com.IQzone.postitial.obfuscated;

final class qp implements Runnable {
    private /* synthetic */ qr a;
    private /* synthetic */ t b;

    qp(t tVar, qr qrVar) {
        this.b = tVar;
        this.a = qrVar;
    }

    public final void run() {
        if (!mg.a(this.b.getClass().getName(), this.b).a) {
            this.b.finish();
        }
        if (this.a != null) {
            this.a.c();
        }
    }
}