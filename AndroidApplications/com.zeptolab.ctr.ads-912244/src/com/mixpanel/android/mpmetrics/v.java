package com.mixpanel.android.mpmetrics;

import android.app.AlertDialog.Builder;

class v implements Runnable {
    final /* synthetic */ Builder a;
    final /* synthetic */ s b;

    v(s sVar, Builder builder) {
        this.b = sVar;
        this.a = builder;
    }

    public void run() {
        this.a.show();
    }
}