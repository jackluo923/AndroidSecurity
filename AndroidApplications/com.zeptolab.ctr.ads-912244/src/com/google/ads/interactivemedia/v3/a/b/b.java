package com.google.ads.interactivemedia.v3.a.b;

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
        private final Type a;

        public a(Type type) {
            this.a = b.a(type);
        }

        public final boolean equals(Object obj) {
            return obj instanceof GenericArrayType && b.a(this, (GenericArrayType) obj);
        }

        public final Type getGenericComponentType() {
            return this.a;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return b.c(this.a) + "[]";
        }
    }

    private static final class b implements Serializable, ParameterizedType {
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
            this.a = type == null ? null : b.a(type);
            this.b = b.a(type2);
            this.c = (Type[]) typeArr.clone();
            while (i < this.c.length) {
                a.a(this.c[i]);
                b.e(this.c[i]);
                this.c[i] = b.a(this.c[i]);
                i++;
            }
        }

        public final boolean equals(Object obj) {
            return obj instanceof ParameterizedType && b.a(this, (ParameterizedType) obj);
        }

        public final Type[] getActualTypeArguments() {
            return (Type[]) this.c.clone();
        }

        public final Type getOwnerType() {
            return this.a;
        }

        public final Type getRawType() {
            return this.b;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.c) ^ this.b.hashCode()) ^ b.a(this.a);
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder((this.c.length + 1) * 30);
            stringBuilder.append(b.c(this.b));
            if (this.c.length == 0) {
                return stringBuilder.toString();
            }
            stringBuilder.append("<").append(b.c(this.c[0]));
            int i = 1;
            while (i < this.c.length) {
                stringBuilder.append(", ").append(b.c(this.c[i]));
                i++;
            }
            return stringBuilder.append(">").toString();
        }
    }

    private static final class c implements Serializable, WildcardType {
        private final Type a;
        private final Type b;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            a.a(typeArr2.length <= 1);
            a.a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                a.a(typeArr2[0]);
                b.e(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                a.a(z);
                this.b = b.a(typeArr2[0]);
                this.a = Object.class;
            } else {
                a.a(typeArr[0]);
                b.e(typeArr[0]);
                this.b = null;
                this.a = b.a(typeArr[0]);
            }
        }

        public final boolean equals(Object obj) {
            return obj instanceof WildcardType && b.a(this, (WildcardType) obj);
        }

        public final Type[] getLowerBounds() {
            if (this.b == null) {
                return a;
            }
            return new Type[]{this.b};
        }

        public final Type[] getUpperBounds() {
            return new Type[]{this.a};
        }

        public final int hashCode() {
            return (this.b != null ? this.b.hashCode() + 31 : 1) ^ (this.a.hashCode() + 31);
        }

        public final String toString() {
            if (this.b != null) {
                return new StringBuilder("? super ").append(b.c(this.b)).toString();
            }
            return this.a == Object.class ? "?" : new StringBuilder("? extends ").append(b.c(this.a)).toString();
        }
    }

    static {
        a = new Type[0];
    }

    static /* synthetic */ int a(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new a(a(cls.getComponentType())) : cls;
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

    public static Type a(Type type, Class cls) {
        Type b = b(type, cls, Collection.class);
        if (b instanceof WildcardType) {
            b = ((WildcardType) b).getUpperBounds()[0];
        }
        return b instanceof ParameterizedType ? ((ParameterizedType) b).getActualTypeArguments()[0] : Object.class;
    }

    private static Type a(Type type, Class cls, Class cls2) {
        Class cls3 = cls;
        Type type2 = type;
        while (cls2 != cls3) {
            if (cls2.isInterface()) {
                Class[] interfaces = cls3.getInterfaces();
                int i = 0;
                int length = interfaces.length;
                while (i < length) {
                    if (interfaces[i] == cls2) {
                        return cls3.getGenericInterfaces()[i];
                    }
                    if (cls2.isAssignableFrom(interfaces[i])) {
                        type = cls3.getGenericInterfaces()[i];
                        cls3 = interfaces[i];
                        type2 = type;
                        break;
                    } else {
                        i++;
                    }
                }
            }
            if (cls3.isInterface()) {
                return cls2;
            }
            while (cls3 != Object.class) {
                Class superclass = cls3.getSuperclass();
                if (superclass == cls2) {
                    return cls3.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    type = cls3.getGenericSuperclass();
                    cls3 = superclass;
                    type2 = type;
                } else {
                    cls3 = superclass;
                }
            }
            return cls2;
        }
        return type2;
    }

    public static Type a(Type type, Class cls, Type type2) {
        int i = 0;
        Type type3 = type2;
        while (type3 instanceof TypeVariable) {
            Type type4 = (TypeVariable) type3;
            GenericDeclaration genericDeclaration = type4.getGenericDeclaration();
            Class cls2 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls2 != null) {
                type3 = a(type, cls, cls2);
                if (type3 instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls2.getTypeParameters();
                    int i2 = 0;
                    while (i2 < typeParameters.length) {
                        if (type4.equals(typeParameters[i2])) {
                            type3 = ((ParameterizedType) type3).getActualTypeArguments()[i2];
                            if (type3 == type4) {
                                return type3;
                            }
                        } else {
                            i2++;
                        }
                    }
                    throw new NoSuchElementException();
                }
            }
            type3 = type4;
            if (type3 == type4) {
                return type3;
            }
        }
        Type a;
        if (type3 instanceof Class && ((Class) type3).isArray()) {
            Class cls3 = (Class) type3;
            type4 = cls3.getComponentType();
            a = a(type, cls, type4);
            return type4 != a ? f(a) : cls3;
        } else if (type3 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type3;
            type4 = genericArrayType.getGenericComponentType();
            a = a(type, cls, type4);
            return type4 != a ? f(a) : genericArrayType;
        } else if (type3 instanceof ParameterizedType) {
            boolean z;
            ParameterizedType parameterizedType = (ParameterizedType) type3;
            type4 = parameterizedType.getOwnerType();
            Type a2 = a(type, cls, type4);
            z = a2 != type4;
            Object actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            while (i < length) {
                Type a3 = a(type, cls, actualTypeArguments[i]);
                if (a3 != actualTypeArguments[i]) {
                    if (i == 0) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z = true;
                    }
                    actualTypeArguments[i] = a3;
                }
                i++;
            }
            return i != 0 ? new b(a2, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
        } else if (!(type3 instanceof WildcardType)) {
            return type3;
        } else {
            WildcardType wildcardType = (WildcardType) type3;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (lowerBounds.length == 1) {
                if (a(type, cls, lowerBounds[0]) == lowerBounds[0]) {
                    return wildcardType;
                }
                return new c(new Type[]{Object.class}, new Type[]{a});
            } else if (upperBounds.length != 1 || a(type, cls, upperBounds[0]) == upperBounds[0]) {
                return wildcardType;
            } else {
                return new c(new Type[]{type4}, a);
            }
        }
    }

    public static boolean a(Type type, Type type2) {
        Type type3 = type2;
        Type type4 = type;
        Object genericComponentType;
        Object genericComponentType2;
        while (genericComponentType != genericComponentType2) {
            if (genericComponentType instanceof Class) {
                return genericComponentType.equals(genericComponentType2);
            }
            if (genericComponentType instanceof ParameterizedType) {
                if (!(genericComponentType2 instanceof ParameterizedType)) {
                    return false;
                }
                ParameterizedType parameterizedType = (ParameterizedType) genericComponentType;
                ParameterizedType parameterizedType2 = (ParameterizedType) genericComponentType2;
                Type ownerType = parameterizedType.getOwnerType();
                Type ownerType2 = parameterizedType2.getOwnerType();
                int i = ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2));
                return i != 0 && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
            } else if (genericComponentType instanceof GenericArrayType) {
                if (!(genericComponentType2 instanceof GenericArrayType)) {
                    return false;
                }
                GenericArrayType genericArrayType = (GenericArrayType) genericComponentType2;
                genericComponentType = ((GenericArrayType) genericComponentType).getGenericComponentType();
                genericComponentType2 = genericArrayType.getGenericComponentType();
            } else if (genericComponentType instanceof WildcardType) {
                if (!(genericComponentType2 instanceof WildcardType)) {
                    return false;
                }
                WildcardType wildcardType = (WildcardType) genericComponentType;
                WildcardType wildcardType2 = (WildcardType) genericComponentType2;
                return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
            } else if (!(genericComponentType instanceof TypeVariable)) {
                return false;
            } else {
                if (!(genericComponentType2 instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) genericComponentType;
                TypeVariable typeVariable2 = (TypeVariable) genericComponentType2;
                return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
            }
        }
        return true;
    }

    public static Class b_(Type type) {
        Object obj;
        Type type2 = type;
        while (!(obj instanceof Class)) {
            if (obj instanceof ParameterizedType) {
                type2 = ((ParameterizedType) obj).getRawType();
                a.a(type2 instanceof Class);
                return (Class) type2;
            } else if (obj instanceof GenericArrayType) {
                return Array.newInstance(b(((GenericArrayType) obj).getGenericComponentType()), 0).getClass();
            } else {
                if (obj instanceof TypeVariable) {
                    return Object.class;
                }
                if (obj instanceof WildcardType) {
                    obj = ((WildcardType) obj).getUpperBounds()[0];
                } else {
                    throw new IllegalArgumentException(new StringBuilder("Expected a Class, ParameterizedType, or GenericArrayType, but <").append(obj).append("> is of type ").append(obj == null ? "null" : obj.getClass().getName()).toString());
                }
            }
        }
        return (Class) obj;
    }

    private static Type b_(Type type, Class cls, Class cls2) {
        a.a(cls2.isAssignableFrom(cls));
        return a(type, cls, a(type, cls, cls2));
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

    public static String c(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static Type d(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    static /* synthetic */ void e(Type type) {
        boolean z;
        z = !(type instanceof Class) || !((Class) type).isPrimitive();
        a.a(z);
    }

    private static GenericArrayType f(Type type) {
        return new a(type);
    }
}