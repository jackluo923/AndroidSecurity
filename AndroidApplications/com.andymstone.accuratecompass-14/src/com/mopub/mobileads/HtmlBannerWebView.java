package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener;

public class HtmlBannerWebView extends BaseHtmlWebView {

    class HtmlBannerWebViewListener implements HtmlWebViewListener {
        private final CustomEventBannerListener a;

        public HtmlBannerWebViewListener(CustomEventBannerListener customEventBannerListener) {
            this.a = customEventBannerListener;
        }

        public void a() {
            this.a.c();
        }

        public void a(View view) {
            this.a.a(view);
        }

        public void a(MoPubErrorCode moPubErrorCode) {
            this.a.a(moPubErrorCode);
        }

        public void b() {
            this.a.b();
        }
    }

    public HtmlBannerWebView(Context context) {
        super(context);
    }

    public void a(CustomEventBannerListener customEventBannerListener, boolean z, String str, String str2) {
        super.a(z);
        setWebViewClient(new HtmlWebViewClient(new HtmlBannerWebViewListener(customEventBannerListener), this, str2, str));
    }
}