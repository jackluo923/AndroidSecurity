package com.google.ads.b;

import android.os.Handler;
import com.google.ads.bo;
import com.google.ads.util.g;
import java.lang.ref.WeakReference;

final class d implements Runnable {
    private final WeakReference a;

    public d(c cVar) {
        this.a = new WeakReference(cVar);
    }

    public final void a() {
        ((Handler) bo.a().c.a()).postDelayed(this, 250);
    }

    public final void run() {
        c cVar = (c) this.a.get();
        if (cVar == null) {
            g.d("The video must be gone, so cancelling the timeupdate task.");
        } else {
            cVar.e();
            ((Handler) bo.a().c.a()).postDelayed(this, 250);
        }
    }
}