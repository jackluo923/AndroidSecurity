package com.google.ads;

import com.google.ads.util.e;
import com.google.ads.util.g;

final class bi implements Runnable {
    final /* synthetic */ bh a;

    bi(bh bhVar) {
        this.a = bhVar;
    }

    public final void run() {
        if (this.a.h()) {
            e.a(this.a.g);
            try {
                this.a.g.a();
                g.a(new StringBuilder("Called destroy() for adapter with class: ").append(this.a.g.getClass().getName()).toString());
            } catch (Throwable th) {
                g.b(new StringBuilder("Error while destroying adapter (").append(this.a.f()).append("):").toString(), th);
            }
        }
    }
}