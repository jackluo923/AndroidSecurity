package com.google.ads.interactivemedia.v3.a.b;

import java.math.BigDecimal;

public final class f extends Number {
    private final String a;

    public f(String str) {
        this.a = str;
    }

    public final double doubleValue() {
        return Double.parseDouble(this.a);
    }

    public final float floatValue() {
        return Float.parseFloat(this.a);
    }

    public final int intValue() {
        try {
            return Integer.parseInt(this.a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.a).intValue();
            }
        }
    }

    public final long longValue() {
        try {
            return Long.parseLong(this.a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.a).longValue();
        }
    }

    public final String toString() {
        return this.a;
    }
}