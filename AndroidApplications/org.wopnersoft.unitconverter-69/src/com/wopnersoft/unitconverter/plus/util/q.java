package com.wopnersoft.unitconverter.plus.util;

import android.text.method.DigitsKeyListener;
import com.actionbarsherlock.R;

// compiled from: ProGuard
public class q extends DigitsKeyListener {
    private static final char[] a;
    private static final char[] b;
    private static final char[] c;
    private static final char[] d;
    private static final char[] e;
    private int f;
    private Boolean g;
    private Boolean h;

    static {
        a = new char[]{'0', '1'};
        b = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        c = new char[]{'0', '1', '2', '3', '4', '5', '6', '7'};
        d = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        e = new char[]{'M', 'D', 'C', 'L', 'X', 'V', 'I', 'm', 'd', 'c', 'l', 'x', 'v', 'i'};
    }

    public q() {
        super(true, true);
        this.f = 1;
        this.g = Boolean.valueOf(true);
        this.h = Boolean.valueOf(true);
    }

    public q(int i, boolean z, boolean z2) {
        super(z, z2);
        this.f = i;
        this.g = Boolean.valueOf(z2);
        this.h = Boolean.valueOf(z);
    }

    public q(boolean z, boolean z2) {
        super(z, z2);
        this.f = 1;
        this.g = Boolean.valueOf(z2);
        this.h = Boolean.valueOf(z);
    }

    public Boolean a() {
        return this.g;
    }

    public Boolean b() {
        return this.h;
    }

    protected char[] getAcceptedChars() {
        if ((this.f & 2) == 2) {
            return b;
        }
        if ((this.f & 4) == 4) {
            return a;
        }
        if ((this.f & 8) == 8) {
            return c;
        }
        if ((this.f & 16) == 16) {
            return d;
        }
        return (this.f & 32) == 32 ? e : super.getAcceptedChars();
    }

    public int getInputType() {
        return ((this.f & 2048) == 2048 || (this.f & 16) == 16 || (this.f & 32) == 32) ? 1 : R.styleable.SherlockTheme_actionBarTabTextStyle;
    }
}