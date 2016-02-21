package com.wopnersoft.unitconverter.plus.a;

// compiled from: ProGuard
public class k {
    int a;
    String b;

    public k(int i, String str) {
        this.a = i;
        if (str == null || str.trim().length() == 0) {
            this.b = d.a(i);
        } else {
            this.b = new StringBuilder(String.valueOf(str)).append(" (response: ").append(d.a(i)).append(")").toString();
        }
    }

    public String a() {
        return this.b;
    }

    public boolean b() {
        return this.a == 0;
    }

    public boolean c() {
        return !b();
    }

    public String toString() {
        return new StringBuilder("IabResult: ").append(a()).toString();
    }
}