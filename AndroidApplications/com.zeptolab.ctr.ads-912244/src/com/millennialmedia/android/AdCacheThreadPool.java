package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class AdCacheThreadPool {
    private static AdCacheThreadPool a;
    private PriorityBlockingQueue b;
    private ThreadPoolExecutor c;

    private class AdCacheTask implements Comparable, Runnable {
        private WeakReference b;
        private String c;
        private CachedAd d;
        private WeakReference e;

        AdCacheTask(Context context, String str, CachedAd cachedAd, AdCacheTaskListener adCacheTaskListener) {
            this.b = new WeakReference(context.getApplicationContext());
            this.c = str;
            this.d = cachedAd;
            if (adCacheTaskListener != null) {
                this.e = new WeakReference(adCacheTaskListener);
            }
        }

        public int compareTo(AdCacheTask adCacheTask) {
            return this.d.i - adCacheTask.d.i;
        }

        public boolean equals(AdCacheTask adCacheTask) {
            if (this == adCacheTask) {
                return true;
            }
            if (!(adCacheTask instanceof AdCacheTask)) {
                return false;
            }
            return this.d.equals(adCacheTask.d);
        }

        public void run() {
            String str = null;
            AdCacheTaskListener adCacheTaskListener = this.e != null ? (AdCacheTaskListener) this.e.get() : null;
            if (adCacheTaskListener != null) {
                adCacheTaskListener.downloadStart(this.d);
            }
            HandShake.a((Context) this.b.get()).d(this.c);
            boolean b = this.d.b((Context) this.b.get());
            HandShake.a((Context) this.b.get()).e(this.c);
            if (b) {
                AdCache.b((Context) this.b.get(), this.c, null);
            } else {
                String e = AdCache.e((Context) this.b.get(), this.c);
                if (e == null || !this.d.e().equals(e)) {
                    Context context = (Context) this.b.get();
                    String str2 = this.c;
                    if (!this.d.j) {
                        str = this.d.e();
                    }
                    AdCache.b(context, str2, str);
                } else {
                    this.d.c((Context) this.b.get());
                    AdCache.b((Context) this.b.get(), this.c, null);
                }
            }
            if (adCacheTaskListener != null) {
                adCacheTaskListener.downloadCompleted(this.d, b);
            }
        }
    }

    private AdCacheThreadPool() {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        BlockingQueue priorityBlockingQueue = new PriorityBlockingQueue(32);
        this.b = priorityBlockingQueue;
        this.c = new ThreadPoolExecutor(1, 2, 30, timeUnit, priorityBlockingQueue);
    }

    static synchronized AdCacheThreadPool a() {
        AdCacheThreadPool adCacheThreadPool;
        synchronized (AdCacheThreadPool.class) {
            if (a == null) {
                a = new AdCacheThreadPool();
            }
            adCacheThreadPool = a;
        }
        return adCacheThreadPool;
    }

    synchronized boolean a(Context context, String str, CachedAd cachedAd, AdCacheTaskListener adCacheTaskListener) {
        boolean z;
        if (!(context == null || cachedAd == null)) {
            Runnable adCacheTask = new AdCacheTask(context, str, cachedAd, adCacheTaskListener);
            if (!(this.b.contains(adCacheTask) || cachedAd.d(context))) {
                this.c.execute(adCacheTask);
                z = true;
            }
        }
        z = false;
        return z;
    }
}