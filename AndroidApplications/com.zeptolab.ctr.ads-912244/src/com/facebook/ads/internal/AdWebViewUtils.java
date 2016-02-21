package com.facebook.ads.internal;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class AdWebViewUtils {
    public static final long DEFAULT_IMPRESSION_DELAY_MS = 1000;
    public static final String FBAD_SCHEME = "fbad";
    public static final String WEBVIEW_BASE_URL = "https://www.facebook.com/";
    private static String userAgentString;

    static {
        userAgentString = null;
    }

    public static void config(WebView webView, WebViewClient webViewClient, AdWebViewInterface adWebViewInterface) {
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setSupportZoom(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setHorizontalScrollbarOverlay(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setVerticalScrollbarOverlay(false);
        webView.addJavascriptInterface(adWebViewInterface, "AdControl");
        webView.setWebViewClient(webViewClient);
    }

    public static String getUserAgentString(Context context) {
        if (userAgentString == null) {
            WebView webView = new WebView(context.getApplicationContext());
            userAgentString = webView.getSettings().getUserAgentString();
            webView.destroy();
        }
        return userAgentString;
    }
}