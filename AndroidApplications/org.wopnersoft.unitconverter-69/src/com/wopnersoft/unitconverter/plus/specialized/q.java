package com.wopnersoft.unitconverter.plus.specialized;

import com.wopnersoft.unitconverter.plus.b.s;
import java.util.Map;

// compiled from: ProGuard
class q implements s {
    private q() {
    }

    public String a(Map map) {
        return String.valueOf(Math.log10(((Double) map.get("INPUT_VAL")).doubleValue() * 1000.0d) * 10.0d);
    }
}