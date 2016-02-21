package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import java.util.concurrent.atomic.AtomicBoolean;

class ab {
    @SuppressLint({"SetJavaScriptEnabled"})
    static void a(WebView webView, Context context, AtomicBoolean atomicBoolean, boolean z) {
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webView.getSettings().setAllowFileAccess(true);
        webView.getSettings().setPluginState(PluginState.OFF);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setAppCacheEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setAllowFileAccessFromFileURLs(true);
        webView.getSettings().setAllowUniversalAccessFromFileURLs(true);
        webView.getSettings().setAllowContentAccess(true);
        webView.getSettings().setAllowFileAccess(true);
        if (Utils.detectDeviceForWebViewCrash() && z) {
            webView.setLayerType(1, null);
        }
        if (atomicBoolean.get()) {
            webView.getSettings().setBuiltInZoomControls(true);
            webView.getSettings().setSupportZoom(true);
        }
    }
}