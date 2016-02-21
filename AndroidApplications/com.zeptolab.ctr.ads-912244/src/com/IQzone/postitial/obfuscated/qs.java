package com.IQzone.postitial.obfuscated;

final class qs implements Runnable {
    private /* synthetic */ k a;
    private /* synthetic */ qr b;

    qs(qr qrVar, k kVar) {
        this.b = qrVar;
        this.a = kVar;
    }

    public final void run() {
        if (!(this.a == qr.a(this.b) || qr.a(this.b) == null || !qr.a(this.b).getAdController().c())) {
            qr.a(this.b).getAdController().a();
        }
        qr.a(this.b, this.a);
    }
}