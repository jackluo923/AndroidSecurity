package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;
import com.IQzone.postitial.b.g;

final class ey implements Runnable {
    private /* synthetic */ g a;
    private /* synthetic */ ex b;

    ey(ex exVar, g gVar) {
        this.b = exVar;
        this.a = gVar;
    }

    public final void run() {
        this.b.b.f.h();
        synchronized (this.b.a) {
            try {
                boolean booleanValue = ((Boolean) this.b.a.a()).booleanValue();
            } catch (om e) {
                b.a;
            }
        }
        if (!booleanValue) {
            this.a.onAppDone();
        }
    }
}