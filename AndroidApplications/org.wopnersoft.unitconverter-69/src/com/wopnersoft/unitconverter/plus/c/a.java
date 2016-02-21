package com.wopnersoft.unitconverter.plus.c;

// compiled from: ProGuard
public abstract class a {
    public static double[] a_(double[] dArr) {
        int i = 0;
        int length = dArr.length - 1;
        while (i < length) {
            double d = dArr[i];
            dArr[i] = dArr[length];
            dArr[length] = d;
            i++;
            length--;
        }
        return dArr;
    }
}