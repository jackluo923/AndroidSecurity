package com.a.b;

public abstract class b extends d {
    public b(String str) {
        super(Integer.class, str);
    }

    public abstract void a(Object obj, int i);

    public final void a(Object obj, Integer num) {
        a(obj, Integer.valueOf(num.intValue()));
    }
}