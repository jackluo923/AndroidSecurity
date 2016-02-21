package me.kiip.internal.o;

import android.net.http.SslError;
import android.os.Build.VERSION;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class c extends WebViewClient {
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (VERSION.SDK_INT == 4) {
            sslErrorHandler.proceed();
        }
    }
}