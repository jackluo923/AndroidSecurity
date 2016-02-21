package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;

final class fc implements Runnable {
    final /* synthetic */ fb a;

    fc(fb fbVar) {
        this.a = fbVar;
    }

    public final void run() {
        this.a.d.f.b();
        synchronized (this.a.b) {
            try {
                this.a.b.a(Boolean.valueOf(false));
            } catch (om e) {
                b.a;
            }
        }
        this.a.c.postDelayed(new fd(this), 3000);
    }
}