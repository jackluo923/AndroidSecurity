package com.google.gson;

import com.google.gson.internal._$Gson$Preconditions;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

public final class FieldAttributes {
    private final Field field;

    public FieldAttributes(Field field) {
        _$Gson$Preconditions.checkNotNull(field);
        this.field = field;
    }

    Object get(Object obj) {
        return this.field.get(obj);
    }

    public Annotation getAnnotation(Class cls) {
        return this.field.getAnnotation(cls);
    }

    public Collection getAnnotations() {
        return Arrays.asList(this.field.getAnnotations());
    }

    public Class getDeclaredClass() {
        return this.field.getType();
    }

    public Type getDeclaredType() {
        return this.field.getGenericType();
    }

    public Class getDeclaringClass() {
        return this.field.getDeclaringClass();
    }

    public String getName() {
        return this.field.getName();
    }

    public boolean hasModifier(int i) {
        return (this.field.getModifiers() & i) != 0;
    }

    boolean isSynthetic() {
        return this.field.isSynthetic();
    }
}