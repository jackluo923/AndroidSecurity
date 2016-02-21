package com.vungle.publisher;

import java.util.concurrent.atomic.AtomicInteger;

public final class ce {
    private final AtomicInteger a;

    public ce() {
        this.a = new AtomicInteger();
    }

    public final int a(int i) {
        int a;
        int i2;
        do {
            i2 = this.a.get();
            a = ca.a(i2, i, 1);
        } while (!this.a.compareAndSet(i2, a));
        return a;
    }
}