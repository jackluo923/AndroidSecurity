package com.vungle.publisher;

import java.lang.reflect.Method;

final class cq {
    final Method a;
    final ct b;
    final Class c;
    String d;

    cq(Method method, ct ctVar, Class cls) {
        this.a = method;
        this.b = ctVar;
        this.c = cls;
    }

    private synchronized void a() {
        if (this.d == null) {
            StringBuilder stringBuilder = new StringBuilder(64);
            stringBuilder.append(this.a.getDeclaringClass().getName());
            stringBuilder.append('#').append(this.a.getName());
            stringBuilder.append('(').append(this.c.getName());
            this.d = stringBuilder.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof cq)) {
            return false;
        }
        a();
        cq cqVar = (cq) obj;
        cqVar.a();
        return this.d.equals(cqVar.d);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}