package com.andymstone.compasslib;

import android.util.FloatMath;
import com.andymstone.core.o;

public class y {
    aa a;
    private z b;
    private z c;
    private int d;
    private int e;

    public y() {
        this.d = 3;
        this.e = 3;
        this.a = new aa();
        this.b = new z(this);
        this.c = new z(this);
    }

    private int b() {
        return Math.min(this.d, this.e);
    }

    private double c(float[] fArr) {
        return (double) FloatMath.sqrt(fArr[0] * fArr[0] + fArr[1] * fArr[1] + fArr[2] * fArr[2]);
    }

    public aa a() {
        return this.a;
    }

    public void a(int i) {
        this.d = i;
        if (b() != 3) {
            this.a.b(o.MyAlertDialog_myAlertDialogButtonDrawable);
        } else {
            this.a.c(o.MyAlertDialog_myAlertDialogButtonDrawable);
        }
    }

    public void a(float[] fArr) {
        this.b.a(c(fArr));
        if (this.b.a() > 11.0d || this.b.a() < 9.0d) {
            this.a.b(0);
        } else {
            this.a.c(0);
        }
    }

    public void b(int i) {
        this.e = i;
        if (b() == 3 || b() == 2) {
            this.a.c(o.MyAlertDialog_myAlertDialogButtonDrawable);
        } else {
            this.a.b(o.MyAlertDialog_myAlertDialogButtonDrawable);
        }
    }

    public void b(float[] fArr) {
        this.c.a(c(fArr));
        if (this.c.a() > 65.0d || this.c.a() < 25.0d) {
            this.a.b(1);
        } else {
            this.a.c(1);
        }
    }
}