package com.heyzap.internal;

import android.content.Context;

final class e implements Runnable {
    final /* synthetic */ Context a;

    e(Context context) {
        this.a = context;
    }

    public void run() {
        boolean z;
        z = Logger.ENABLED && Utils.packageIsInstalled("com.example.android.snake", this.a);
        Logger.ENABLED = z;
    }
}