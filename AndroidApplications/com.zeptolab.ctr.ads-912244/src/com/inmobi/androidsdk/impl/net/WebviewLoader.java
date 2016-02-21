package com.inmobi.androidsdk.impl.net;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.internal.Log;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public class WebviewLoader {
    static boolean a;
    static AtomicBoolean b;
    private WebView c;

    protected static class MyWebViewClient extends WebViewClient {
        protected MyWebViewClient() {
        }

        public void onPageFinished(WebView webView, String str) {
            try {
                Log.internal(ConfigConstants.LOGGING_TAG, "On page Finished " + str);
                if (b.compareAndSet(true, false)) {
                    RequestResponseManager.c.set(true);
                    synchronized (RequestResponseManager.a) {
                        RequestResponseManager.a.notify();
                    }
                }
                super.onPageFinished(webView, str);
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception onPageFinished", e);
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            try {
                Log.internal(ConfigConstants.LOGGING_TAG, "Processing click in webview error " + i + " Failing url: " + str2 + "Error description " + str);
                b.set(false);
                RequestResponseManager.c.set(false);
                super.onReceivedError(webView, i, str, str2);
                synchronized (RequestResponseManager.a) {
                    RequestResponseManager.a.notify();
                }
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception onReceived error callback webview", e);
            }
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            Log.internal(ConfigConstants.LOGGING_TAG, "SSL Error.Webview will proceed " + sslError);
            sslErrorHandler.proceed();
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Should override " + str);
            webView.loadUrl(str);
            return true;
        }
    }

    class a implements Runnable {
        a() {
        }

        public void run() {
            try {
                if (WebviewLoader.this.c != null) {
                    b.set(false);
                }
                WebviewLoader.this.c.stopLoading();
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception stop loading", e);
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ HashMap b;

        b(String str, HashMap hashMap) {
            this.a = str;
            this.b = hashMap;
        }

        public void run() {
            try {
                b.set(true);
                WebviewLoader.this.loadUrl(this.a, this.b);
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception load in webview", e);
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ Context a;

        c(Context context) {
            this.a = context;
        }

        public void run() {
            try {
                WebviewLoader.this.c = new WebView(this.a);
                b = new AtomicBoolean(false);
                WebviewLoader.this.c.setWebViewClient(new MyWebViewClient());
                WebviewLoader.this.c.getSettings().setJavaScriptEnabled(true);
                WebviewLoader.this.c.getSettings().setPluginState(PluginState.ON);
                WebviewLoader.this.c.getSettings().setCacheMode(GoogleScorer.CLIENT_PLUS);
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception init webview", e);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        public void run() {
            try {
                if (WebviewLoader.this.c != null) {
                    WebviewLoader.this.c.stopLoading();
                    WebviewLoader.this.c.destroy();
                    WebviewLoader.this.c = null;
                    b.set(false);
                }
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception deinit webview ", e);
            }
        }
    }

    static {
        a = false;
        b = null;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public WebviewLoader(Context context) {
        this.c = null;
        RequestResponseManager.b.post(new c(context));
    }

    public void deinit(int i) {
        RequestResponseManager.b.postDelayed(new d(), (long) i);
    }

    public void loadInWebview(String str, HashMap hashMap) {
        RequestResponseManager.b.post(new b(str, hashMap));
    }

    public void stopLoading() {
        RequestResponseManager.b.post(new a());
    }
}