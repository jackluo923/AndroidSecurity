package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public class dl {
    private static dl a;
    private final Context b;
    private final Handler c;
    private final Handler d;

    private dl(Context context) {
        this.b = context.getApplicationContext();
        this.c = new Handler(Looper.getMainLooper());
        HandlerThread handlerThread = new HandlerThread("FlurryAgent");
        handlerThread.start();
        this.d = new Handler(handlerThread.getLooper());
    }

    public static dl a() {
        return a;
    }

    public static synchronized void a(Context context) {
        synchronized (dl.class) {
            if (a == null && context != null) {
                a = new dl(context);
            } else {
                throw new IllegalArgumentException("Context cannot be null");
            }
        }
    }

    public void a(Runnable runnable) {
        if (runnable != null) {
            this.c.post(runnable);
        }
    }

    public void a(Runnable runnable, long j) {
        if (runnable != null) {
            this.c.postDelayed(runnable, j);
        }
    }

    public Context b() {
        return this.b;
    }

    public void b(Runnable runnable) {
        if (runnable != null) {
            this.c.removeCallbacks(runnable);
        }
    }

    public void b(Runnable runnable, long j) {
        if (runnable != null) {
            this.d.postDelayed(runnable, j);
        }
    }

    public PackageManager c() {
        return this.b.getPackageManager();
    }

    public void c(Runnable runnable) {
        if (runnable != null) {
            this.d.post(runnable);
        }
    }

    public void d(Runnable runnable) {
        if (runnable != null) {
            this.d.removeCallbacks(runnable);
        }
    }
}