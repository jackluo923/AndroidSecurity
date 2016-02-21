package com.wopnersoft.unitconverter.plus.c;

import java.util.Map;
import java.util.Stack;

// compiled from: ProGuard
class ag extends c {
    private double a;

    ag(String str) {
        super(str);
        if (str.indexOf(69) > 0 || str.indexOf(101) > 0) {
            String toLowerCase = str.toLowerCase();
            int indexOf = toLowerCase.indexOf(101);
            try {
                this.a = Double.parseDouble(toLowerCase.substring(0, indexOf)) * Math.pow(10.0d, Double.parseDouble(toLowerCase.substring(indexOf + 1)));
            } catch (Exception e) {
                this.a = Math.pow(10.0d, Double.parseDouble(toLowerCase.substring(indexOf + 1).replace(',', '.'))) * Double.parseDouble(toLowerCase.substring(0, indexOf).replace(',', '.'));
            }
        } else {
            try {
                this.a = Double.parseDouble(str);
            } catch (Exception e2) {
                this.a = Double.parseDouble(str.replace(',', '.'));
            }
        }
    }

    void a(Stack stack, StringBuilder stringBuilder) {
        stringBuilder.append(b()).append(' ');
    }

    void a(Stack stack, Map map) {
        stack.push(Double.valueOf(this.a));
    }

    public boolean equals(Object obj) {
        return obj instanceof ag ? ((ag) obj).b().equals(b()) : false;
    }

    public int hashCode() {
        return b().hashCode();
    }
}