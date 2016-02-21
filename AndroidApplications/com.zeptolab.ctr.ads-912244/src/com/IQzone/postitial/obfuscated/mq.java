package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;

public abstract class mq {
    public final mi a;
    final Class b;
    final Executor c;

    public mq(Class cls, oc ocVar) {
        this.c = ocVar;
        this.b = cls;
        this.a = new mi(cls, getClass().getClassLoader());
    }

    protected abstract void a();

    protected abstract void a(lx lxVar);

    public final lx b() {
        return this.a.b;
    }

    protected final void b(lx lxVar) {
        if (this.b.isInstance(lxVar)) {
            a();
            this.c.execute(new mt(this, lxVar));
        }
    }
}