package com.IQzone.postitial.obfuscated;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class ne {
    private final Set a;
    private final long b;
    private final int c;

    public ne(long j, int i) {
        this.a = new HashSet();
        this.b = 1000;
        this.c = 10;
    }

    public final synchronized boolean a() {
        boolean z;
        this.a.add(new nf(System.currentTimeMillis()));
        if (this.a.size() >= this.c) {
            z = true;
            Collection hashSet = new HashSet();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                boolean z2;
                nf nfVar = (nf) it.next();
                if (System.currentTimeMillis() - nfVar.a > this.b) {
                    hashSet.add(nfVar);
                    z2 = false;
                } else {
                    z2 = z;
                }
                z = z2;
            }
            this.a.removeAll(hashSet);
        } else {
            z = false;
        }
        return z;
    }
}