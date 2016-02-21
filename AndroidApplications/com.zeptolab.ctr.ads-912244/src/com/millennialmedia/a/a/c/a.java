package com.millennialmedia.a.a.c;

import com.millennialmedia.a.a.b.b;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;

public class a {
    final Class a;
    final Type b;
    final int c;

    protected a() {
        this.b = a(getClass());
        this.a = b.e(this.b);
        this.c = this.b.hashCode();
    }

    a(Object obj) {
        this.b = b.d((Type) com.millennialmedia.a.a.b.a.a(obj));
        this.a = b.e(this.b);
        this.c = this.b.hashCode();
    }

    private static AssertionError a_(Type type, Class... clsArr) {
        StringBuilder stringBuilder = new StringBuilder("Unexpected type. Expected one of: ");
        int length = clsArr.length;
        int i = 0;
        while (i < length) {
            stringBuilder.append(clsArr[i].getName()).append(", ");
            i++;
        }
        stringBuilder.append("but got: ").append(type.getClass().getName()).append(", for type token: ").append(type.toString()).append('.');
        return new AssertionError(stringBuilder.toString());
    }

    static Type a_(Class cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return b.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    private static boolean a_(ParameterizedType parameterizedType, ParameterizedType parameterizedType2, Map map) {
        if (!parameterizedType.getRawType().equals(parameterizedType2.getRawType())) {
            return false;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
        int i = 0;
        while (i < actualTypeArguments.length) {
            if (!a(actualTypeArguments[i], actualTypeArguments2[i], map)) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static boolean a_(Type type, GenericArrayType genericArrayType) {
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (!(genericComponentType instanceof ParameterizedType)) {
            return true;
        }
        if (type instanceof GenericArrayType) {
            type = ((GenericArrayType) type).getGenericComponentType();
        } else if (type instanceof Class) {
            Class cls = (Class) type;
            while (type.isArray()) {
                type = type.getComponentType();
            }
        }
        return a(type, (ParameterizedType) genericComponentType, new HashMap());
    }

    private static boolean a_(Type type, ParameterizedType parameterizedType, Map map) {
        int i = 0;
        if (type == null) {
            return false;
        }
        if (parameterizedType.equals(type)) {
            return true;
        }
        int i2;
        Class e = b.e(type);
        ParameterizedType parameterizedType2 = type instanceof ParameterizedType ? (ParameterizedType) type : null;
        if (parameterizedType2 != null) {
            Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
            TypeVariable[] typeParameters = e.getTypeParameters();
            i2 = 0;
            while (i2 < actualTypeArguments.length) {
                Object obj = actualTypeArguments[i2];
                TypeVariable typeVariable = typeParameters[i2];
                while (obj instanceof TypeVariable) {
                    Type type2 = (Type) map.get(((TypeVariable) obj).getName());
                }
                map.put(typeVariable.getName(), obj);
                i2++;
            }
            if (a(parameterizedType2, parameterizedType, map)) {
                return true;
            }
        }
        Type[] genericInterfaces = e.getGenericInterfaces();
        i2 = genericInterfaces.length;
        while (i < i2) {
            if (a(genericInterfaces[i], parameterizedType, new HashMap(map))) {
                return true;
            }
            i++;
        }
        return a(e.getGenericSuperclass(), parameterizedType, new HashMap(map));
    }

    private static boolean a_(Type type, Type type2, Map map) {
        return type2.equals(type) || (type instanceof TypeVariable && type2.equals(map.get(((TypeVariable) type).getName())));
    }

    public static a b(Type type) {
        return new a(type);
    }

    public static a c(Class cls) {
        return new a(cls);
    }

    public final Class a_() {
        return this.a;
    }

    @Deprecated
    public boolean a_(a aVar) {
        return a(aVar.b());
    }

    @Deprecated
    public boolean a_(Type type) {
        if (type == null) {
            return false;
        }
        if (this.b.equals(type)) {
            return true;
        }
        if (this.b instanceof Class) {
            return this.a.isAssignableFrom(b.e(type));
        }
        if (this.b instanceof ParameterizedType) {
            return a(type, (ParameterizedType) this.b, new HashMap());
        }
        if (this.b instanceof GenericArrayType) {
            boolean z;
            z = this.a.isAssignableFrom(b.e(type)) && a(type, (GenericArrayType) this.b);
            return z;
        } else {
            throw a(this.b, new Class[]{Class.class, ParameterizedType.class, GenericArrayType.class});
        }
    }

    public final Type b() {
        return this.b;
    }

    @Deprecated
    public boolean b(Type type) {
        return a(type);
    }

    public final boolean equals(Object obj) {
        return obj instanceof a && b.a(this.b, ((a) obj).b);
    }

    public final int hashCode() {
        return this.c;
    }

    public final String toString() {
        return b.f(this.b);
    }
}