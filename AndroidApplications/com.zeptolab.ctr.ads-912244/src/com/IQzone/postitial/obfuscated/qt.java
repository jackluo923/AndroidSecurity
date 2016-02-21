package com.IQzone.postitial.obfuscated;

final class qt implements Runnable {
    private /* synthetic */ c a;
    private /* synthetic */ qr b;

    qt(qr qrVar, c cVar) {
        this.b = qrVar;
        this.a = cVar;
    }

    public final void run() {
        if (!qr.a(this.b).getAdController().c()) {
            this.a.a();
        }
    }
}