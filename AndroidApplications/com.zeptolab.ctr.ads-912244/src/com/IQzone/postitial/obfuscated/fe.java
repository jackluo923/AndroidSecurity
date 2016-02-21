package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;

final class fe implements Runnable {
    private /* synthetic */ fd a;

    fe(fd fdVar) {
        this.a = fdVar;
    }

    public final void run() {
        synchronized (this.a.a.a.b) {
            try {
                boolean booleanValue = ((Boolean) this.a.a.a.b.a()).booleanValue();
            } catch (om e) {
                b.a;
            }
        }
        if (booleanValue) {
            this.a.a.a.d.f.b();
        } else {
            this.a.a.a.d.h.a(false);
        }
    }
}