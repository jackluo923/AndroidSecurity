package com.google.ads;

import android.webkit.WebView;
import com.google.ads.b.e;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;

public final class bv implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        if (webView instanceof e) {
            ((e) webView).f();
        } else {
            g.b("Trying to close WebView that isn't an AdWebView");
        }
    }
}