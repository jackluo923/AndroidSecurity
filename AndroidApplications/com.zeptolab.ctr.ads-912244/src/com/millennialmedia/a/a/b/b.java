package com.millennialmedia.a.a.b;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

public final class b {
    static final Type[] a;

    private static final class a implements Serializable, GenericArrayType {
        private static final long b = 0;
        private final Type a;

        public a(Type type) {
            this.a = b.d(type);
        }

        public boolean equals(Object obj) {
            return obj instanceof GenericArrayType && b.a(this, (GenericArrayType) obj);
        }

        public Type getGenericComponentType() {
            return this.a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return b.f(this.a) + "[]";
        }
    }

    private static final class b implements Serializable, ParameterizedType {
        private static final long d = 0;
        private final Type a;
        private final Type b;
        private final Type[] c;

        public b(Type type, Type type2, Type... typeArr) {
            boolean z = true;
            int i = 0;
            if (type2 instanceof Class) {
                boolean z2;
                Class cls = (Class) type2;
                z2 = type != null || cls.getEnclosingClass() == null;
                a.a(z2);
                if (type != null && cls.getEnclosingClass() == null) {
                    z = false;
                }
                a.a(z);
            }
            this.a = type == null ? null : b.d(type);
            this.b = b.d(type2);
            this.c = (Type[]) typeArr.clone();
            while (i < this.c.length) {
                a.a(this.c[i]);
                b.i(this.c[i]);
                this.c[i] = b.d(this.c[i]);
                i++;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof ParameterizedType && b.a(this, (ParameterizedType) obj);
        }

        public Type[] getActualTypeArguments() {
            return (Type[]) this.c.clone();
        }

        public Type getOwnerType() {
            return this.a;
        }

        public Type getRawType() {
            return this.b;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.c) ^ this.b.hashCode()) ^ b.b(this.a);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder((this.c.length + 1) * 30);
            stringBuilder.append(b.f(this.b));
            if (this.c.length == 0) {
                return stringBuilder.toString();
            }
            stringBuilder.append("<").append(b.f(this.c[0]));
            int i = 1;
            while (i < this.c.length) {
                stringBuilder.append(", ").append(b.f(this.c[i]));
                i++;
            }
            return stringBuilder.append(">").toString();
        }
    }

    private static final class c implements Serializable, WildcardType {
        private static final long c = 0;
        private final Type a;
        private final Type b;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            a.a(typeArr2.length <= 1);
            a.a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                a.a(typeArr2[0]);
                b.i(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                a.a(z);
                this.b = b.d(typeArr2[0]);
                this.a = Object.class;
            } else {
                a.a(typeArr[0]);
                b.i(typeArr[0]);
                this.b = null;
                this.a = b.d(typeArr[0]);
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof WildcardType && b.a(this, (WildcardType) obj);
        }

        public Type[] getLowerBounds() {
            if (this.b == null) {
                return a;
            }
            return new Type[]{this.b};
        }

        public Type[] getUpperBounds() {
            return new Type[]{this.a};
        }

        public int hashCode() {
            return (this.b != null ? this.b.hashCode() + 31 : 1) ^ (this.a.hashCode() + 31);
        }

        public String toString() {
            if (this.b != null) {
                return "? super " + b.f(this.b);
            }
            return this.a == Object.class ? "?" : "? extends " + b.f(this.a);
        }
    }

    static {
        a = new Type[0];
    }

    private b() {
    }

    private static int a(Object[] objArr, Object obj) {
        int i = 0;
        while (i < objArr.length) {
            if (obj.equals(objArr[i])) {
                return i;
            }
            i++;
        }
        throw new NoSuchElementException();
    }

    private static Class a(TypeVariable typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        return genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
    }

    public static GenericArrayType a(Type type) {
        return new a(type);
    }

    public static ParameterizedType a(Type type, Type type2, Type... typeArr) {
        return new b(type, type2, typeArr);
    }

    public static Type a(Type type, Class cls) {
        Type b = b(type, cls, Collection.class);
        if (b instanceof WildcardType) {
            b = ((WildcardType) b).getUpperBounds()[0];
        }
        return b instanceof ParameterizedType ? ((ParameterizedType) b).getActualTypeArguments()[0] : Object.class;
    }

    static Type a(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class[] interfaces = cls.getInterfaces();
            int i = 0;
            int length = interfaces.length;
            while (i < length) {
                if (interfaces[i] == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(interfaces[i])) {
                    return a(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
                i++;
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return a(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type a(Type type, Class cls, Type type2) {
        Type type3 = type2;
        while (type3 instanceof TypeVariable) {
            type3 = (TypeVariable) type3;
            type2 = a(type, cls, (TypeVariable)type3);
            if (type2 == type3) {
                return type2;
            }
            type3 = type2;
        }
        Type componentType;
        Type a;
        if (type3 instanceof Class && ((Class) type3).isArray()) {
            Class cls2 = (Class) type3;
            componentType = cls2.getComponentType();
            a = a(type, cls, componentType);
            return componentType != a ? a(a) : cls2;
        } else if (type3 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type3;
            componentType = genericArrayType.getGenericComponentType();
            a = a(type, cls, componentType);
            return componentType != a ? a(a) : genericArrayType;
        } else if (type3 instanceof ParameterizedType) {
            boolean z;
            ParameterizedType parameterizedType = (ParameterizedType) type3;
            componentType = parameterizedType.getOwnerType();
            Type a2 = a(type, cls, componentType);
            z = a2 != componentType;
            Object actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            boolean z2 = z;
            Object obj = actualTypeArguments;
            int i = 0;
            while (i < length) {
                Type a3 = a(type, cls, typeArr[i]);
                if (a3 != typeArr[i]) {
                    if (i == 0) {
                        typeArr = (Type[]) typeArr.clone();
                        z2 = true;
                    }
                    obj[i] = a3;
                }
                i++;
            }
            return i != 0 ? a(a2, parameterizedType.getRawType(), typeArr) : parameterizedType;
        } else if (!(type3 instanceof WildcardType)) {
            return type3;
        } else {
            WildcardType wildcardType = (WildcardType) type3;
            typeArr = wildcardType.getLowerBounds();
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (typeArr.length == 1) {
                a = a(type, cls, typeArr[0]);
                return a != typeArr[0] ? c(a) : wildcardType;
            } else if (upperBounds.length != 1) {
                return wildcardType;
            } else {
                componentType = a(type, cls, upperBounds[0]);
                return componentType != upperBounds[0] ? b(componentType) : wildcardType;
            }
        }
    }

    static Type a(Type type, Class cls, Object obj) {
        Class a = a((TypeVariable)obj);
        if (a == null) {
            return obj;
        }
        Type a2 = a(type, cls, a);
        if (!(a2 instanceof ParameterizedType)) {
            return obj;
        }
        return ((ParameterizedType) a2).getActualTypeArguments()[a(a.getTypeParameters(), obj)];
    }

    static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean a(Type type, Type type2) {
        boolean z = 1;
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            if (!(a(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments()))) {
                z = false;
            }
            return z;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return a(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (!(Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds()))) {
                z = false;
            }
            return z;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (!(typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName()))) {
                z = false;
            }
            return z;
        }
    }

    private static int b_(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    static Type b_(Type type, Class cls, Class cls2) {
        a.a(cls2.isAssignableFrom(cls));
        return a(type, cls, a(type, cls, cls2));
    }

    public static WildcardType b_(Type type) {
        return new c(new Type[]{type}, a);
    }

    public static Type[] b_(Type type, Class cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        } else {
            Type b = b(type, cls, Map.class);
            if (b instanceof ParameterizedType) {
                return ((ParameterizedType) b).getActualTypeArguments();
            }
            return new Type[]{Object.class, Object.class};
        }
    }

    public static WildcardType c(Type type) {
        return new c(new Type[]{Object.class}, new Type[]{type});
    }

    public static Type d(Type type) {
        if (type instanceof Class) {
            a aVar;
            Class cls = (Class) type;
            if (cls.isArray()) {
                aVar = new a(d(cls.getComponentType()));
            } else {
                Class cls2 = cls;
            }
            return aVar;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    public static Class e(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            a.a(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return e(((WildcardType) type).getUpperBounds()[0]);
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
        }
    }

    public static String f(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static Type g(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    private static void i(Type type) {
        boolean z;
        z = !(type instanceof Class) || !((Class) type).isPrimitive();
        a.a(z);
    }
}