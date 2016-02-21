package com.IQzone.postitial.obfuscated;

import java.util.Iterator;

final class ge implements Runnable {
    private /* synthetic */ mx a;
    private /* synthetic */ gb b;

    ge(gb gbVar, mx mxVar) {
        this.b = gbVar;
        this.a = mxVar;
    }

    public final void run() {
        if (this.b.a.a()) {
            Iterator it = this.b.e.iterator();
            while (it.hasNext()) {
                ((mx) it.next()).a(null);
            }
            this.b.e.clear();
        } else {
            this.b.e.add(this.a);
        }
    }
}