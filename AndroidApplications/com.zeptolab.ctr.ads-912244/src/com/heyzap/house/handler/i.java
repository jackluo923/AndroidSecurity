package com.heyzap.house.handler;

import android.app.Activity;

class i implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ ClickHandler c;

    i(ClickHandler clickHandler, Activity activity, String str) {
        this.c = clickHandler;
        this.a = activity;
        this.b = str;
    }

    public void run() {
        if (!this.c.marketIntentLaunched.get()) {
            this.c.launchMarketIntent(this.a, this.b);
        }
    }
}