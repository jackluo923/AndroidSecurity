package com.inmobi.re.container;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.controller.util.Constants;

class b extends WebViewClient {
    final /* synthetic */ IMWebView a;

    b(IMWebView iMWebView) {
        this.a = iMWebView;
    }

    public void onLoadResource(WebView webView, String str) {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onLoadResource:" + str);
        try {
            if (IMWebView.a(this.a) != null) {
                IMWebView.a(this.a).onLoadResource(webView, str);
            }
            if (str != null && str.contains("/mraid.js") && !this.a.getUrl().equals("about:blank") && !this.a.getUrl().startsWith("file:")) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object at " + webView.getUrl());
                String url = this.a.getUrl();
                if (!IMWebView.d(this.a).contains(url)) {
                    IMWebView.d(this.a).add(url);
                }
                if (!this.a.mraidLoaded) {
                    this.a.injectJavaScript(Initializer.getMRAIDString());
                }
                this.a.mraidLoaded = true;
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Cannot load resource", e);
        }
    }

    public void onPageFinished(WebView webView, String str) {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onPageFinished, url: " + str);
        if (IMWebView.a(this.a) != null) {
            IMWebView.a(this.a).onPageFinished(webView, str);
        }
        try {
            if (IMWebView.d(this.a).contains(str) && !this.a.mraidLoaded) {
                this.a.injectJavaScript(Initializer.getMRAIDString());
            }
            Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> Current State:" + IMWebView.b(this.a));
            if (IMWebView.b(this.a) == ViewState.LOADING) {
                this.a.injectJavaScript("window.mraid.broadcastEvent('ready');");
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> Firing ready event at " + webView);
                if (this.a.mOriginalWebviewForExpandUrl != null) {
                    this.a.setState(ViewState.EXPANDED);
                } else {
                    this.a.setState(ViewState.DEFAULT);
                }
                if ((!this.a.mIsInterstitialAd || this.a.mWebViewIsBrowserActivity) && this.a.getVisibility() == 4) {
                    this.a.setVisibility(0);
                }
                if (!(IMWebView.e(this.a) == null || IMWebView.c(this.a).get())) {
                    IMWebView.e(this.a).sendToTarget();
                }
                if (IMWebView.f(this.a) != null) {
                    IMWebView.f(this.a).sendToTarget();
                }
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in onPageFinished ", e);
        }
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.a.setState(ViewState.LOADING);
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onPageStarted url: " + str + " p " + this.a.getParent());
        if (this.a.getParent() == null) {
            IMWebView.a(this.a, true);
        }
        if (IMWebView.a(this.a) != null) {
            IMWebView.a(this.a).onPageStarted(webView, str, bitmap);
        }
        this.a.mraidLoaded = false;
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> error: " + str);
        if (IMWebView.a(this.a) != null) {
            IMWebView.a(this.a).onReceivedError(webView, i, str, str2);
        }
        try {
            if (!(IMWebView.b(this.a) != ViewState.LOADING || this.a.mListener == null || IMWebView.c(this.a).get())) {
                this.a.mListener.onError();
            }
            IMWebView.a(this.a, null);
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in webview loading ", e);
        }
    }

    @TargetApi(14)
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        IMWebView.a(this.a, sslErrorHandler, sslError);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        boolean z = false;
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> shouldOverrideUrlLoading, url:" + str + "webview id" + webView);
        try {
            if (!this.a.mWebViewIsBrowserActivity) {
                IMWebView.a(this.a, str);
                return true;
            } else if (str.startsWith("http:") || str.startsWith("https:")) {
                this.a.doHidePlayers();
                return z;
            } else {
                IMWebView.a(this.a, str);
                return true;
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Should override exception", e);
            return z;
        }
    }
}