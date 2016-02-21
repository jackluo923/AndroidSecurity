package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;

public class HtmlInterstitialWebView extends BaseHtmlWebView {
    private Handler a;

    final class AnonymousClass_1MoPubUriJavascriptInterface {
        private final /* synthetic */ CustomEventInterstitialListener b;

        class AnonymousClass_1 implements Runnable {
            private final /* synthetic */ CustomEventInterstitialListener a;

            public void run() {
                this.a.b();
            }
        }

        AnonymousClass_1MoPubUriJavascriptInterface(CustomEventInterstitialListener customEventInterstitialListener) {
            this.b = customEventInterstitialListener;
        }
    }

    class HtmlInterstitialWebViewListener implements HtmlWebViewListener {
        private final CustomEventInterstitialListener a;

        public HtmlInterstitialWebViewListener(CustomEventInterstitialListener customEventInterstitialListener) {
            this.a = customEventInterstitialListener;
        }

        public void a() {
            this.a.c();
        }

        public void a(BaseHtmlWebView baseHtmlWebView) {
            this.a.b();
        }

        public void a(MoPubErrorCode moPubErrorCode) {
            this.a.a(moPubErrorCode);
        }

        public void b() {
        }
    }

    public HtmlInterstitialWebView(Context context) {
        super(context);
        this.a = new Handler();
    }

    private void a(CustomEventInterstitialListener customEventInterstitialListener) {
        addJavascriptInterface(new AnonymousClass_1MoPubUriJavascriptInterface(customEventInterstitialListener), "mopubUriInterface");
    }

    public void a(CustomEventInterstitialListener customEventInterstitialListener, boolean z, String str, String str2) {
        super.a(z);
        setWebViewClient(new HtmlWebViewClient(new HtmlInterstitialWebViewListener(customEventInterstitialListener), this, str2, str));
        a(customEventInterstitialListener);
    }
}