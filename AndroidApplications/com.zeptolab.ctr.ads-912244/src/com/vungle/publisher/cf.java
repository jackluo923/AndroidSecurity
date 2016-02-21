package com.vungle.publisher;

import java.util.concurrent.atomic.AtomicInteger;

public class cf {
    public final int a;
    public final AtomicInteger b;
    private int c;
    private int d;

    public cf() {
        this.b = new AtomicInteger();
        this.c = Integer.MIN_VALUE;
        this.d = 2;
        this.a = 1;
    }

    public final int a() {
        return this.b.get() >>> this.a;
    }

    public final int a(int i, int i2) {
        return b(i << this.a, i2);
    }

    public final void a(int i) {
        int i2 = this.c;
        if (i2 == Integer.MIN_VALUE) {
            i2 = 1 << (32 - this.a) - 1;
            this.c = i2;
        }
        if ((i2 & i) != i) {
            throw new IllegalArgumentException(new StringBuilder("value has out of range bits set: ").append(i).append(" (max bits: ").append(32 - this.a).append(")").toString());
        }
    }

    final int b(int i, int i2) {
        return (c() & i2) | i;
    }

    public final void b() {
        if (this.a <= 0) {
            throw new IllegalArgumentException(new StringBuilder("index exceeds bit array size: 0(size: ").append(this.a).append(")").toString());
        }
    }

    public final int c() {
        int i = this.d;
        if (i != 2) {
            return i;
        }
        i = 1 << this.a - 1;
        this.d = i;
        return i;
    }
}