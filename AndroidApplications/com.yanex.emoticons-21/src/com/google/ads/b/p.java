package com.google.ads.b;

import com.google.ads.ax;
import com.google.ads.bq;

final class p implements Runnable {
    final /* synthetic */ ax a;
    final /* synthetic */ n b;

    p(n nVar, ax axVar) {
        this.b = nVar;
        this.a = axVar;
    }

    public final void run() {
        if (n.d(this.b) != null) {
            n.d(this.b).stopLoading();
            n.d(this.b).destroy();
        }
        ((w) ((bq) n.b(this.b).a.a()).b.a()).a(n.e(this.b));
        if (n.f(this.b) != null) {
            ((ac) ((bq) n.b(this.b).a.a()).g.a()).b(n.f(this.b));
        }
        ((w) ((bq) n.b(this.b).a.a()).b.a()).a(this.a);
    }
}