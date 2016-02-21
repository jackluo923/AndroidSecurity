package com.wopnersoft.unitconverter.plus.specialized;

import com.wopnersoft.unitconverter.plus.b.s;
import java.util.Map;

// compiled from: ProGuard
class c implements s {
    private c() {
    }

    public String a(Map map) {
        return String.valueOf((((Double) map.get("INPUT_VAL")).doubleValue() / 10000.0d) / 1.0E-6d - 273.0d);
    }
}