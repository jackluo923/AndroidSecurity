package com.google.ads.interactivemedia.v3.a.b;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class i {
    private static final Map a;
    private static final Map b;

    static {
        Map hashMap = new HashMap(16);
        Map hashMap2 = new HashMap(16);
        a(hashMap, hashMap2, Boolean.TYPE, Boolean.class);
        a(hashMap, hashMap2, Byte.TYPE, Byte.class);
        a(hashMap, hashMap2, Character.TYPE, Character.class);
        a(hashMap, hashMap2, Double.TYPE, Double.class);
        a(hashMap, hashMap2, Float.TYPE, Float.class);
        a(hashMap, hashMap2, Integer.TYPE, Integer.class);
        a(hashMap, hashMap2, Long.TYPE, Long.class);
        a(hashMap, hashMap2, Short.TYPE, Short.class);
        a(hashMap, hashMap2, Void.TYPE, Void.class);
        a = Collections.unmodifiableMap(hashMap);
        b = Collections.unmodifiableMap(hashMap2);
    }

    public static Class a(Object obj) {
        Class cls = (Class) a.get(a.a(obj));
        return cls == null ? obj : cls;
    }

    private static void a(Map map, Map map2, Class cls, Class cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static boolean a(Type type) {
        return a.containsKey(type);
    }
}