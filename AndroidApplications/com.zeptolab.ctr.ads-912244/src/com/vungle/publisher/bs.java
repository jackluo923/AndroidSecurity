package com.vungle.publisher;

import android.content.Intent;
import com.inmobi.androidsdk.impl.ConfigException;
import com.vungle.log.Logger;
import com.vungle.publisher.bz.a.a;
import java.util.Iterator;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class bs extends br implements b {
    protected final AtomicInteger d;
    protected final AtomicInteger e;
    private final int f;
    private volatile bt g;
    private final Object h;

    public bs(String str, int i, int i2) {
        super(str, i2);
        this.d = new AtomicInteger();
        this.e = new AtomicInteger(-2);
        this.h = this.e;
        this.f = i;
    }

    private bt a() {
        bt btVar = this.g;
        while (!b()) {
            if (this.e.compareAndSet(ConfigException.MISSING_ACTIVITY_DECLARATION, -1)) {
                btVar = new bt(this.f, new ThreadFactory() {
                    private int b;

                    public final Thread newThread(Runnable runnable) {
                        StringBuilder append = new StringBuilder().append(bs.this).append("-Thread-");
                        int i = this.b;
                        this.b = i + 1;
                        String toString = append.append(i).toString();
                        Logger.v(Logger.SERVICE_TAG, toString + " starting");
                        return new Thread(runnable, toString);
                    }
                }, this, this.b);
                b[] bVarArr = new b[]{this};
                int i = 0;
                while (i <= 0) {
                    btVar.c.add(bVarArr[0]);
                    i++;
                }
                this.g = btVar;
                if (this.e.compareAndSet(-1, 0)) {
                    c();
                    Logger.d(Logger.SERVICE_TAG, this.a + " started: " + this.f + " workers, " + this.b + " second shutdown delay");
                } else {
                    Logger.w(Logger.SERVICE_TAG, Thread.currentThread().getName() + " failed to mark started: expected state -1, but is " + this.e.get());
                }
            } else {
                try {
                    synchronized (this.h) {
                        if (!b()) {
                            this.h.wait();
                        }
                    }
                } catch (InterruptedException e) {
                    Logger.v(Logger.SERVICE_TAG, Thread.currentThread().getName() + " interrupted - resuming init/wait");
                }
            }
        }
        return btVar;
    }

    private void a(Iterable iterable) {
        if (iterable != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a((Runnable) it.next(), 0, false);
            }
        }
    }

    private void a(Runnable runnable, int i, boolean z) {
        bt a;
        int i2;
        while (true) {
            a = a();
            while (true) {
                int i3 = this.e.get();
                if (i3 >= 0) {
                    i2 = i3 + 1;
                    if (this.e.compareAndSet(i3, i2)) {
                        break;
                    }
                    Logger.v(Logger.SERVICE_TAG, Thread.currentThread().getName() + " retrying queue runnnable: expected " + i3 + " received tasks, but is " + this.e.get());
                }
            }
        }
        if (z) {
            this.d.incrementAndGet();
        }
        Logger.v(Logger.SERVICE_TAG, this.a + " queuing runnable " + i2 + ", runnable className: " + runnable.getClass().getName());
        a.schedule(runnable, (long) i, TimeUnit.MILLISECONDS);
    }

    private boolean b() {
        return this.e.get() >= 0;
    }

    private void c() {
        synchronized (this.h) {
            this.h.notifyAll();
        }
    }

    public abstract Runnable a(Intent intent);

    public void a(int i) {
        Logger.d(Logger.SERVICE_TAG, this.a + " shutdown scheduled: " + i + " completed tasks");
    }

    public void a(int i, int i2) {
        Logger.d(Logger.SERVICE_TAG, Thread.currentThread().getName() + " shutdown cancelled: " + i + " completed tasks, " + this.e.get() + " received tasks");
    }

    public void a(int i, int i2, Iterable iterable) {
        Logger.d(Logger.SERVICE_TAG, this.a + " shutdown forced: " + i + " completed tasks, " + i2 + " received tasks");
        int size = iterable == null ? 0 : iterable.size();
        if (size > 0) {
            Logger.w(Logger.SERVICE_TAG, this.a + " transferring " + size + " orphaned tasks to new executor");
            a(iterable);
        }
    }

    public void a(int i, a aVar) {
        int i2 = this.d.get();
        aVar.b(i, this.e.getAndSet(ConfigException.MISSING_CONFIG_CHANGES));
        this.g = null;
        if (this.e.compareAndSet(ConfigException.MISSING_CONFIG_CHANGES, ConfigException.MISSING_ACTIVITY_DECLARATION)) {
            c();
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((bw.a) it.next()).a(i2);
            }
        } else {
            Logger.w(Logger.SERVICE_TAG, Thread.currentThread().getName() + " failed to mark stopped: expected state -3, but is " + this.e.get());
        }
    }

    public void a(Intent intent, int i) {
        try {
            a(a(intent), 0, true);
        } catch (IllegalArgumentException e) {
            Logger.w(Logger.SERVICE_TAG, this.a + ": " + e.getMessage());
        }
    }

    protected final void a(Runnable runnable, int i) {
        a(runnable, i, false);
    }

    public void a(Thread thread, Runnable runnable, int i, int i2) {
        Logger.v(Logger.SERVICE_TAG, thread.getName() + " task initiated: " + i + " completed tasks, " + i2 + " pending tasks");
    }

    public void b(int i) {
        Logger.d(Logger.SERVICE_TAG, this.a + " shutdown initiated: " + i + " completed tasks");
    }

    public void b(int i, int i2) {
        Logger.v(Logger.SERVICE_TAG, Thread.currentThread().getName() + " task completed: " + i + " completed tasks, " + i2 + " pending tasks");
    }

    public void b(int i, a aVar) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder("invalid number of completed tasks: ").append(i).toString());
        }
        int i2 = this.d.get();
        if (this.e.compareAndSet(i, ConfigException.MISSING_CONFIG_CHANGES)) {
            aVar.a(i);
            this.g = null;
            if (this.e.compareAndSet(ConfigException.MISSING_CONFIG_CHANGES, ConfigException.MISSING_ACTIVITY_DECLARATION)) {
                int i3;
                do {
                    i3 = this.d.get();
                } while (!this.d.compareAndSet(i3, i3 - i2));
                c();
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    ((bw.a) it.next()).c(i2);
                }
            } else {
                Logger.w(Logger.SERVICE_TAG, Thread.currentThread().getName() + " failed to mark executor stopped: expected state -3, but is " + this.e.get());
            }
        } else {
            aVar.a(i, this.e.get());
        }
    }

    public void c(int i) {
        Logger.v(Logger.SERVICE_TAG, this.a + " shutdown completed: " + i + " completed tasks");
    }
}