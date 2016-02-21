package com.andymstone.compasslib;

class z {
    double a;
    final double b;
    final /* synthetic */ y c;

    z(y yVar) {
        this.c = yVar;
        this.b = 0.15000000596046448d;
    }

    public double a() {
        return this.a;
    }

    public void a(double d) {
        if (this.a == 0.0d) {
            this.a = d;
        } else {
            this.a += 0.15000000596046448d * (d - this.a);
        }
    }
}