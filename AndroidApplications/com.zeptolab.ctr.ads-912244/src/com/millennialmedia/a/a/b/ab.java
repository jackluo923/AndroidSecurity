package com.millennialmedia.a.a.b;

import java.lang.reflect.Method;

final class ab extends aa {
    final /* synthetic */ Method a;
    final /* synthetic */ Object b;

    ab(Method method, Object obj) {
        this.a = method;
        this.b = obj;
    }

    public Object a(Class cls) {
        return this.a.invoke(this.b, new Object[]{cls});
    }
}