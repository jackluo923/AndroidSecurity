package com.wopnersoft.unitconverter.plus.specialized;

import com.wopnersoft.unitconverter.plus.b.s;
import java.util.Map;

// compiled from: ProGuard
class b implements s {
    private b() {
    }

    public String a(Map map) {
        return String.valueOf(((((Double) map.get("INPUT_VAL")).doubleValue() + 273.0d) * 1.0E-6d) * 10000.0d);
    }
}