package com.wopnersoft.unitconverter.plus.converter;

import com.wopnersoft.unitconverter.plus.b.s;
import com.wopnersoft.unitconverter.plus.e.b;
import java.util.Map;

// compiled from: ProGuard
class f implements s {
    private f() {
    }

    public String a(Map map) {
        double doubleValue = ((Double) map.get("INPUT_VAL")).doubleValue();
        return b.a(doubleValue, 0.0d).booleanValue() ? "0" : String.valueOf(0.001d / doubleValue);
    }
}