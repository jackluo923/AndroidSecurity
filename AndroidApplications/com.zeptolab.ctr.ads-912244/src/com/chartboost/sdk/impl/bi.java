package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class bi {
    private final Map a;
    private final Map b;

    private final class a implements bl {
        private a() {
        }

        public Object a_(Class cls) {
            Iterator it = bi.a(cls).iterator();
            while (it.hasNext()) {
                Object obj = bi.this.get((Class) it.next());
                if (obj != null) {
                    return obj;
                }
            }
            return null;
        }
    }

    public bi() {
        this.a = bk.c();
        this.b = bj.a(new a(null));
    }

    public static List a(Class cls) {
        return bh.a(cls);
    }

    public int a() {
        return this.a.size();
    }

    public Object a(Class cls, Object obj) {
        Object put = this.a.put(cls, obj);
        this.b.clear();
        return put;
    }

    public Object a(Object obj) {
        return this.b.get(obj);
    }
}