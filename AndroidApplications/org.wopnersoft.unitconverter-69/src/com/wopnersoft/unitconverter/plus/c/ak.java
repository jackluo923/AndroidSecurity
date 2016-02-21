package com.wopnersoft.unitconverter.plus.c;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Stack;

// compiled from: ProGuard
class ak implements b {
    final List a;
    final String b;
    final Map c;

    public ak(List list, String str, Map map) {
        this.a = list;
        this.b = str;
        this.c = map;
    }

    public double a() {
        return a(null);
    }

    public double a(double... dArr) {
        if (this.c.size() == 0 && dArr != null) {
            throw new IllegalArgumentException("there are no variables to set values");
        } else if (dArr == null || dArr.length == this.c.size()) {
            if (this.c.size() > 0 && dArr != null) {
                Iterator it = this.c.entrySet().iterator();
                int i = 0;
                while (it.hasNext()) {
                    int i2 = i + 1;
                    ((Entry) it.next()).setValue(Double.valueOf(dArr[i]));
                    i = i2;
                }
            }
            Stack stack = new Stack();
            Iterator it2 = this.a.iterator();
            while (it2.hasNext()) {
                ((c) ((al) it2.next())).a(stack, this.c);
            }
            return ((Double) stack.pop()).doubleValue();
        } else {
            throw new IllegalArgumentException("The are an unequal number of variables and arguments");
        }
    }
}