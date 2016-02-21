package com.google.gson.internal;

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

public final class _$Gson$Types {
    static final Type[] EMPTY_TYPE_ARRAY;

    private static final class GenericArrayTypeImpl implements Serializable, GenericArrayType {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        public GenericArrayTypeImpl(Type type) {
            this.componentType = _$Gson$Types.canonicalize(type);
        }

        public boolean equals(Object obj) {
            return obj instanceof GenericArrayType && _$Gson$Types.equals(this, (GenericArrayType) obj);
        }

        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return _$Gson$Types.typeToString(this.componentType) + "[]";
        }
    }

    private static final class ParameterizedTypeImpl implements Serializable, ParameterizedType {
        private static final long serialVersionUID = 0;
        private final Type ownerType;
        private final Type rawType;
        private final Type[] typeArguments;

        public ParameterizedTypeImpl(Type type, Type type2, Type... typeArr) {
            boolean z = true;
            int i = 0;
            if (type2 instanceof Class) {
                boolean z2;
                Class cls = (Class) type2;
                z2 = type != null || cls.getEnclosingClass() == null;
                _$Gson$Preconditions.checkArgument(z2);
                if (type != null && cls.getEnclosingClass() == null) {
                    z = false;
                }
                _$Gson$Preconditions.checkArgument(z);
            }
            this.ownerType = type == null ? null : _$Gson$Types.canonicalize(type);
            this.rawType = _$Gson$Types.canonicalize(type2);
            this.typeArguments = (Type[]) typeArr.clone();
            while (i < this.typeArguments.length) {
                _$Gson$Preconditions.checkNotNull(this.typeArguments[i]);
                _$Gson$Types.checkNotPrimitive(this.typeArguments[i]);
                this.typeArguments[i] = _$Gson$Types.canonicalize(this.typeArguments[i]);
                i++;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof ParameterizedType && _$Gson$Types.equals(this, (ParameterizedType) obj);
        }

        public Type[] getActualTypeArguments() {
            return (Type[]) this.typeArguments.clone();
        }

        public Type getOwnerType() {
            return this.ownerType;
        }

        public Type getRawType() {
            return this.rawType;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode()) ^ _$Gson$Types.hashCodeOrZero(this.ownerType);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder((this.typeArguments.length + 1) * 30);
            stringBuilder.append(_$Gson$Types.typeToString(this.rawType));
            if (this.typeArguments.length == 0) {
                return stringBuilder.toString();
            }
            stringBuilder.append("<").append(_$Gson$Types.typeToString(this.typeArguments[0]));
            int i = 1;
            while (i < this.typeArguments.length) {
                stringBuilder.append(", ").append(_$Gson$Types.typeToString(this.typeArguments[i]));
                i++;
            }
            return stringBuilder.append(">").toString();
        }
    }

    private static final class WildcardTypeImpl implements Serializable, WildcardType {
        private static final long serialVersionUID = 0;
        private final Type lowerBound;
        private final Type upperBound;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            _$Gson$Preconditions.checkArgument(typeArr2.length <= 1);
            _$Gson$Preconditions.checkArgument(typeArr.length == 1);
            if (typeArr2.length == 1) {
                _$Gson$Preconditions.checkNotNull(typeArr2[0]);
                _$Gson$Types.checkNotPrimitive(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                _$Gson$Preconditions.checkArgument(z);
                this.lowerBound = _$Gson$Types.canonicalize(typeArr2[0]);
                this.upperBound = Object.class;
            } else {
                _$Gson$Preconditions.checkNotNull(typeArr[0]);
                _$Gson$Types.checkNotPrimitive(typeArr[0]);
                this.lowerBound = null;
                this.upperBound = _$Gson$Types.canonicalize(typeArr[0]);
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof WildcardType && _$Gson$Types.equals(this, (WildcardType) obj);
        }

        public Type[] getLowerBounds() {
            if (this.lowerBound == null) {
                return _$Gson$Types.EMPTY_TYPE_ARRAY;
            }
            return new Type[]{this.lowerBound};
        }

        public Type[] getUpperBounds() {
            return new Type[]{this.upperBound};
        }

        public int hashCode() {
            return (this.lowerBound != null ? this.lowerBound.hashCode() + 31 : 1) ^ (this.upperBound.hashCode() + 31);
        }

        public String toString() {
            if (this.lowerBound != null) {
                return "? super " + _$Gson$Types.typeToString(this.lowerBound);
            }
            return this.upperBound == Object.class ? "?" : "? extends " + _$Gson$Types.typeToString(this.upperBound);
        }
    }

    static {
        EMPTY_TYPE_ARRAY = new Type[0];
    }

    private _$Gson$Types() {
    }

    public static GenericArrayType arrayOf(Type type) {
        return new GenericArrayTypeImpl(type);
    }

    public static Type canonicalize(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new GenericArrayTypeImpl(canonicalize(cls.getComponentType())) : cls;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new ParameterizedTypeImpl(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new GenericArrayTypeImpl(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new WildcardTypeImpl(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    private static void checkNotPrimitive(Type type) {
        boolean z;
        z = !(type instanceof Class) || !((Class) type).isPrimitive();
        _$Gson$Preconditions.checkArgument(z);
    }

    private static Class declaringClassOf(TypeVariable typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        return genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
    }

    static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean equals(Type type, Type type2) {
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
            if (!(equal(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments()))) {
                z = false;
            }
            return z;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return equals(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
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

    public static Type getArrayComponentType(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    public static Type getCollectionElementType(Type type, Class cls) {
        Type supertype = getSupertype(type, cls, Collection.class);
        if (supertype instanceof WildcardType) {
            supertype = ((WildcardType) supertype).getUpperBounds()[0];
        }
        return supertype instanceof ParameterizedType ? ((ParameterizedType) supertype).getActualTypeArguments()[0] : Object.class;
    }

    static Type getGenericSupertype(Type type, Class cls, Class cls2) {
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
                    return getGenericSupertype(cls.getGenericInterfaces()[i], interfaces[i], cls2);
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
                    return getGenericSupertype(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type[] getMapKeyAndValueTypes(Type type, Class cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        } else {
            Type supertype = getSupertype(type, cls, Map.class);
            if (supertype instanceof ParameterizedType) {
                return ((ParameterizedType) supertype).getActualTypeArguments();
            }
            return new Type[]{Object.class, Object.class};
        }
    }

    public static Class getRawType(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            _$Gson$Preconditions.checkArgument(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(getRawType(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return getRawType(((WildcardType) type).getUpperBounds()[0]);
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
        }
    }

    static Type getSupertype(Type type, Class cls, Class cls2) {
        _$Gson$Preconditions.checkArgument(cls2.isAssignableFrom(cls));
        return resolve(type, cls, getGenericSupertype(type, cls, cls2));
    }

    private static int hashCodeOrZero(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    private static int indexOf(Object[] objArr, Object obj) {
        int i = 0;
        while (i < objArr.length) {
            if (obj.equals(objArr[i])) {
                return i;
            }
            i++;
        }
        throw new NoSuchElementException();
    }

    public static ParameterizedType newParameterizedTypeWithOwner(Type type, Type type2, Type... typeArr) {
        return new ParameterizedTypeImpl(type, type2, typeArr);
    }

    public static Type resolve(Type type, Class cls, Type type2) {
        Type type3 = type2;
        while (type3 instanceof TypeVariable) {
            type3 = (TypeVariable) type3;
            type2 = resolveTypeVariable(type, cls, type3);
            if (type2 == type3) {
                return type2;
            }
            type3 = type2;
        }
        Type componentType;
        Type resolve;
        if (type3 instanceof Class && ((Class) type3).isArray()) {
            Class cls2 = (Class) type3;
            componentType = cls2.getComponentType();
            resolve = resolve(type, cls, componentType);
            return componentType != resolve ? arrayOf(resolve) : cls2;
        } else if (type3 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type3;
            componentType = genericArrayType.getGenericComponentType();
            resolve = resolve(type, cls, componentType);
            return componentType != resolve ? arrayOf(resolve) : genericArrayType;
        } else if (type3 instanceof ParameterizedType) {
            boolean z;
            ParameterizedType parameterizedType = (ParameterizedType) type3;
            componentType = parameterizedType.getOwnerType();
            Type resolve2 = resolve(type, cls, componentType);
            z = resolve2 != componentType;
            Object actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            boolean z2 = z;
            Object obj = actualTypeArguments;
            int i = 0;
            while (i < length) {
                Type resolve3 = resolve(type, cls, obj[i]);
                if (resolve3 != obj[i]) {
                    if (i == 0) {
                        typeArr = (Type[]) obj.clone();
                        z2 = true;
                    }
                    obj[i] = resolve3;
                }
                i++;
            }
            return i != 0 ? newParameterizedTypeWithOwner(resolve2, parameterizedType.getRawType(), obj) : parameterizedType;
        } else if (!(type3 instanceof WildcardType)) {
            return type3;
        } else {
            WildcardType wildcardType = (WildcardType) type3;
            typeArr = wildcardType.getLowerBounds();
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (typeArr.length == 1) {
                resolve = resolve(type, cls, typeArr[0]);
                return resolve != typeArr[0] ? supertypeOf(resolve) : wildcardType;
            } else if (upperBounds.length != 1) {
                return wildcardType;
            } else {
                componentType = resolve(type, cls, upperBounds[0]);
                return componentType != upperBounds[0] ? subtypeOf(componentType) : wildcardType;
            }
        }
    }

    static Type resolveTypeVariable(Type type, Class cls, TypeVariable typeVariable) {
        Class declaringClassOf = declaringClassOf(typeVariable);
        if (declaringClassOf == null) {
            return typeVariable;
        }
        Type genericSupertype = getGenericSupertype(type, cls, declaringClassOf);
        if (!(genericSupertype instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) genericSupertype).getActualTypeArguments()[indexOf(declaringClassOf.getTypeParameters(), typeVariable)];
    }

    public static WildcardType subtypeOf(Type type) {
        return new WildcardTypeImpl(new Type[]{type}, EMPTY_TYPE_ARRAY);
    }

    public static WildcardType supertypeOf(Type type) {
        return new WildcardTypeImpl(new Type[]{Object.class}, new Type[]{type});
    }

    public static String typeToString(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}