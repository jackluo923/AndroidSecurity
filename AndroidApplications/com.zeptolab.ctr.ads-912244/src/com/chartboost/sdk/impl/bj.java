package com.chartboost.sdk.impl;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;

final class bj implements bl, Map {
    private final ConcurrentMap a;
    private final bl b;

    bj(ConcurrentMap concurrentMap, bl blVar) {
        this.a = (ConcurrentMap) bg.a("map", concurrentMap);
        this.b = (bl) bg.a("function", blVar);
    }

    public static Map a(bl blVar) {
        return new bj(bk.c(), blVar);
    }

    public Object a(Object obj) {
        return get(obj);
    }

    public void clear() {
        this.a.clear();
    }

    public boolean containsKey(Object obj) {
        return this.a.containsKey(obj);
    }

    public boolean containsValue(Object obj) {
        return this.a.containsValue(obj);
    }

    public Set entrySet() {
        return this.a.entrySet();
    }

    public boolean equals(Object obj) {
        return this.a.equals(obj);
    }

    public Object get(Object obj) {
        while (true) {
            Object obj2 = this.a.get(obj);
            if (obj2 != null) {
                return obj2;
            }
            obj2 = this.b.a(obj);
            if (obj2 == null) {
                return null;
            }
            this.a.putIfAbsent(obj, obj2);
        }
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    public Set keySet() {
        return this.a.keySet();
    }

    public Object put(Object obj, Object obj2) {
        return this.a.put(obj, obj2);
    }

    public void putAll(Map map) {
        this.a.putAll(map);
    }

    public Object remove(Object obj) {
        return this.a.remove(obj);
    }

    public int size() {
        return this.a.size();
    }

    public Collection values() {
        return this.a.values();
    }
}