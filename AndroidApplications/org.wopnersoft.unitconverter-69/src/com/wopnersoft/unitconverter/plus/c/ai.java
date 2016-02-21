package com.wopnersoft.unitconverter.plus.c;

import java.util.Stack;

// compiled from: ProGuard
class ai extends al {
    ai(String str) {
        super(str);
    }

    void a(Stack stack, StringBuilder stringBuilder) {
        if (a()) {
            stack.push(this);
        } else {
            while (true) {
                al alVar = (al) stack.peek();
                if (alVar instanceof ah || alVar instanceof ae || (alVar instanceof ai && !((ai) alVar).a())) {
                    stringBuilder.append(((al) stack.pop()).b()).append(" ");
                } else {
                    stack.pop();
                    return;
                }
            }
        }
    }

    boolean a() {
        return b().equals("(") || b().equals("[") || b().equals("{");
    }

    public boolean equals(Object obj) {
        return obj instanceof ai ? ((ai) obj).b().equals(b()) : false;
    }

    public int hashCode() {
        return b().hashCode();
    }
}