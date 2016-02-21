package com.millennialmedia.a.a.b;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

class i implements x {
    final /* synthetic */ Constructor a;
    final /* synthetic */ c b;

    i(c cVar, Constructor constructor) {
        this.b = cVar;
        this.a = constructor;
    }

    public Object a() {
        try {
            return this.a.newInstance(null);
        } catch (InstantiationException e) {
            throw new RuntimeException("Failed to invoke " + this.a + " with no args", e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException("Failed to invoke " + this.a + " with no args", e2.getTargetException());
        } catch (IllegalAccessException e3) {
            throw new AssertionError(e3);
        }
    }
}