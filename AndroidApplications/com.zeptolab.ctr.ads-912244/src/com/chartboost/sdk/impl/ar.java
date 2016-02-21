package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;

public class ar extends LinkedHashMap implements ao {
    public ar(String str, Object obj) {
        a(str, obj);
    }

    public Object a(String str) {
        return super.get(str);
    }

    public Object a(String str, Object obj) {
        return super.put(str, obj);
    }

    public boolean b(String str) {
        return super.containsKey(str);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ao)) {
            return false;
        }
        ao aoVar = (ao) obj;
        if (!keySet().equals(aoVar.keySet())) {
            return false;
        }
        Iterator it = keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Object a = a(str);
            Object a2 = aoVar.a(str);
            if (a == null && a2 != null) {
                return false;
            }
            if (a2 == null) {
                if (a != null) {
                    return false;
                }
            } else if (a instanceof Number && a2 instanceof Number) {
                if (((Number) a).doubleValue() != ((Number) a2).doubleValue()) {
                    return false;
                }
            } else if (a instanceof Pattern && a2 instanceof Pattern) {
                Pattern pattern = (Pattern) a;
                Pattern pattern2 = (Pattern) a2;
                if (!(pattern.pattern().equals(pattern2.pattern()) && pattern.flags() == pattern2.flags())) {
                    return false;
                }
            } else if (!a.equals(a2)) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a((String) obj, obj2);
    }

    public void putAll(Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            a(entry.getKey().toString(), entry.getValue());
        }
    }

    public String toString() {
        return ad.a(this);
    }
}