package com.mopub.mobileads.util;

import android.webkit.WebView;

public class WebViews {
    public static void a(WebView webView) {
        try {
            WebView.class.getDeclaredMethod("onPause", new Class[0]).invoke(webView, new Object[0]);
        } catch (Exception e) {
        }
    }

    public static void b(WebView webView) {
        try {
            WebView.class.getDeclaredMethod("onResume", new Class[0]).invoke(webView, new Object[0]);
        } catch (Exception e) {
        }
    }
}