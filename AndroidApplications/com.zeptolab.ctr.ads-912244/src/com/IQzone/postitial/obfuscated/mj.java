package com.IQzone.postitial.obfuscated;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Iterator;

final class mj implements InvocationHandler {
    private /* synthetic */ mi a;

    mj(mi miVar) {
        this.a = miVar;
    }

    public final Object invoke(Object obj, Method method, Object[] objArr) {
        synchronized (this.a.a) {
            Iterator it = this.a.a.iterator();
            while (it.hasNext()) {
                method.invoke((lx) it.next(), objArr);
            }
        }
        return null;
    }
}