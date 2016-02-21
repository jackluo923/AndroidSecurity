package com.google.gson.reflect;

import com.google.gson.internal._$Gson$Preconditions;
import com.google.gson.internal._$Gson$Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;

public class TypeToken {
    final int hashCode;
    final Class rawType;
    final Type type;

    protected TypeToken() {
        this.type = getSuperclassTypeParameter(getClass());
        this.rawType = _$Gson$Types.getRawType(this.type);
        this.hashCode = this.type.hashCode();
    }

    TypeToken(Type type) {
        this.type = _$Gson$Types.canonicalize((Type) _$Gson$Preconditions.checkNotNull(type));
        this.rawType = _$Gson$Types.getRawType(this.type);
        this.hashCode = this.type.hashCode();
    }

    private static AssertionError buildUnexpectedTypeError(Type type, Class... clsArr) {
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

    public static TypeToken get(Class cls) {
        return new TypeToken(cls);
    }

    public static TypeToken get(Type type) {
        return new TypeToken(type);
    }

    static Type getSuperclassTypeParameter(Class cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return _$Gson$Types.canonicalize(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    private static boolean isAssignableFrom(Type type, GenericArrayType genericArrayType) {
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
        return isAssignableFrom(type, (ParameterizedType) genericComponentType, new HashMap());
    }

    private static boolean isAssignableFrom(Type type, ParameterizedType parameterizedType, Map map) {
        int i = 0;
        if (type == null) {
            return false;
        }
        if (parameterizedType.equals(type)) {
            return true;
        }
        int i2;
        Class rawType = _$Gson$Types.getRawType(type);
        ParameterizedType parameterizedType2 = type instanceof ParameterizedType ? (ParameterizedType) type : null;
        if (parameterizedType2 != null) {
            Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
            TypeVariable[] typeParameters = rawType.getTypeParameters();
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
            if (typeEquals(parameterizedType2, parameterizedType, map)) {
                return true;
            }
        }
        Type[] genericInterfaces = rawType.getGenericInterfaces();
        i2 = genericInterfaces.length;
        while (i < i2) {
            if (isAssignableFrom(genericInterfaces[i], parameterizedType, new HashMap(map))) {
                return true;
            }
            i++;
        }
        return isAssignableFrom(rawType.getGenericSuperclass(), parameterizedType, new HashMap(map));
    }

    private static boolean matches(Type type, Type type2, Map map) {
        return type2.equals(type) || (type instanceof TypeVariable && type2.equals(map.get(((TypeVariable) type).getName())));
    }

    private static boolean typeEquals(ParameterizedType parameterizedType, ParameterizedType parameterizedType2, Map map) {
        if (!parameterizedType.getRawType().equals(parameterizedType2.getRawType())) {
            return false;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
        int i = 0;
        while (i < actualTypeArguments.length) {
            if (!matches(actualTypeArguments[i], actualTypeArguments2[i], map)) {
                return false;
            }
            i++;
        }
        return true;
    }

    public final boolean equals(Object obj) {
        return obj instanceof TypeToken && _$Gson$Types.equals(this.type, ((TypeToken) obj).type);
    }

    public final Class getRawType() {
        return this.rawType;
    }

    public final Type getType() {
        return this.type;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    @Deprecated
    public boolean isAssignableFrom(TypeToken typeToken) {
        return isAssignableFrom(typeToken.getType());
    }

    @Deprecated
    public boolean isAssignableFrom(Type type) {
        return isAssignableFrom(type);
    }

    @Deprecated
    public boolean isAssignableFrom(Type type) {
        if (type == null) {
            return false;
        }
        if (this.type.equals(type)) {
            return true;
        }
        if (this.type instanceof Class) {
            return this.rawType.isAssignableFrom(_$Gson$Types.getRawType(type));
        }
        if (this.type instanceof ParameterizedType) {
            return isAssignableFrom(type, (ParameterizedType) this.type, new HashMap());
        }
        if (this.type instanceof GenericArrayType) {
            boolean z;
            z = this.rawType.isAssignableFrom(_$Gson$Types.getRawType(type)) && isAssignableFrom(type, (GenericArrayType) this.type);
            return z;
        } else {
            throw buildUnexpectedTypeError(this.type, new Class[]{Class.class, ParameterizedType.class, GenericArrayType.class});
        }
    }

    public final String toString() {
        return _$Gson$Types.typeToString(this.type);
    }
}