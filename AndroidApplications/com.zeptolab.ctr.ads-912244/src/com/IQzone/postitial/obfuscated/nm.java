package com.IQzone.postitial.obfuscated;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

final class nm implements InvocationHandler {
    private /* synthetic */ nv a;
    private /* synthetic */ Runnable b;
    private /* synthetic */ ExecutorService c;

    nm(nv nvVar, Runnable runnable, ExecutorService executorService) {
        this.a = nvVar;
        this.b = runnable;
        this.c = executorService;
    }

    public final Object invoke(Object obj, Method method, Object[] objArr) {
        Class[] parameterTypes = method.getParameterTypes();
        if (method.getDeclaringClass().equals(Executor.class) && parameterTypes.length == 1 && parameterTypes[0].equals(Runnable.class)) {
            this.a.a((Runnable) objArr[0], new nn(this));
            this.b.run();
            return null;
        } else if (!method.getDeclaringClass().equals(ng.class) || parameterTypes.length != 2 || !parameterTypes[0].equals(Runnable.class) || !parameterTypes[1].equals(mx.class) || !method.getReturnType().equals(po.class)) {
            return method.invoke(this.c, objArr);
        } else {
            po a = this.a.a((Runnable) objArr[0], (mx) objArr[1]);
            this.b.run();
            return a;
        }
    }
}