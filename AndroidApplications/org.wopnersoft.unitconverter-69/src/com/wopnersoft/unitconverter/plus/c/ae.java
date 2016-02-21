package com.wopnersoft.unitconverter.plus.c;

import java.util.Map;
import java.util.Stack;

// compiled from: ProGuard
class ae extends c {
    final String a;
    final d b;

    ae(String str, d dVar) {
        super(str);
        if (str == null) {
            throw new an(str);
        }
        try {
            this.a = dVar.b;
            this.b = dVar;
        } catch (IllegalArgumentException e) {
            throw new an(str);
        }
    }

    void a(Stack stack, StringBuilder stringBuilder) {
        stack.push(this);
    }

    void a(Stack stack, Map map) {
        double[] dArr = new double[this.b.a];
        int i = 0;
        while (i < this.b.a) {
            dArr[i] = ((Double) stack.pop()).doubleValue();
            i++;
        }
        stack.push(Double.valueOf(this.b.a(a.a(dArr))));
    }

    public boolean equals(Object obj) {
        return obj instanceof ae ? this.a.equals(((ae) obj).a) : false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}