package com.vungle.publisher;

import com.vungle.log.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class bt extends ScheduledThreadPoolExecutor implements bz, com.vungle.publisher.bz.a.a {
    final com.vungle.publisher.bz.a a;
    final int b;
    final List c;
    final AtomicBoolean d;
    final AtomicInteger e;

    static interface b {
        void a(int i);

        void a(int i, int i2);

        void a(int i, int i2, List list);

        void a(Thread thread, Runnable runnable, int i, int i2);

        void b_(int i);

        void b_(int i, int i2);

        void c(int i);
    }

    static class a implements RunnableScheduledFuture {
        Runnable a;
        private final RunnableScheduledFuture b;

        a(Runnable runnable, RunnableScheduledFuture runnableScheduledFuture) {
            this.a = runnable;
            this.b = runnableScheduledFuture;
        }

        public final boolean cancel(boolean z) {
            return this.b.cancel(z);
        }

        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return this.b.compareTo((Delayed) obj);
        }

        public final Object get() {
            return this.b.get();
        }

        public final Object get(long j, TimeUnit timeUnit) {
            return this.b.get(j, timeUnit);
        }

        public final long getDelay(TimeUnit timeUnit) {
            return this.b.getDelay(timeUnit);
        }

        public final boolean isCancelled() {
            return this.b.isCancelled();
        }

        public final boolean isDone() {
            return this.b.isDone();
        }

        public final boolean isPeriodic() {
            return this.b.isPeriodic();
        }

        public final void run() {
            this.b.run();
        }
    }

    class c implements Runnable {
        private final int b;

        c(int i) {
            this.b = i;
        }

        public final void run() {
            bt.this.b(this.b, bt.this);
        }
    }

    public bt(int i, ThreadFactory threadFactory, com.vungle.publisher.bz.a aVar, int i2) {
        super(i, threadFactory);
        this.c = new ArrayList();
        this.d = new AtomicBoolean(false);
        this.e = new AtomicInteger();
        this.a = aVar;
        this.b = i2;
    }

    private int a() {
        return getQueue().size();
    }

    public final void a(int i) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((b) it.next()).b(i);
        }
        super.shutdown();
    }

    public final void a(int i, int i2) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(i, i2);
        }
    }

    protected final void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (th == null) {
            a aVar = (a) runnable;
            if (aVar.isDone()) {
                int incrementAndGet;
                try {
                    aVar.get();
                } catch (CancellationException e) {
                    Logger.d(Logger.SERVICE_TAG, Thread.currentThread().getName() + " cancelled: continuing post execution");
                } catch (InterruptedException e2) {
                    Logger.w(Logger.SERVICE_TAG, Thread.currentThread().getName() + " interrupted: continuing post execution");
                } catch (ExecutionException e3) {
                    Logger.e(Logger.SERVICE_TAG, Thread.currentThread().getName() + " exception", e3.getCause());
                }
                int i = aVar.a != null && aVar.a instanceof c;
                incrementAndGet = i != 0 ? this.e.get() : this.e.incrementAndGet();
                int a = a();
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).b(incrementAndGet, a);
                }
                if (a == 0 && !isShutdown() && this.d.compareAndSet(false, true)) {
                    Iterator it2 = this.c.iterator();
                    while (it2.hasNext()) {
                        ((b) it2.next()).a(incrementAndGet);
                    }
                    schedule(new c(incrementAndGet), (long) this.b, TimeUnit.SECONDS);
                    this.d.set(false);
                }
            } else {
                Logger.w(Logger.SERVICE_TAG, Thread.currentThread().getName() + " afterExecute() called before task done");
            }
        } else {
            Logger.e(Logger.SERVICE_TAG, Thread.currentThread().getName() + " exception", th);
        }
    }

    public final void b(int i, int i2) {
        List shutdownNow = super.shutdownNow();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(i, i2, shutdownNow);
        }
    }

    protected final void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        int i = this.e.get();
        int a = a();
        if (runnable != null && runnable instanceof a) {
            runnable = ((a) runnable).a;
        }
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(thread, runnable, i, a);
        }
    }

    protected final RunnableScheduledFuture decorateTask(Runnable runnable, RunnableScheduledFuture runnableScheduledFuture) {
        return new a(runnable, runnableScheduledFuture);
    }

    protected final RunnableScheduledFuture decorateTask(Callable callable, RunnableScheduledFuture runnableScheduledFuture) {
        throw new UnsupportedOperationException();
    }

    protected final void finalize() {
        this.a.a(this.e.get(), this);
    }

    protected final void terminated() {
        super.terminated();
        int i = this.e.get();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((b) it.next()).c(i);
        }
    }
}