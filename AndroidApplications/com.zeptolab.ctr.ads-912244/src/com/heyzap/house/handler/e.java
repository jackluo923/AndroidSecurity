package com.heyzap.house.handler;

import android.app.Activity;
import android.webkit.WebView;

class e implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ WebView b;
    final /* synthetic */ String c;
    final /* synthetic */ ClickHandler d;

    e(ClickHandler clickHandler, Activity activity, WebView webView, String str) {
        this.d = clickHandler;
        this.a = activity;
        this.b = webView;
        this.c = str;
    }

    public void run() {
        this.a.runOnUiThread(new f(this));
    }
}