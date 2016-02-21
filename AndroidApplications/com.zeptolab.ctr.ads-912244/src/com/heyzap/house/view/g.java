package com.heyzap.house.view;

import android.webkit.WebChromeClient;
import com.heyzap.internal.Logger;

class g extends WebChromeClient {
    final /* synthetic */ InterstitialWebView a;

    g(InterstitialWebView interstitialWebView) {
        this.a = interstitialWebView;
    }

    public void onConsoleMessage(String str, int i, String str2) {
        Logger.log(new Object[]{"Console Message", str, Integer.valueOf(i), str2});
    }
}