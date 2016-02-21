package com.amazon.device.ads;

import android.util.SparseArray;

abstract class StartUpWaiter implements ConfigurationListener, SettingsListener {
    private static final SparseArray a;
    static final int d = 0;
    static final int e = 1;
    private int b;

    static {
        a = new SparseArray();
        a(d, new MainThreadRunnableExecutor());
        a(e, new ThreadPoolRunnableExecutor());
    }

    StartUpWaiter() {
        this.b = 1;
    }

    private static RunnableExecutor a(int i) {
        return (RunnableExecutor) a.get(i, a.get(e));
    }

    static void a(int i, RunnableExecutor runnableExecutor) {
        if (runnableExecutor == null) {
            a.remove(i);
        } else {
            a.put(i, runnableExecutor);
        }
    }

    private void a(Runnable runnable) {
        a(this.b).execute(runnable);
    }

    protected abstract void a();

    protected abstract void b();

    public void onConfigurationFailure() {
        a(new Runnable() {
            public void run() {
                StartUpWaiter.this.b();
            }
        });
    }

    public void onConfigurationReady() {
        a(new Runnable() {
            public void run() {
                StartUpWaiter.this.a();
            }
        });
    }

    public void settingsLoaded() {
        Configuration.getInstance().queueConfigurationListener(this);
    }

    public void start() {
        Settings.getInstance().listenForSettings(this);
    }

    public void startAndCallbackOnMainThread() {
        this.b = 0;
        start();
    }
}