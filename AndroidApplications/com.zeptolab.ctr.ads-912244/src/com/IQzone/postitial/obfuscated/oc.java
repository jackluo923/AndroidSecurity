package com.IQzone.postitial.obfuscated;

import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;

public final class oc implements Executor {
    private final Queue a;
    private final Executor b;
    private Runnable c;
    private final boolean d;

    public oc(Executor executor) {
        this.a = new LinkedList();
        this.d = false;
        this.b = executor;
    }

    protected final synchronized void a() {
        Runnable runnable = (Runnable) this.a.poll();
        this.c = runnable;
        if (runnable != null) {
            this.b.execute(this.c);
        }
    }

    public final synchronized void execute(Runnable runnable) {
        this.a.offer(new od(this, runnable));
        if (this.c == null) {
            a();
        }
    }
}