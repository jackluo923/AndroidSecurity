package me.kiip.internal.f;

import java.util.concurrent.CountDownLatch;

public final class f {
    private final CountDownLatch a;
    private long b;
    private long c;

    f() {
        this.a = new CountDownLatch(1);
        this.b = -1;
        this.c = -1;
    }

    void a() {
        if (this.b != -1) {
            throw new IllegalStateException();
        }
        this.b = System.nanoTime();
    }

    void b() {
        if (this.c != -1 || this.b == -1) {
            throw new IllegalStateException();
        }
        this.c = System.nanoTime();
        this.a.countDown();
    }

    void c() {
        if (this.c != -1 || this.b == -1) {
            throw new IllegalStateException();
        }
        this.c = this.b - 1;
        this.a.countDown();
    }
}