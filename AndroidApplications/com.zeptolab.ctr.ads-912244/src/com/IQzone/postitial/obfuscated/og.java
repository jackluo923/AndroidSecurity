package com.IQzone.postitial.obfuscated;

import java.io.Serializable;
import java.util.Map.Entry;

public final class og implements Serializable, Entry {
    private static final long a = 1450937660141010085L;
    private final Object b;
    private volatile Object c;

    public og(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    public final Object getKey() {
        return this.b;
    }

    public final Object getValue() {
        return this.c;
    }

    public final Object setValue(Object obj) {
        this.c = obj;
        return obj;
    }
}