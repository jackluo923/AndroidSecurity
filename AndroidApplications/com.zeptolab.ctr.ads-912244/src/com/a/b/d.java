package com.a.b;

public abstract class d {
    private final String a;
    private final Class b;

    public d(Class cls, String str) {
        this.a = str;
        this.b = cls;
    }

    public static d a(Class cls, Class cls2, String str) {
        return new e(cls, cls2, str);
    }

    public abstract Object a(Object obj);

    public void a(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Property " + b() + " is read-only");
    }

    public boolean a() {
        return false;
    }

    public String b() {
        return this.a;
    }

    public Class c() {
        return this.b;
    }
}