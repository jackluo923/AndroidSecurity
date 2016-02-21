package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;

final class fa implements Runnable {
    private /* synthetic */ ez a;

    fa(ez ezVar) {
        this.a = ezVar;
    }

    public final void run() {
        try {
            synchronized (this.a.a) {
                try {
                    this.a.a.a(Boolean.valueOf(true));
                } catch (om e) {
                    b.a;
                }
            }
            this.a.b.f.e();
            this.a.b.f.a();
            this.a.b.h.a(true);
            this.a.b.h.b();
        } catch (Throwable th) {
            b.a;
        }
    }
}