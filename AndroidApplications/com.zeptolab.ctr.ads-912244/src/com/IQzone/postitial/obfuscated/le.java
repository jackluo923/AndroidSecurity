package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class le implements Runnable {
    private /* synthetic */ la a;

    le(la laVar) {
        this.a = laVar;
    }

    public final void run() {
        Set hashSet;
        synchronized (la.f(this.a)) {
            hashSet = new HashSet(la.f(this.a));
        }
        la.l();
        new StringBuilder("notifying listeners ").append(hashSet.size()).toString();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
    }
}