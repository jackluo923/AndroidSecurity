package com.heyzap.house.view;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class f extends WebViewClient {
    final /* synthetic */ InterstitialWebView a;

    f(InterstitialWebView interstitialWebView) {
        this.a = interstitialWebView;
    }

    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.a.contentLoaded = Boolean.valueOf(true);
        InterstitialWebView.access$100(this.a).setVisibility(0);
        if (InterstitialWebView.access$500(this.a).booleanValue()) {
            InterstitialWebView.access$700(this.a, InterstitialWebView.access$600(this.a));
            InterstitialWebView.access$502(this.a, Boolean.valueOf(false));
            InterstitialWebView.access$602(this.a, Boolean.valueOf(false));
        }
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.a.contentLoaded = Boolean.valueOf(false);
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (InterstitialWebView.access$400(this.a) != null) {
            if (str.contains("Heyzap.close")) {
                InterstitialWebView.access$400(this.a).hide();
            } else if (str.contains("Heyzap.restart")) {
                InterstitialWebView.access$400(this.a).restart();
            } else if (str.contains("Heyzap.installHeyzap")) {
                InterstitialWebView.access$400(this.a).installHeyzap();
            } else if (str.contains("Heyzap.clickAd")) {
                InterstitialWebView.access$400(this.a).click();
            } else if (str.contains("Heyzap.clickManualAdUrl=")) {
                int indexOf = str.indexOf("Heyzap.clickManualAdUrl=") + 24;
                int indexOf2 = str.indexOf(":::");
                int i = indexOf2 + 3;
                InterstitialWebView.access$400(this.a).clickUrl(str.substring(indexOf, indexOf2), str.substring(i));
            }
        }
        return true;
    }
}