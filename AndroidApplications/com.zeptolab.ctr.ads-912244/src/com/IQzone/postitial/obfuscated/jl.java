package com.IQzone.postitial.obfuscated;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class jl implements Serializable {
    private static final long a = -4358485432175755322L;
    private final int b;
    private final int c;
    private final String d;
    private final int e;
    private final int f;
    private final List g;
    private int h;
    private int i;
    private final boolean j;

    public jl(int i, int i2, String str, int i3, int i4, List list, int i5, int i6, int i7, boolean z) {
        this.h = 100;
        this.i = 100;
        this.j = z;
        this.h = i6;
        this.i = i7;
        this.g = new ArrayList(list);
        this.f = i4;
        this.b = i;
        this.d = str;
        this.c = i2;
        this.e = i3;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final List c() {
        return new ArrayList(this.g);
    }

    public final String d() {
        return this.d;
    }

    public final int e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        return obj instanceof jl && ((jl) obj).b == this.b;
    }

    public final int f() {
        return this.f;
    }

    public final int g() {
        return this.h;
    }

    public final int h() {
        return this.i;
    }

    public final int hashCode() {
        return String.valueOf(this.b).hashCode();
    }

    public final boolean i() {
        return this.j;
    }
}