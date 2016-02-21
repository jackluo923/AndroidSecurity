package com.vungle.publisher;

import com.vungle.log.Logger;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

final class cr {
    private static final Map a;
    private static final Map b;

    static {
        a = new HashMap();
        b = new ConcurrentHashMap();
    }

    cr() {
    }

    static List a(Class cls, String str) {
        String str2 = cls.getName() + '.' + str;
        synchronized (a) {
            List list = (List) a.get(str2);
        }
        if (list != null) {
            return list;
        }
        List arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder stringBuilder = new StringBuilder();
        Class cls2 = cls;
        while (cls2 != null) {
            String name = cls2.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.")) {
                break;
            }
            Method[] methods = cls2.getMethods();
            int length = methods.length;
            int i = 0;
            while (i < length) {
                Method method = methods[i];
                String name2 = method.getName();
                if (name2.startsWith(str)) {
                    int modifiers = method.getModifiers();
                    if ((modifiers & 1) != 0 && (modifiers & 1032) == 0) {
                        Class[] parameterTypes = method.getParameterTypes();
                        if (parameterTypes.length == 1) {
                            ct ctVar;
                            name = name2.substring(str.length());
                            if (name.length() == 0) {
                                ctVar = ct.a;
                            } else if (name.equals("MainThread")) {
                                ctVar = ct.b;
                            } else if (name.equals("BackgroundThread")) {
                                ctVar = ct.c;
                            } else if (name.equals("Async")) {
                                ctVar = ct.d;
                            } else if (!b.containsKey(cls2)) {
                                throw new ck(new StringBuilder("Illegal onEvent method, check for typos: ").append(method).toString());
                            }
                            Class cls3 = parameterTypes[0];
                            stringBuilder.setLength(0);
                            stringBuilder.append(name2);
                            stringBuilder.append('>').append(cls3.getName());
                            if (hashSet.add(stringBuilder.toString())) {
                                arrayList.add(new cq(method, ctVar, cls3));
                            }
                        }
                    } else if (!b.containsKey(cls2)) {
                        Logger.d(Logger.EVENT_TAG, new StringBuilder("Skipping method (not public, static or abstract): ").append(cls2).append(".").append(name2).toString());
                    }
                }
                i++;
            }
            cls2 = cls2.getSuperclass();
        }
        if (arrayList.isEmpty()) {
            throw new ck(new StringBuilder("Subscriber ").append(cls).append(" has no public methods called ").append(str).toString());
        }
        synchronized (a) {
            a.put(str2, arrayList);
        }
        return arrayList;
    }
}