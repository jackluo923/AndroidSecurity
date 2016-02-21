package com.amazon.device.ads;

import android.content.Context;
import android.webkit.WebView;
import com.zeptolab.ctr.scorer.GoogleScorer;

class AdRendererFactory {
    public static final String LOG_TAG = "AdRendererFactory";

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[AAXCreative.values().length];
            try {
                a[AAXCreative.HTML.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            a[AAXCreative.MRAID1.ordinal()] = 2;
        }
    }

    protected AdRenderer a(AdData adData, AdController adController, WebView webView, Context context) {
        return new HtmlRenderer(adData, adController, webView, context);
    }

    protected Class a(AAXCreative aAXCreative) {
        switch (AnonymousClass_1.a[aAXCreative.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return HtmlRenderer.class;
            case GoogleScorer.CLIENT_PLUS:
                return MraidRenderer.class;
            default:
                return null;
        }
    }

    protected AdRenderer b(AdData adData, AdController adController, WebView webView, Context context) {
        return new MraidRenderer(adData, adController, webView, context);
    }

    public AdRenderer getAdRenderer(AAXCreative aAXCreative, AdData adData, AdController adController, WebView webView, Context context) {
        switch (AnonymousClass_1.a[aAXCreative.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return a(adData, adController, webView, context);
            case GoogleScorer.CLIENT_PLUS:
                return b(adData, adController, webView, context);
            default:
                return null;
        }
    }

    public boolean shouldCreateNewRenderer(AAXCreative aAXCreative, AdRenderer adRenderer) {
        return adRenderer == null || !adRenderer.f() || adRenderer.getClass() != a(aAXCreative);
    }
}