package com.wopnersoft.unitconverter.plus.a;

import android.os.Handler;
import java.util.List;

// compiled from: ProGuard
class f implements Runnable {
    final /* synthetic */ d a;
    private final /* synthetic */ boolean b;
    private final /* synthetic */ List c;
    private final /* synthetic */ j d;
    private final /* synthetic */ Handler e;

    f(d dVar, boolean z, List list, j jVar, Handler handler) {
        this.a = dVar;
        this.b = z;
        this.c = list;
        this.d = jVar;
        this.e = handler;
    }

    public void run() {
        k kVar = new k(0, "Inventory refresh successful.");
        l lVar = null;
        try {
            lVar = this.a.a(this.b, this.c);
        } catch (c e) {
            kVar = e.a();
        }
        this.a.b();
        if (!this.a.d && this.d != null) {
            this.e.post(new g(this, this.d, kVar, lVar));
        }
    }
}