package com.flurry.sdk;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class ej extends ed {
    private static ej a;

    static {
        a = null;
    }

    protected ej() {
        super(ej.class.getName(), 0, 5, 5000, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(11, new eb()));
    }

    public static synchronized ej a() {
        ej ejVar;
        synchronized (ej.class) {
            if (a == null) {
                a = new ej();
            }
            ejVar = a;
        }
        return ejVar;
    }
}