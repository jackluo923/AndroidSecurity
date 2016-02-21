package com.chartboost.sdk.impl;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public abstract class bm {
    final int a;
    private Queue b;

    public bm(int i) {
        this.b = new ConcurrentLinkedQueue();
        this.a = i;
    }

    protected boolean a(Object obj) {
        return true;
    }

    protected abstract Object b();

    public void b(Object obj) {
        if (a(obj) && this.b.size() <= this.a) {
            this.b.add(obj);
        }
    }

    public Object c() {
        Object poll = this.b.poll();
        return poll != null ? poll : b();
    }
}