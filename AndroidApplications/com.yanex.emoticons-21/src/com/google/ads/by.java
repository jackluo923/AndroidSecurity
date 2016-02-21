package com.google.ads;

import android.webkit.WebView;
import com.google.ads.b.n;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;

public final class by implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("errors");
        g.e(new StringBuilder("Invalid ").append((String) hashMap.get("type")).append(" request error: ").append(str).toString());
        n i = wVar.i();
        if (i != null) {
            i.a(e.a);
        }
    }
}