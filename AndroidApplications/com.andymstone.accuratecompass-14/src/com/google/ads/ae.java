package com.google.ads;

import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.lang.ref.WeakReference;

public class ae implements Runnable {
    private WeakReference a;

    public ae(d dVar) {
        this.a = new WeakReference(dVar);
    }

    public void run() {
        d dVar = (d) this.a.get();
        if (dVar == null) {
            b.a("The ad must be gone, so cancelling the refresh timer.");
        } else {
            dVar.x();
        }
    }
}