package com.chartboost.sdk.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentMap;

class bh {
    private static final ConcurrentMap a;

    static {
        a = bk.c();
    }

    public static List a(Class cls) {
        ConcurrentMap a = a();
        while (true) {
            List list = (List) a.get(cls);
            if (list != null) {
                return list;
            }
            a.putIfAbsent(cls, b(cls));
        }
    }

    private static ConcurrentMap a() {
        return a;
    }

    private static void a(Class cls, List list) {
        if (cls != null && cls != Object.class) {
            Class[] interfaces = cls.getInterfaces();
            int length = interfaces.length - 1;
            while (length >= 0) {
                a(interfaces[length], list);
                length--;
            }
            a(cls.getSuperclass(), list);
            if (!list.contains(cls)) {
                list.add(cls);
            }
        }
    }

    private static List b(Class cls) {
        Collection arrayList = new ArrayList();
        arrayList.add(Object.class);
        a(cls, arrayList);
        Collections.reverse(arrayList);
        return Collections.unmodifiableList(new ArrayList(arrayList));
    }
}