package com.mopub.mobileads;

import android.content.Intent;
import android.view.View;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;
import com.mopub.mobileads.factories.HtmlInterstitialWebViewFactory;

public class MoPubActivity extends BaseInterstitialActivity {
    private HtmlInterstitialWebView b;

    class BroadcastingInterstitialListener implements CustomEventInterstitialListener {
        private BroadcastingInterstitialListener() {
        }

        public void a() {
        }

        public void a(MoPubErrorCode moPubErrorCode) {
            MoPubActivity.this.a("com.mopub.action.interstitial.fail");
            MoPubActivity.this.finish();
        }

        public void b() {
            MoPubActivity.this.a("com.mopub.action.interstitial.show");
        }

        public void c() {
            MoPubActivity.this.a("com.mopub.action.interstitial.click");
        }

        public void d() {
        }
    }

    public View a() {
        Intent intent = getIntent();
        boolean booleanExtra = intent.getBooleanExtra("Scrollable", false);
        String stringExtra = intent.getStringExtra("Redirect-Url");
        String stringExtra2 = intent.getStringExtra("Clickthrough-Url");
        String stringExtra3 = intent.getStringExtra("Html-Response-Body");
        this.b = HtmlInterstitialWebViewFactory.a(new BroadcastingInterstitialListener(null), booleanExtra, stringExtra, stringExtra2);
        this.b.a(stringExtra3);
        return this.b;
    }

    protected void onDestroy() {
        this.b.destroy();
        super.onDestroy();
    }
}