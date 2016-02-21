package com.google.ads.interactivemedia.v3.a.c;

import com.google.ads.interactivemedia.v3.a.b.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public final class a {
    final Class a;
    final Type b;
    final int c;

    protected a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        this.b = b.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.a = b.b(this.b);
        this.c = this.b.hashCode();
    }

    private a(Object obj) {
        this.b = b.a((Type) com.google.ads.interactivemedia.v3.a.b.a.a(obj));
        this.a = b.b(this.b);
        this.c = this.b.hashCode();
    }

    public static a a_(Class cls) {
        return new a(cls);
    }

    public static a a_(Type type) {
        return new a(type);
    }

    public final Class a_() {
        return this.a;
    }

    public final Type b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        return obj instanceof a && b.a(this.b, ((a) obj).b);
    }

    public final int hashCode() {
        return this.c;
    }

    public final String toString() {
        return b.c(this.b);
    }
}