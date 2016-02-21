package com.IQzone.postitial.obfuscated;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class mm implements Runnable {
    private /* synthetic */ Method a;
    private /* synthetic */ Object[] b;
    private /* synthetic */ ml c;

    mm(ml mlVar, Method method, Object[] objArr) {
        this.c = mlVar;
        this.a = method;
        this.b = objArr;
    }

    public final void run() {
        try {
            this.a.invoke(this.c.b, this.b);
        } catch (IllegalArgumentException e) {
            mk.a;
        } catch (IllegalAccessException e2) {
            mk.a;
        } catch (InvocationTargetException e3) {
            InvocationTargetException invocationTargetException = e3;
            mk.a;
            invocationTargetException.getCause();
            mk.a;
        }
    }
}