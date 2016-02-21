package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;
import com.mopub.mobileads.HtmlInterstitialWebView;

public class HtmlInterstitialWebViewPool extends BaseHtmlWebViewPool {
    HtmlInterstitialWebViewPool(Context context) {
        super(context);
    }

    protected /* synthetic */ BaseHtmlWebView a() {
        return c();
    }

    protected void a(HtmlInterstitialWebView htmlInterstitialWebView, CustomEventInterstitialListener customEventInterstitialListener, boolean z, String str, String str2) {
        htmlInterstitialWebView.a(customEventInterstitialListener, z, str, str2);
    }

    protected HtmlInterstitialWebView c() {
        return new HtmlInterstitialWebView(this.a);
    }
}