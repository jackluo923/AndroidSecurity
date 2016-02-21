package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebView;
import com.millennialmedia.android.MMException;
import java.util.concurrent.atomic.AtomicBoolean;

class ac {
    @SuppressLint({"SetJavaScriptEnabled"})
    static void a(WebView webView, Context context, AtomicBoolean atomicBoolean) {
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webView.getSettings().setAllowFileAccess(true);
        webView.getSettings().setPluginsEnabled(false);
        webView.setInitialScale(MMException.UNKNOWN_ERROR);
        if (atomicBoolean.get()) {
            webView.getSettings().setBuiltInZoomControls(true);
            webView.getSettings().setSupportZoom(true);
        }
    }
}