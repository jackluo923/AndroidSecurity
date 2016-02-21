package com.IQzone.postitial.obfuscated;

import java.util.Iterator;

final class gc implements Runnable {
    private /* synthetic */ gb a;

    gc(gb gbVar) {
        this.a = gbVar;
    }

    public final void run() {
        Iterator it = this.a.e.iterator();
        while (it.hasNext()) {
            ((mx) it.next()).a(null);
        }
        this.a.e.clear();
    }
}