package com.chartboost.sdk.impl;

import java.util.HashMap;
import java.util.Map;

abstract class bk extends bf {

    public static class a {
        private com.chartboost.sdk.impl.bf.h.a a;
        private final Map b;

        a() {
            this.a = com.chartboost.sdk.impl.bf.h.a.a;
            this.b = new HashMap();
        }

        public bk a_() {
            return new b(this.b, this.a);
        }
    }

    static class b extends bk {
        b(Map map, com.chartboost.sdk.impl.bf.h.a aVar) {
            super(map, aVar);
        }

        public Map a(Map map) {
            return new HashMap(map);
        }
    }

    protected bk(Map map, com.chartboost.sdk.impl.bf.h.a aVar) {
        super(map, aVar);
    }

    public static a b() {
        return new a();
    }

    public static bk c() {
        return b().a();
    }
}