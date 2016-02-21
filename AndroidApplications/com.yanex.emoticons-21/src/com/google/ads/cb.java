package com.google.ads;

import android.webkit.WebView;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;

public final class cb implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("afma_notify_dt");
        g.c(new StringBuilder("Received log message: <\"string\": \"").append((String) hashMap.get("string")).append("\", \"afmaNotifyDt\": \"").append(str).append("\">").toString());
    }
}