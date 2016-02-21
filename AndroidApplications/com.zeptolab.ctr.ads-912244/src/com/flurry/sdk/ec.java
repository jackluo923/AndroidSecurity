package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.FutureTask;

public class ec extends FutureTask {
    private final WeakReference a;
    private final WeakReference b;

    public ec(Runnable runnable, Object obj) {
        super(runnable, obj);
        this.a = null;
        this.b = new WeakReference(runnable);
    }

    public Runnable a() {
        return (Runnable) this.b.get();
    }
}