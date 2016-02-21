package com.heyzap.house.handler;

import android.app.Activity;
import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class d extends WebViewClient {
    final /* synthetic */ Activity a;
    final /* synthetic */ ClickHandler b;

    d(ClickHandler clickHandler, Activity activity) {
        this.b = clickHandler;
        this.a = activity;
    }

    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        if (this.b.launchIfMarket(this.a, str)) {
            webView.stopLoading();
        }
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        if (this.b.launchIfMarket(this.a, str)) {
            webView.stopLoading();
        }
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return super.shouldOverrideUrlLoading(webView, str);
    }
}