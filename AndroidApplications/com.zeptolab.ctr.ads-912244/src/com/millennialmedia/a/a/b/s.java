package com.millennialmedia.a.a.b;

import java.math.BigDecimal;
import java.math.BigInteger;

public final class s extends Number {
    private final String a;

    public s(String str) {
        this.a = str;
    }

    private Object a() {
        return new BigDecimal(this.a);
    }

    public double doubleValue() {
        return Double.parseDouble(this.a);
    }

    public float floatValue() {
        return Float.parseFloat(this.a);
    }

    public int intValue() {
        try {
            return Integer.parseInt(this.a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.a);
            } catch (NumberFormatException e2) {
                return new BigInteger(this.a).intValue();
            }
        }
    }

    public long longValue() {
        try {
            return Long.parseLong(this.a);
        } catch (NumberFormatException e) {
            return new BigInteger(this.a).longValue();
        }
    }

    public String toString() {
        return this.a;
    }
}