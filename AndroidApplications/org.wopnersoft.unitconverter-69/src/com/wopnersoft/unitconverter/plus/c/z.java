package com.wopnersoft.unitconverter.plus.c;

// compiled from: ProGuard
class z extends e {
    final /* synthetic */ f e;

    z(f fVar, String str, boolean z, int i) {
        this.e = fVar;
        super(str, z, i);
    }

    protected double a(double[] dArr) {
        if (dArr[1] != 0.0d) {
            return dArr[0] % dArr[1];
        }
        throw new ArithmeticException("Division by zero!");
    }
}