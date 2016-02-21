package com.IQzone.postitial.obfuscated;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;

final class ml implements InvocationHandler {
    private final Executor a;
    private final lx b;

    private ml(mk mkVar, lx lxVar, Executor executor) {
        this.a = executor;
        this.b = lxVar;
    }

    public final Object invoke(Object obj, Method method, Object[] objArr) {
        this.a.execute(new mm(this, method, objArr));
        Class returnType = method.getReturnType();
        if (returnType.equals(Integer.TYPE)) {
            return Integer.valueOf(0);
        }
        if (method.getName().equals("toString") && returnType.equals(String.class)) {
            return "RunOnUIDisplayProxy.class";
        }
        if (returnType.equals(Boolean.TYPE)) {
            return Boolean.valueOf(true);
        }
        return returnType.equals(Long.TYPE) ? Long.valueOf(0) : null;
    }
}