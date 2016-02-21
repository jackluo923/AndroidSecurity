package com.google.ads;

import android.webkit.WebView;
import com.google.ads.b.e;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;

public final class bw implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        if (webView instanceof e) {
            ((e) webView).c("1".equals(hashMap.get("custom_close")));
        } else {
            g.b("Trying to set a custom close icon on a WebView that isn't an AdWebView");
        }
    }
}