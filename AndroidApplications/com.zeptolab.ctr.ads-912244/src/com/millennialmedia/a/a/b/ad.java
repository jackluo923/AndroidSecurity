package com.millennialmedia.a.a.b;

import java.lang.reflect.Method;

final class ad extends aa {
    final /* synthetic */ Method a;
    final /* synthetic */ int b;

    ad(Method method, int i) {
        this.a = method;
        this.b = i;
    }

    public Object a(Class cls) {
        return this.a.invoke(null, new Object[]{cls, Integer.valueOf(this.b)});
    }
}