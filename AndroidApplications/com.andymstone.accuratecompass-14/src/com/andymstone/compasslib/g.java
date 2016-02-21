package com.andymstone.compasslib;

import android.os.SystemClock;
import com.andymstone.core.o;

public class g implements f {
    private int a;
    private long b;
    private long c;
    private h d;

    public g(h hVar) {
        this.a = -1;
        this.d = hVar;
    }

    private void a(int i) {
        if (i != -1 && i != this.a) {
            this.a = i;
            this.b = SystemClock.elapsedRealtime();
            this.c = SystemClock.elapsedRealtime();
            this.d.setNewActiveWarning(i);
        } else if (i != -1 && i == this.a) {
            this.c = SystemClock.elapsedRealtime();
        } else if (SystemClock.elapsedRealtime() - this.c > 1000) {
            this.a = -1;
            this.b = 0;
        }
        b();
    }

    private void b() {
        boolean z = 1;
        int i = this.a != -1;
        if (this.c - this.b >= 1000) {
            z = false;
        }
        if (i == 0 || i != 0) {
            this.d.d();
        } else {
            this.d.c();
        }
    }

    public void a() {
        this.a = -1;
        this.b = 0;
    }

    public void a(aa aaVar) {
        if (aaVar.a(o.MyAlertDialog_myAlertDialogButtonDrawable)) {
            a((int)o.MyAlertDialog_myAlertDialogButtonDrawable);
        } else if (aaVar.a(1)) {
            a(1);
        } else if (aaVar.a(0)) {
            a(0);
        } else {
            a(-1);
        }
    }

    public void a(float[] fArr, float f, float f2, float f3, int i) {
    }
}