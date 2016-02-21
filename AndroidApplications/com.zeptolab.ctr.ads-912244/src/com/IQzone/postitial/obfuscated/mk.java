package com.IQzone.postitial.obfuscated;

import java.lang.reflect.Proxy;
import java.util.concurrent.Executor;

public class mk {
    private static final ql a;
    private final lx b;

    static {
        a = new ql();
    }

    public mk(Executor executor, lx lxVar, Class cls) {
        if (lxVar == null) {
            throw new NullPointerException("<RunOnUIDisplay><1>, Class cannot be null");
        }
        Class[] clsArr = new Class[]{cls};
        this.b = (lx) Proxy.newProxyInstance(getClass().getClassLoader(), clsArr, new ml(this, lxVar, executor, (byte) 0));
    }

    public final lx a() {
        return this.b;
    }
}