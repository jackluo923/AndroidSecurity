package com.wopnersoft.unitconverter.plus.converter;

import com.wopnersoft.unitconverter.plus.b.s;
import java.util.Map;

// compiled from: ProGuard
class d implements s {
    private d() {
    }

    public String a(Map map) {
        double doubleValue = ((Double) map.get("INPUT_VAL")).doubleValue();
        return ((Integer) map.get("INPUT_MODE")).intValue() == 0 ? String.valueOf(doubleValue * 2.8248093633182216E-5d) : String.valueOf(doubleValue / 2.8248093633182216E-5d);
    }
}