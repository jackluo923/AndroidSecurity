package com.wopnersoft.unitconverter.plus.c;

import com.actionbarsherlock.internal.widget.IcsLinearLayout;

// compiled from: ProGuard
public abstract class e {
    final boolean a;
    final String b;
    final int c;
    final int d;

    protected e(String str) {
        this.a = true;
        this.b = str;
        this.c = 1;
        this.d = 2;
    }

    protected e(String str, int i) {
        this.a = true;
        this.b = str;
        this.c = i;
        this.d = 2;
    }

    protected e(String str, boolean z, int i) {
        this.a = z;
        this.b = str;
        this.c = i;
        this.d = 2;
    }

    protected e(String str, boolean z, int i, int i2) {
        int i3 = 1;
        this.a = z;
        this.b = str;
        this.c = i;
        if (i2 != 1) {
            i3 = IcsLinearLayout.SHOW_DIVIDER_MIDDLE;
        }
        this.d = i3;
    }

    protected abstract double a(double[] dArr);
}