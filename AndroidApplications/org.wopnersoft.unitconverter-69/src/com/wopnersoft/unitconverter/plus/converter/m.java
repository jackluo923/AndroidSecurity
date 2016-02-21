package com.wopnersoft.unitconverter.plus.converter;

import com.wopnersoft.unitconverter.plus.b.s;
import java.util.Map;

// compiled from: ProGuard
class m implements s {
    private m() {
    }

    public String a(Map map) {
        double doubleValue = ((Double) map.get("INPUT_VAL")).doubleValue();
        return ((Integer) map.get("INPUT_MODE")).intValue() == 0 ? String.valueOf(doubleValue + 273.15d) : String.valueOf(doubleValue - 273.15d);
    }
}