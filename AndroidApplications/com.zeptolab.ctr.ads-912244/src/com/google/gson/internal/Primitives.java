package com.google.gson.internal;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class Primitives {
    private static final Map PRIMITIVE_TO_WRAPPER_TYPE;
    private static final Map WRAPPER_TO_PRIMITIVE_TYPE;

    static {
        Map hashMap = new HashMap(16);
        Map hashMap2 = new HashMap(16);
        add(hashMap, hashMap2, Boolean.TYPE, Boolean.class);
        add(hashMap, hashMap2, Byte.TYPE, Byte.class);
        add(hashMap, hashMap2, Character.TYPE, Character.class);
        add(hashMap, hashMap2, Double.TYPE, Double.class);
        add(hashMap, hashMap2, Float.TYPE, Float.class);
        add(hashMap, hashMap2, Integer.TYPE, Integer.class);
        add(hashMap, hashMap2, Long.TYPE, Long.class);
        add(hashMap, hashMap2, Short.TYPE, Short.class);
        add(hashMap, hashMap2, Void.TYPE, Void.class);
        PRIMITIVE_TO_WRAPPER_TYPE = Collections.unmodifiableMap(hashMap);
        WRAPPER_TO_PRIMITIVE_TYPE = Collections.unmodifiableMap(hashMap2);
    }

    private Primitives() {
    }

    private static void add(Map map, Map map2, Class cls, Class cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static boolean isPrimitive(Type type) {
        return PRIMITIVE_TO_WRAPPER_TYPE.containsKey(type);
    }

    public static boolean isWrapperType(Type type) {
        return WRAPPER_TO_PRIMITIVE_TYPE.containsKey(_$Gson$Preconditions.checkNotNull(type));
    }

    public static Class unwrap(Class cls) {
        Class cls2 = (Class) WRAPPER_TO_PRIMITIVE_TYPE.get(_$Gson$Preconditions.checkNotNull(cls));
        return cls2 == null ? cls : cls2;
    }

    public static Class wrap(Class cls) {
        Class cls2 = (Class) PRIMITIVE_TO_WRAPPER_TYPE.get(_$Gson$Preconditions.checkNotNull(cls));
        return cls2 == null ? cls : cls2;
    }
}