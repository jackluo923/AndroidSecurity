package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;
import com.mopub.mobileads.HtmlInterstitialWebView;

public class HtmlInterstitialWebViewFactory {
    protected static HtmlInterstitialWebViewFactory a;
    protected HtmlInterstitialWebViewPool b;
    private int c;

    static {
        a = new HtmlInterstitialWebViewFactory();
    }

    public static HtmlInterstitialWebView a(CustomEventInterstitialListener customEventInterstitialListener, boolean z, String str, String str2) {
        return a.b(customEventInterstitialListener, z, str, str2);
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
            this.b = new HtmlInterstitialWebViewPool(context);
        }
        this.c++;
    }

    public HtmlInterstitialWebView b(CustomEventInterstitialListener customEventInterstitialListener, boolean z, String str, String str2) {
        return (HtmlInterstitialWebView) a.b.a(customEventInterstitialListener, z, str, str2);
    }
}