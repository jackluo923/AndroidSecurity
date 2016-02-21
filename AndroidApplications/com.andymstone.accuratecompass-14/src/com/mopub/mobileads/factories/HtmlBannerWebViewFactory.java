package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener;
import com.mopub.mobileads.HtmlBannerWebView;

public class HtmlBannerWebViewFactory {
    protected static HtmlBannerWebViewFactory a;
    protected HtmlBannerWebViewPool b;
    private int c;

    static {
        a = new HtmlBannerWebViewFactory();
    }

    public static HtmlBannerWebView a(CustomEventBannerListener customEventBannerListener, boolean z, String str, String str2) {
        return a.b(customEventBannerListener, z, str, str2);
    }

    public static void a() {
        a.b();
    }

    public static void a(Context context) {
        a.b(context);
    }

    private void b() {
        int i = this.c - 1;
        this.c = i;
        if (i == 0) {
            this.b.b();
            this.b = null;
        }
    }

    private void b(Context context) {
        if (this.b == null) {
            this.b = new HtmlBannerWebViewPool(context);
        }
        this.c++;
    }

    public HtmlBannerWebView b(CustomEventBannerListener customEventBannerListener, boolean z, String str, String str2) {
        return (HtmlBannerWebView) a.b.a(customEventBannerListener, z, str2, str);
    }
}