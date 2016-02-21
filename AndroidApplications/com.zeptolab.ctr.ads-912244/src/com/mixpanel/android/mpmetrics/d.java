package com.mixpanel.android.mpmetrics;

import android.app.Activity;
import com.mixpanel.android.mpmetrics.c.b;

final class d implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ b b;

    d(Activity activity, b bVar) {
        this.a = activity;
        this.b = bVar;
    }

    public void run() {
        new a(this.a, this.b).execute(new Void[0]);
    }
}