package com.google.ads;

import com.google.ads.b.w;
import com.google.ads.util.g;
import java.lang.ref.WeakReference;

public final class o implements Runnable {
    private WeakReference a;

    public o(w wVar) {
        this.a = new WeakReference(wVar);
    }

    public final void run() {
        w wVar = (w) this.a.get();
        if (wVar == null) {
            g.a("The ad must be gone, so cancelling the refresh timer.");
        } else {
            wVar.v();
        }
    }
}