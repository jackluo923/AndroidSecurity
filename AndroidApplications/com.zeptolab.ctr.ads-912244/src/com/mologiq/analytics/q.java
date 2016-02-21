package com.mologiq.analytics;

import android.content.Context;
import java.lang.ref.WeakReference;

class q implements Runnable {
    private final WeakReference a;

    public q(Context context) {
        this.a = new WeakReference(context);
    }

    public void run() {
        Context context = (Context) this.a.get();
        if (context != null) {
            new p(context).execute(new Object[0]);
        }
    }
}