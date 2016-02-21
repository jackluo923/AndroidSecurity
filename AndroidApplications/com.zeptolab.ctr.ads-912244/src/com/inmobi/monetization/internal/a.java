package com.inmobi.monetization.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.internal.Log;

class a extends WebViewClient {
    final /* synthetic */ TrackerView a;

    a(TrackerView trackerView) {
        this.a = trackerView;
    }

    public void onPageFinished(WebView webView, String str) {
        Log.internal(Constants.LOG_TAG, "Native ad context code loaded");
        this.a.f = true;
        if (this.a.e != null && !this.a.e.isEmpty()) {
            int i = 0;
            while (i < this.a.e.size()) {
                this.a.injectJavaScript((String) this.a.e.get(i));
                i++;
            }
            this.a.e.clear();
            this.a.e = null;
        }
    }
}