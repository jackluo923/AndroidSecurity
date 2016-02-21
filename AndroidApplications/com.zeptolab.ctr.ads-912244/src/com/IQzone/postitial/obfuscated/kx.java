package com.IQzone.postitial.obfuscated;

final class kx implements Runnable {
    private /* synthetic */ long a;
    private /* synthetic */ int b;
    private /* synthetic */ int c;
    private /* synthetic */ kw d;

    kx(kw kwVar, long j, int i, int i2) {
        this.d = kwVar;
        this.a = j;
        this.b = i;
        this.c = i2;
    }

    public final void run() {
        try {
            synchronized (kw.a(this.d)) {
                kw.a(this.d).a("postitial-adstates-last-ad", String.valueOf(this.a));
                kw.a(this.d).a("postitial-adstates-last-date", String.valueOf(this.b));
                kw.a(this.d).a("postitial-adstates-ads-today", String.valueOf(this.c));
            }
        } catch (om e) {
            kw.g();
            try {
                kw.a(this.d).a();
            } catch (om e2) {
                kw.g();
            }
        }
    }
}