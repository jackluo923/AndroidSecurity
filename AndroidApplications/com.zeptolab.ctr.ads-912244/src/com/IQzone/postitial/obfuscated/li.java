package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b.g;
import java.util.Iterator;

final class li implements g {
    private /* synthetic */ la a;

    li(la laVar) {
        this.a = laVar;
    }

    public final void onAppDone() {
        la.l();
        synchronized (la.o(this.a)) {
            Iterator it = la.o(this.a).iterator();
            while (it.hasNext()) {
                ((g) it.next()).onAppDone();
            }
        }
    }
}