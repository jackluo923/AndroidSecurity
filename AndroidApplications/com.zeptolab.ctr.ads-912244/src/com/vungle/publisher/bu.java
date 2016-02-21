package com.vungle.publisher;

import android.content.Intent;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.inmobi.androidsdk.impl.ConfigException;
import com.vungle.log.Logger;
import com.vungle.publisher.service.BaseHandler;
import com.vungle.publisher.service.BaseHandler.a;
import com.zeptolab.ctr.ads.R;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

abstract class bu extends br implements a {
    volatile BaseHandler d;
    protected volatile int e;
    private final AtomicInteger f;
    private final Object g;

    protected bu(String str) {
        super(str, 30);
        this.f = new AtomicInteger(-2);
        this.g = this.f;
    }

    private void a(Message message, int i) {
        while (true) {
            Logger.v(Logger.SERVICE_TAG, this.a + " message (ID: " + message.arg1 + ", type: " + message.obj + ")");
            BaseHandler a = a();
            a.removeMessages(-1);
            if (b()) {
                Logger.d(Logger.SERVICE_TAG, this.a + " queuing message (ID: " + message.arg1 + ", type: " + message.obj + ", delay seconds: " + i + ")");
                if (i < 0) {
                    a.sendMessageAtFrontOfQueue(message);
                    return;
                } else if (i == 0) {
                    a.sendMessage(message);
                    return;
                } else {
                    a.sendMessageDelayed(message, (long) (i * 1000));
                    return;
                }
            } else {
                try {
                    synchronized (this.g) {
                        if (!b()) {
                            Logger.d(Logger.SERVICE_TAG, Thread.currentThread().getName() + " waiting");
                            this.g.wait();
                        }
                    }
                } catch (InterruptedException e) {
                    Logger.v(Logger.SERVICE_TAG, Thread.currentThread().getName() + " interrupted - resuming init/wait");
                }
            }
        }
    }

    private boolean b() {
        return this.f.get() == 0;
    }

    private void c() {
        synchronized (this.g) {
            this.g.notifyAll();
        }
    }

    protected final BaseHandler a() {
        BaseHandler baseHandler = this.d;
        while (!b()) {
            if (this.f.compareAndSet(ConfigException.MISSING_ACTIVITY_DECLARATION, -1)) {
                HandlerThread handlerThread = new HandlerThread(this.a + "-Thread");
                handlerThread.start();
                baseHandler = a(handlerThread.getLooper());
                baseHandler.a(new a[]{this});
                this.d = baseHandler;
                if (this.f.compareAndSet(-1, 0)) {
                    c();
                    Logger.d(Logger.SERVICE_TAG, this.a + " started: " + this.b + " second shutdown delay");
                } else {
                    Logger.w(Logger.SERVICE_TAG, Thread.currentThread().getName() + " failed to mark handler started: expected state -1, but is " + this.f.get());
                }
            } else {
                try {
                    synchronized (this.g) {
                        if (!b()) {
                            this.g.wait();
                        }
                    }
                } catch (InterruptedException e) {
                    Logger.v(Logger.SERVICE_TAG, Thread.currentThread().getName() + " interrupted - resuming init/wait");
                }
            }
        }
        return baseHandler;
    }

    protected abstract BaseHandler a(Looper looper);

    public void a(int i) {
        Logger.v(Logger.SERVICE_TAG, this.a + " shutdown completed: " + i + " completed tasks");
    }

    public void a(int i, int i2) {
        Logger.d(Logger.SERVICE_TAG, Thread.currentThread().getName() + " shutdown cancelled: " + i + " completed tasks, " + i2 + " received tasks");
    }

    public void a(int i, bz.a.a aVar) {
        throw new UnsupportedOperationException();
    }

    public void a(Intent intent, int i) {
        this.e = i;
        try {
            b(intent, i);
        } catch (Exception e) {
            Logger.e(Logger.SERVICE_TAG, e);
        }
    }

    protected final void a(Message message) {
        a(message, 0);
    }

    public void b(int i) {
        Logger.d(Logger.SERVICE_TAG, this.a + " shutdown initiated: " + i + " completed tasks");
    }

    public void b(int i, int i2) {
        Logger.d(Logger.SERVICE_TAG, this.a + " shutdown forced: " + i + " completed tasks, " + i2 + " received tasks");
    }

    public void b(int i, bz.a.a aVar) {
        if (i != this.e) {
            aVar.a(i, this.e);
        } else if (this.f.compareAndSet(0, ConfigException.MISSING_CONFIG_CHANGES)) {
            aVar.a(i);
            this.d = null;
            if (this.f.compareAndSet(ConfigException.MISSING_CONFIG_CHANGES, ConfigException.MISSING_ACTIVITY_DECLARATION)) {
                c();
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    ((bw.a) it.next()).c(i);
                }
            } else {
                Logger.w(Logger.SERVICE_TAG, Thread.currentThread().getName() + " failed to set state stopped: expected state -3, but is " + this.f.get());
            }
        } else {
            Logger.w(Logger.SERVICE_TAG, Thread.currentThread().getName() + " failed to set state stopping: expected state 0, but is " + this.f.get());
        }
    }

    protected abstract void b(Intent intent, int i);

    protected final void b(Message message) {
        a(message, (int)R.styleable.MapAttrs_uiZoomControls);
    }

    public void c(int i) {
        Logger.d(Logger.SERVICE_TAG, this.a + " shutdown pending: " + i + " completed tasks");
    }

    public void d(int i) {
        Logger.v(Logger.SERVICE_TAG, Thread.currentThread().getName() + " task ID " + i + " initiated");
    }

    public void e(int i) {
        Logger.v(Logger.SERVICE_TAG, Thread.currentThread().getName() + " task ID " + i + " completed");
    }
}