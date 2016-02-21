package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.util.HashMap;

public class w implements n {
    public void a(d dVar, HashMap hashMap, WebView webView) {
        c.d dVar2;
        String str = (String) hashMap.get("url");
        String str2 = (String) hashMap.get("type");
        String str3 = (String) hashMap.get("afma_notify_dt");
        boolean equals = "1".equals(hashMap.get("drt_include"));
        String str4 = (String) hashMap.get("request_scenario");
        boolean equals2 = "1".equals(hashMap.get("use_webview_loadurl"));
        if (c.d.d.e.equals(str4)) {
            dVar2 = c.d.d;
        } else if (c.d.c.e.equals(str4)) {
            dVar2 = c.d.c;
        } else if (c.d.a.e.equals(str4)) {
            dVar2 = c.d.a;
        } else {
            dVar2 = c.d.b;
        }
        b.c("Received ad url: <url: \"" + str + "\" type: \"" + str2 + "\" afmaNotifyDt: \"" + str3 + "\" useWebViewLoadUrl: \"" + equals2 + "\">");
        c j = dVar.j();
        if (j != null) {
            j.c(equals);
            j.a(dVar2);
            j.d(equals2);
            j.d(str);
        }
    }
}