package com.wopnersoft.unitconverter.plus.c;

import java.util.Map;
import java.util.Stack;

// compiled from: ProGuard
class ah extends c {
    e a;

    ah(String str, e eVar) {
        super(str);
        this.a = eVar;
    }

    private boolean a() {
        return this.a.a;
    }

    private int c() {
        return this.a.c;
    }

    void a(Stack stack, StringBuilder stringBuilder) {
        while (!stack.isEmpty()) {
            al alVar = (al) stack.peek();
            if (alVar != null) {
                if (!(alVar instanceof ah) && !(alVar instanceof ae)) {
                    break;
                } else if (alVar instanceof ae) {
                    stack.pop();
                    stringBuilder.append(alVar.b()).append(" ");
                } else {
                    ah ahVar = (ah) alVar;
                    if (a() && c() <= ahVar.c()) {
                        stringBuilder.append(((al) stack.pop()).b()).append(" ");
                    } else if (a() || c() >= ahVar.c()) {
                        break;
                    } else {
                        stringBuilder.append(((al) stack.pop()).b()).append(" ");
                    }
                }
            } else {
                break;
            }
        }
        stack.push(this);
    }

    void a(Stack stack, Map map) {
        double[] dArr = new double[this.a.d];
        int i = 0;
        while (i < this.a.d) {
            dArr[this.a.d - i - 1] = ((Double) stack.pop()).doubleValue();
            i++;
        }
        stack.push(Double.valueOf(this.a.a(dArr)));
    }

    public boolean equals(Object obj) {
        return obj instanceof ah ? ((ah) obj).b().equals(b()) : false;
    }

    public int hashCode() {
        return b().hashCode();
    }
}