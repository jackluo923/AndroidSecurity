package com.millennialmedia.a.a.b;

import java.lang.reflect.Type;

class g implements x {
    final /* synthetic */ Class a;
    final /* synthetic */ Type b;
    final /* synthetic */ c c;
    private final aa d;

    g(c cVar, Class cls, Type type) {
        this.c = cVar;
        this.a = cls;
        this.b = type;
        this.d = aa.a();
    }

    public Object a() {
        try {
            return this.d.a(this.a);
        } catch (Exception e) {
            throw new RuntimeException("Unable to invoke no-args constructor for " + this.b + ". " + "Register an InstanceCreator with Gson for this type may fix this problem.", e);
        }
    }
}