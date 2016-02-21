package com.IQzone.postitial.obfuscated;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

final class qk implements Callback {
    private /* synthetic */ qe a;

    qk(qe qeVar) {
        this.a = qeVar;
    }

    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        boolean z = 1;
        qe.f(this.a, i2);
        qe.g(this.a, i3);
        int i4 = qe.i(this.a) == 3;
        if (!(qe.a(this.a) == i2 && qe.b(this.a) == i3)) {
            z = false;
        }
        if (qe.d(this.a) != null && i4 != 0 && i != 0) {
            if (qe.f(this.a) != 0) {
                this.a.seekTo(qe.f(this.a));
            }
            this.a.start();
        }
    }

    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        qe.a(this.a, surfaceHolder);
        qe.l(this.a);
    }

    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        qe.a(this.a, null);
        if (qe.e(this.a) != null) {
            qe.e(this.a).hide();
        }
        qe.d(this.a, true);
    }
}