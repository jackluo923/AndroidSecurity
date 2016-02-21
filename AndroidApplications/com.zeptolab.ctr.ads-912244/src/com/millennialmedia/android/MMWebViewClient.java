package com.millennialmedia.android;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

abstract class MMWebViewClient extends WebViewClient {
    private static final String e = "MMWebViewClient";
    MMWebViewClientListener a;
    RedirectionListenerImpl b;
    boolean c;
    private ExecutorService d;

    static abstract class MMWebViewClientListener {
        MMWebViewClientListener() {
        }

        void a(String str) {
        }

        void onPageFinished(String str) {
        }
    }

    MMWebViewClient(MMWebViewClientListener mMWebViewClientListener, RedirectionListenerImpl redirectionListenerImpl) {
        this.d = Executors.newCachedThreadPool();
        this.a = mMWebViewClientListener;
        this.b = redirectionListenerImpl;
    }

    abstract void a(MMWebView mMWebView);

    public void onPageFinished(WebView webView, String str) {
        MMWebView mMWebView = (MMWebView) webView;
        if (!mMWebView.b(str)) {
            this.a.onPageFinished(str);
            mMWebView.u();
            a(mMWebView);
            MMLog.b(e, "onPageFinished webview: " + mMWebView.toString() + "url is " + str);
        }
        super.onPageFinished(webView, str);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        MMLog.b(e, String.format("onPageStarted: %s", new Object[]{str}));
        this.a.a(str);
        MMWebView mMWebView = (MMWebView) webView;
        mMWebView.g = "loading";
        mMWebView.k = false;
        super.onPageStarted(webView, str, bitmap);
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        MMLog.e(e, String.format("Error: %s %s %s", new Object[]{Integer.valueOf(i), str, str2}));
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        MMWebView mMWebView = (MMWebView) webView;
        if (!mMWebView.b(str)) {
            MMLog.a(e, "@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is " + str + " for " + webView);
            if (str.substring(0, IabHelper.BILLING_RESPONSE_RESULT_ERROR).equalsIgnoreCase("mmsdk:")) {
                MMLog.a(e, "Running JS bridge command: " + str);
                Runnable mMCommand = new MMCommand((MMWebView) webView, str);
                this.c = mMCommand.a();
                this.d.execute(mMCommand);
                return true;
            } else if (this.b.isExpandingToUrl()) {
                return false;
            } else {
                this.b.a = str;
                this.b.b = new WeakReference(webView.getContext());
                this.b.e = mMWebView.e;
                HttpRedirection.a(this.b);
            }
        }
        return true;
    }
}