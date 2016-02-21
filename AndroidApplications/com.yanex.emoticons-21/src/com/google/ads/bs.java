package com.google.ads;

import android.webkit.WebView;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;

public final class bs implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        if (((String) hashMap.get("name")) == null) {
            g.b("Error: App event with no name parameter.");
        } else {
            hashMap.get("info");
            wVar.t();
        }
    }
}