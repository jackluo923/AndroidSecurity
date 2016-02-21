package com.a.b;

public abstract class a extends d {
    public a(String str) {
        super(Float.class, str);
    }

    public abstract void a_(Object obj, float f);

    public final void a_(Object obj, Float f) {
        a(obj, f.floatValue());
    }
}