package com.wopnersoft.unitconverter.plus.converter;

import com.wopnersoft.unitconverter.plus.b.ac;
import java.util.Map;

// compiled from: ProGuard
public class SpeedUnitConverter extends ac {
    private Boolean q(String str) {
        return (getString(2131362803).equalsIgnoreCase(str) || getString(2131362802).equalsIgnoreCase(str)) ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    protected double a(String str, String str2, double d, Boolean bool) {
        if (q(str) == q(str2)) {
            return super.a(str, str2, d, bool);
        }
        double n = n(str) * (n(str2) / d);
        super.g(a(n));
        c(bool);
        return n;
    }

    protected double a(String str, String str2, double d, Boolean bool, Map map, Boolean bool2) {
        if (q(str) == q(str2)) {
            return super.a(str, str2, d, bool, map, bool2);
        }
        double doubleValue = ((Double) map.get(str)).doubleValue() * (((Double) map.get(str2)).doubleValue() / d);
        if (bool2.booleanValue()) {
            super.g(a(doubleValue));
        }
        c(bool);
        return doubleValue;
    }
}