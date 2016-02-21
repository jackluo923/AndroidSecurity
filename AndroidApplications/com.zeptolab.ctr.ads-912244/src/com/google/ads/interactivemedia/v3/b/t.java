package com.google.ads.interactivemedia.v3.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public final class t {
    private final a a;
    private final WebView b;

    public static interface a {
        void a_(r rVar);
    }

    public t(Context context, a aVar) {
        this(new WebView(context), aVar);
    }

    private t(WebView webView, a aVar) {
        this.a = aVar;
        this.b = webView;
        this.b.setBackgroundColor(0);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new WebViewClient() {
            public final void onPageFinished(WebView webView, String str) {
            }

            public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            }

            public final void onReceivedError(WebView webView, int i, String str, String str2) {
                new StringBuilder("Error: ").append(i).append(" ").append(str).append(" ").append(str2);
            }

            public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!str.startsWith("gmsg://")) {
                    return false;
                }
                t.this.b(str);
                return true;
            }
        });
    }

    public final WebView a() {
        return this.b;
    }

    public final void a(r rVar) {
        String e = rVar.e();
        new StringBuilder("Sending javascript msg: ").append(rVar).append(" as URL ").append(e);
        this.b.loadUrl(e);
    }

    public final void a(String str) {
        this.b.loadUrl(str);
    }

    protected final void b(String str) {
        try {
            r a = r.a(str);
            new StringBuilder("Received msg: ").append(a).append(" from URL ").append(str);
            this.a.a(a);
        } catch (IllegalArgumentException e) {
            Log.w("IMASDK", new StringBuilder("Invalid internal message, ignoring. Please make sure the Google IMA SDK library is up to date. Message: ").append(str).toString());
        } catch (Exception e2) {
            Log.e("IMASDK", new StringBuilder("An internal error occured parsing message from javascript.  Message to be parsed: ").append(str).toString(), e2);
        }
    }
}