package me.kiip.internal.f;

import com.zeptolab.ctr.scorer.GoogleScorer;

final class g {
    private int a;
    private int b;
    private int c;
    private final int[] d;

    g() {
        this.d = new int[10];
    }

    void a(int i, int i2, int i3) {
        if (i < this.d.length) {
            int i4 = 1 << i;
            this.a |= i4;
            if ((i2 & 1) != 0) {
                this.b |= i4;
            } else {
                this.b &= i4 ^ -1;
            }
            if ((i2 & 2) != 0) {
                this.c = i4 | this.c;
            } else {
                this.c = (i4 ^ -1) & this.c;
            }
            this.d[i] = i3;
        }
    }

    void a(g gVar) {
        int i = 0;
        while (i < 10) {
            if (gVar.a(i)) {
                a(i, gVar.c(i), gVar.b(i));
            }
            i++;
        }
    }

    boolean a(int i) {
        return ((1 << i) & this.a) != 0;
    }

    int b(int i) {
        return this.d[i];
    }

    int c(int i) {
        int i2 = 0;
        if (f(i)) {
            i2 = GoogleScorer.CLIENT_PLUS;
        }
        return e(i) ? i2 | 1 : i2;
    }

    int d(int i) {
        return (128 & this.a) != 0 ? this.d[7] : i;
    }

    boolean e(int i) {
        return ((1 << i) & this.b) != 0;
    }

    boolean f(int i) {
        return ((1 << i) & this.c) != 0;
    }
}