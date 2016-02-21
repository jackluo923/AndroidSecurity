package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

public final class w {
    private final Runnable kW;
    private z kX;
    private boolean kY;

    class AnonymousClass_1 implements Runnable {
        private final WeakReference kZ;
        final /* synthetic */ v la;

        AnonymousClass_1(v vVar) {
            this.la = vVar;
            this.kZ = new WeakReference(this.la);
        }

        public void run() {
            w.this.kY = false;
            v vVar = (v) this.kZ.get();
            if (vVar != null) {
                vVar.b(w.this.kX);
            }
        }
    }

    public w(v vVar) {
        this.kY = false;
        this.kW = new AnonymousClass_1(vVar);
    }

    public void a(z zVar, long j) {
        if (this.kY) {
            da.w("An ad refresh is already scheduled.");
        } else {
            da.u("Scheduling ad refresh " + j + " milliseconds from now.");
            this.kX = zVar;
            this.kY = true;
            cz.pT.postDelayed(this.kW, j);
        }
    }

    public void cancel() {
        cz.pT.removeCallbacks(this.kW);
    }

    public void d(z zVar) {
        a(zVar, 60000);
    }
}