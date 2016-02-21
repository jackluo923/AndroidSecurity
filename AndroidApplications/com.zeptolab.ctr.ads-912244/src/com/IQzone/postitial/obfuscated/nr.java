package com.IQzone.postitial.obfuscated;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public class nr implements ExecutorService {
    private static final ql a;
    private final ExecutorService b;

    static {
        a = new ql();
    }

    public nr(ExecutorService executorService) {
        this.b = executorService;
    }

    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.b.awaitTermination(j, timeUnit);
    }

    public void execute(Runnable runnable) {
        this.b.execute(new ns(this, runnable));
    }

    public List invokeAll(Collection collection) {
        return this.b.invokeAll(collection);
    }

    public List invokeAll(Collection collection, long j, TimeUnit timeUnit) {
        return this.b.invokeAll(collection, j, timeUnit);
    }

    public Object invokeAny(Collection collection) {
        return this.b.invokeAny(collection);
    }

    public Object invokeAny(Collection collection, long j, TimeUnit timeUnit) {
        return this.b.invokeAny(collection, j, timeUnit);
    }

    public boolean isShutdown() {
        return this.b.isShutdown();
    }

    public boolean isTerminated() {
        return this.b.isTerminated();
    }

    public void shutdown() {
        this.b.shutdown();
    }

    public List shutdownNow() {
        return this.b.shutdownNow();
    }

    public Future submit(Runnable runnable) {
        return this.b.submit(runnable);
    }

    public Future submit(Runnable runnable, Object obj) {
        return this.b.submit(runnable, obj);
    }

    public Future submit(Callable callable) {
        return this.b.submit(callable);
    }
}