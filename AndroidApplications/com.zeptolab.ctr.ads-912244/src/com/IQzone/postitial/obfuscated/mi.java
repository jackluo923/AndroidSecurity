package com.IQzone.postitial.obfuscated;

import java.lang.reflect.Proxy;
import java.util.Set;

public final class mi {
    public final Set a;
    public final lx b;

    public mi(Class cls, ClassLoader classLoader) {
        this.a = new mu();
        if (cls == null) {
            throw new NullPointerException("<AllDisplays><1>, Class cannot be null");
        }
        Class[] clsArr = new Class[]{cls};
        this.b = (lx) Proxy.newProxyInstance(classLoader, clsArr, new mj(this));
    }

    public final void a(lx lxVar) {
        synchronized (this.a) {
            this.a.add(lxVar);
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.a) {
            z = this.a.size() != 0;
        }
        return z;
    }
}