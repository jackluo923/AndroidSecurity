package com.heyzap.house.view;

import android.app.Activity;

class b implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ Integer d;
    final /* synthetic */ String e;
    final /* synthetic */ InterstitialWebView f;

    b(InterstitialWebView interstitialWebView, Activity activity, int i, int i2, Integer num, String str) {
        this.f = interstitialWebView;
        this.a = activity;
        this.b = i;
        this.c = i2;
        this.d = num;
        this.e = str;
    }

    public void run() {
        InterstitialWebView.access$000(this.f, this.a, this.b, this.c);
        this.f.setBackgroundColor(this.d.intValue());
        InterstitialWebView.access$100(this.f).b.loadDataWithBaseURL(null, this.e, WebRequest.CONTENT_TYPE_HTML, null, null);
    }
}