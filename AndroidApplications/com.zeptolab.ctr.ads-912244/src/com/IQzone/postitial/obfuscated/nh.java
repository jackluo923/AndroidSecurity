package com.IQzone.postitial.obfuscated;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class nh {
    private static final ql a;

    static {
        a = new ql();
    }

    public static ng a(ExecutorService executorService, Executor executor, int i) {
        Executor newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        nv nvVar = new nv(executor, 1, new ni());
        Runnable njVar = new nj(nvVar);
        newSingleThreadExecutor.execute(new nk(njVar, nvVar, executorService));
        ClassLoader classLoader = ng.class.getClassLoader();
        InvocationHandler nmVar = new nm(nvVar, njVar, executorService);
        return (ng) Proxy.newProxyInstance(classLoader, new Class[]{ng.class}, nmVar);
    }
}