package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import java.lang.ref.WeakReference;

@SuppressLint({"NewApi", "UseSparseArrays"})
class r implements Runnable {
    private final WeakReference a;

    public r(Context context) {
        this.a = new WeakReference(context);
    }

    public void run() {
        Context context = (Context) this.a.get();
        if (context != null) {
            new p(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        }
    }
}