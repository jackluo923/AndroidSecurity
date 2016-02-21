package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.a;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

public final class c {
    private final Field a;

    public c(Object obj) {
        a.a(obj);
        this.a = obj;
    }

    public Class a() {
        return this.a.getDeclaringClass();
    }

    Object a(Object obj) {
        return this.a.get(obj);
    }

    public Annotation a(Class cls) {
        return this.a.getAnnotation(cls);
    }

    public boolean a(int i) {
        return (this.a.getModifiers() & i) != 0;
    }

    public String b() {
        return this.a.getName();
    }

    public Type c_() {
        return this.a.getGenericType();
    }

    public Class d() {
        return this.a.getType();
    }

    public Collection e() {
        return Arrays.asList(this.a.getAnnotations());
    }

    boolean f() {
        return this.a.isSynthetic();
    }
}