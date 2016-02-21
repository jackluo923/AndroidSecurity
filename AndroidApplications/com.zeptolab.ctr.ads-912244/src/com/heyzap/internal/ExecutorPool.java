package com.heyzap.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ExecutorPool {
    private static volatile ExecutorPool ref;
    ExecutorService pool;

    private ExecutorPool() {
        this.pool = Executors.newCachedThreadPool();
    }

    public static synchronized ExecutorService getInstance() {
        ExecutorService executorService;
        synchronized (ExecutorPool.class) {
            if (ref == null) {
                ref = new ExecutorPool();
            }
            executorService = ref.pool;
        }
        return executorService;
    }

    public Object clone() {
        return null;
    }
}