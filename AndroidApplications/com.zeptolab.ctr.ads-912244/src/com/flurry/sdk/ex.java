package com.flurry.sdk;

import com.flurry.sdk.ey.a;

public class ex {
    private static long a;
    private static ex b;
    private final ey c;

    static {
        a = 1000;
        b = null;
    }

    public ex() {
        this.c = new ey();
        this.c.a(a);
        this.c.a(true);
    }

    public static synchronized ex a() {
        ex exVar;
        synchronized (ex.class) {
            if (b == null) {
                b = new ex();
            }
            exVar = b;
        }
        return exVar;
    }

    public synchronized void a(a aVar) {
        this.c.a(aVar);
        if (!this.c.c() && this.c.d() > 0) {
            this.c.a();
        }
    }

    public synchronized boolean b(a aVar) {
        boolean b;
        b = this.c.b(aVar);
        if (this.c.d() == 0) {
            this.c.b();
        }
        return b;
    }
}