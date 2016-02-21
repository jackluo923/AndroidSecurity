package com.wopnersoft.unitconverter.plus.converter;

import com.wopnersoft.unitconverter.plus.b.s;
import java.util.Map;

// compiled from: ProGuard
class n implements s {
    private n() {
    }

    public String a(Map map) {
        double doubleValue = ((Double) map.get("INPUT_VAL")).doubleValue();
        return ((Integer) map.get("INPUT_MODE")).intValue() == 0 ? String.valueOf((doubleValue + 459.67d) * 0.5555555555555556d) : String.valueOf(1.8d * doubleValue - 459.67d);
    }
}