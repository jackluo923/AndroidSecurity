package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.util.HashMap;

public class s implements n {
    public void a(d dVar, HashMap hashMap, WebView webView) {
        if (webView instanceof AdWebView) {
            ((AdWebView) webView).setCustomClose("1".equals(hashMap.get("custom_close")));
        } else {
            b.b("Trying to set a custom close icon on a WebView that isn't an AdWebView");
        }
    }
}