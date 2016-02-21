package com.IQzone.postitial.obfuscated;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

public class pj extends pp implements ou {
    private static final ql a;
    private final oo b;
    private final TreeMap c;
    private final Map d;
    private final int e;
    private int f;

    static {
        a = new ql();
    }

    public pj() {
        this(new pk(), -1);
    }

    private pj(oo ooVar, int i) {
        this.c = new TreeMap();
        this.d = new HashMap();
        if (ooVar == null) {
            throw new NullPointerException("<MemoryCache><1>, Size cannot be null");
        }
        this.b = ooVar;
        this.e = -1;
    }

    public final Object a(Object obj) {
        Long l = (Long) this.d.get(obj);
        return l == null ? null : ((Map) this.c.get(l)).get(obj);
    }

    public final void a() {
        this.c.clear();
        this.d.clear();
        this.f = 0;
    }

    public final void a(Object obj, Object obj2) {
        if (obj2 == null) {
            throw new NullPointerException("<MemoryCache><5>, value cannot be null this isn't a map");
        } else if (obj == null) {
            throw new NullPointerException("<MemoryCache><6>, Key cannot be null");
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            Long l = (Long) this.d.get(obj);
            if (l != null) {
                ((Map) this.c.get(l)).remove(obj);
            } else {
                try {
                    this.f = ((Integer) this.b.b(obj2)).intValue() + this.f;
                } catch (om e) {
                    om omVar = e;
                    ql qlVar = a;
                    throw new RuntimeException(new StringBuilder("<MemoryCache><8>, ").append(omVar).toString());
                }
            }
            this.d.put(obj, Long.valueOf(currentTimeMillis));
            Map map = (Map) this.c.get(Long.valueOf(currentTimeMillis));
            if (map == null) {
                map = new HashMap();
                this.c.put(Long.valueOf(currentTimeMillis), map);
            }
            map.put(obj, obj2);
            if (this.f > this.e && this.e >= 0) {
                qb qbVar = new qb();
                if (qbVar.a > 0) {
                    throw new IllegalStateException("<StopWatch><1>You have already started the StopWatch!");
                }
                qbVar.a = System.currentTimeMillis();
                while (this.f > this.e && this.e >= 0 && this.c.size() != 0) {
                    Long l2 = (Long) this.c.firstKey();
                    map = (Map) this.c.get(l2);
                    if (map.size() == 0) {
                        this.c.remove(l2);
                    } else {
                        c(map.keySet().iterator().next());
                    }
                }
            }
        }
    }

    public final void c(Object obj) {
        if (obj == null) {
            throw new NullPointerException("<MemoryCache><2>, Key cannot be null");
        }
        Long l = (Long) this.d.get(obj);
        if (l != null) {
            Map map = (Map) this.c.get(l);
            Object obj2 = map.get(obj);
            if (obj2 != null) {
                try {
                    int intValue = ((Integer) this.b.b(obj2)).intValue();
                    map.remove(obj);
                    this.f -= intValue;
                    if (map.size() == 0) {
                        this.c.remove(l);
                    }
                } catch (om e) {
                    om omVar = e;
                    ql qlVar = a;
                    throw new RuntimeException(new StringBuilder("<MemoryCache><4>, ").append(omVar).toString());
                }
            }
            this.d.remove(obj);
        }
    }
}