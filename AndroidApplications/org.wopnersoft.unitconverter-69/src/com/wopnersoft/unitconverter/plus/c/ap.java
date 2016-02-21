package com.wopnersoft.unitconverter.plus.c;

import java.util.Map;
import java.util.Stack;

// compiled from: ProGuard
class ap extends c {
    ap(String str) {
        super(str);
    }

    void a(Stack stack, StringBuilder stringBuilder) {
        stringBuilder.append(b()).append(" ");
    }

    void a(Stack stack, Map map) {
        stack.push(Double.valueOf(((Double) map.get(b())).doubleValue()));
    }

    public boolean equals(Object obj) {
        return obj instanceof ap ? super.b().equals(((ap) obj).b()) : false;
    }

    public int hashCode() {
        return super.b().hashCode();
    }
}