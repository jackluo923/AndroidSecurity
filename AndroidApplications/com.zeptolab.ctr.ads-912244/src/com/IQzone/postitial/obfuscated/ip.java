package com.IQzone.postitial.obfuscated;

import java.io.Serializable;

public final class ip implements Serializable {
    private static final long a = -2237687843845037813L;
    private final long b;
    private final jl c;
    private final int d;
    private final int e;

    public ip(jl jlVar, int i, long j, int i2) {
        this.d = i2;
        this.c = jlVar;
        this.b = j;
        this.e = i;
    }

    public final int a() {
        return this.e;
    }

    public final long b() {
        return this.b;
    }

    public final jl c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }
}