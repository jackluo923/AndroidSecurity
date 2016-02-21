package com.wopnersoft.unitconverter.plus.c;

// compiled from: ProGuard
public abstract class d {
    final int a;
    final String b;

    protected d(String str) {
        this.a = 1;
        this.b = str;
        char charAt = str.charAt(0);
        if (charAt >= 'A' && charAt <= 'Z') {
            return;
        }
        if (charAt < 'a' || charAt > 'z') {
            throw new af("functions have to start with a lowercase or uppercase character");
        }
    }

    public abstract double a(double... dArr);
}