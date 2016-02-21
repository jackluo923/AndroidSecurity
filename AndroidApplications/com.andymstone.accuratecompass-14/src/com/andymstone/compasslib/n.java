package com.andymstone.compasslib;

class n implements w {
    final int a;
    final int b;
    double[] c;
    double[] d;
    double[] e;
    final float[] f;
    final float[] g;
    double[] h;
    boolean i;
    boolean j;

    n() {
        int i = 0;
        this.a = 6;
        this.b = 6;
        this.f = new float[3];
        this.g = new float[3];
        this.i = false;
        this.j = false;
        this.c = new double[6];
        this.e = new double[6];
        this.h = new double[6];
        while (i < 6) {
            this.h[i] = 1.0d;
            this.e[i] = 1.0d;
            i++;
        }
        this.d = new double[6];
    }

    public void a(float[] fArr) {
        this.j = true;
        int i = 0;
        while (i < 3) {
            this.d[i] = (double) fArr[i];
            i++;
        }
        e();
    }

    public boolean a() {
        return true;
    }

    public void b(float[] fArr) {
        this.i = true;
        int i = 0;
        while (i < 3) {
            this.d[i + 3] = (double) fArr[i];
            i++;
        }
        e();
    }

    public float[] b() {
        int i = 0;
        while (i < 3) {
            this.f[i] = (float) this.c[i];
            i++;
        }
        return this.f;
    }

    public float[] c() {
        int i = 0;
        while (i < 3) {
            this.g[i] = (float) this.c[i + 3];
            i++;
        }
        return this.g;
    }

    boolean d() {
        return this.i && this.j;
    }

    void e() {
        if (d()) {
            int i = 0;
            double d = 0.0d;
            double d2 = 0.0d;
            double d3 = 0.0d;
            double d4 = 0.0d;
            while (i < 3) {
                double d5 = this.c[i + 3] - this.d[i + 3];
                d3 += d5 * d5;
                d5 = this.c[i] - this.d[i];
                d4 += d5 * d5;
                d2 += this.c[i + 3] * this.c[i + 3];
                i++;
                d += this.c[i] * this.c[i];
            }
            double d6 = 0.0d;
            if (d2 > 0.0d) {
                d6 = 0.0d + Math.sqrt(d3 / d2);
            }
            if (d > 0.0d) {
                d6 += Math.sqrt(d4 / d);
            }
            double pow = Math.pow(Math.max(0.0d, d6 - 0.04d), 1.5d) * 5.0d + 1.0E-5d;
            i = 0;
            while (i < 6) {
                double d7 = this.c[i];
                double d8 = this.e[i] + pow;
                double d9 = d8 / (this.h[i] + d8);
                this.c[i] = d7 + (this.d[i] - d7) * d9;
                this.e[i] = (1.0d - d9) * d8;
                i++;
            }
            this.j = false;
            this.i = false;
        }
    }
}