package com.wopnersoft.unitconverter.plus.specialized;

import com.wopnersoft.unitconverter.plus.b.s;
import java.util.Map;

// compiled from: ProGuard
class r implements s {
    private r() {
    }

    public String a(Map map) {
        return String.valueOf(Math.pow(10.0d, (((Double) map.get("INPUT_VAL")).doubleValue() - 30.0d) / 10.0d));
    }
}