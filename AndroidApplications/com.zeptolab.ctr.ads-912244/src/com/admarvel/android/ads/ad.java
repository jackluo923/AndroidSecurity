package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebView;
import java.util.concurrent.atomic.AtomicBoolean;

class ad {
    @SuppressLint({"SetJavaScriptEnabled"})
    static void a(WebView webView, Context context, AtomicBoolean atomicBoolean) {
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webView.getSettings().setAllowFileAccess(true);
        webView.getSettings().setPluginsEnabled(false);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setAppCacheEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        if (atomicBoolean.get()) {
            webView.getSettings().setBuiltInZoomControls(true);
            webView.getSettings().setSupportZoom(true);
        }
    }
}