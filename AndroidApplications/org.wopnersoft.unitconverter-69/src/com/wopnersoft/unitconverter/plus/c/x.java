package com.wopnersoft.unitconverter.plus.c;

// compiled from: ProGuard
class x extends e {
    final /* synthetic */ f e;

    x(f fVar, String str, int i) {
        this.e = fVar;
        super(str, i);
    }

    protected double a(double[] dArr) {
        if (dArr[1] != 0.0d) {
            return dArr[0] / dArr[1];
        }
        throw new ArithmeticException("Division by zero!");
    }
}