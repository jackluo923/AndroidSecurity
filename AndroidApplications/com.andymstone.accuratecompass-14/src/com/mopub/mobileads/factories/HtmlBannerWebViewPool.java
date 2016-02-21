package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener;
import com.mopub.mobileads.HtmlBannerWebView;

public class HtmlBannerWebViewPool extends BaseHtmlWebViewPool {
    HtmlBannerWebViewPool(Context context) {
        super(context);
    }

    protected /* synthetic */ BaseHtmlWebView a() {
        return c();
    }

    protected void a(HtmlBannerWebView htmlBannerWebView, CustomEventBannerListener customEventBannerListener, boolean z, String str, String str2) {
        htmlBannerWebView.a(customEventBannerListener, z, str, str2);
    }

    protected HtmlBannerWebView c() {
        return new HtmlBannerWebView(this.a);
    }
}