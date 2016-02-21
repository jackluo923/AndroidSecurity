package com.heyzap.sdk.ads;

import android.view.View;
import com.heyzap.house.impl.AbstractActivity;
import com.heyzap.house.impl.AbstractActivity.AdActionListener;
import com.heyzap.house.model.InterstitialModel;
import com.heyzap.house.view.InterstitialWebView;

public class HeyzapInterstitialActivity extends AbstractActivity {
    private Boolean prepared;
    private InterstitialWebView webview;

    private class a implements AdActionListener {
        private a() {
        }

        public void click() {
            HeyzapInterstitialActivity.this.onClick();
        }

        public void clickUrl(String str, String str2) {
            HeyzapInterstitialActivity.this.onClick(str, str2);
        }

        public void completed() {
        }

        public void error() {
        }

        public void hide() {
            HeyzapInterstitialActivity.this.webview.clear();
            HeyzapInterstitialActivity.this.onHide();
        }

        public void installHeyzap() {
        }

        public void restart() {
        }

        public void show() {
            HeyzapInterstitialActivity.this.onShow();
        }
    }

    public HeyzapInterstitialActivity() {
        this.prepared = Boolean.valueOf(false);
    }

    public View getContentView() {
        return this.webview;
    }

    public Boolean onPrepared() {
        return Boolean.valueOf(true);
    }

    public void prepare() {
        this.webview = new InterstitialWebView(this, new a(null));
        this.webview.render((InterstitialModel) this.currentAd);
    }
}