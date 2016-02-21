package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.util.HashMap;

public class u implements n {
    public void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("url");
        String str2 = (String) hashMap.get("type");
        String str3 = (String) hashMap.get("afma_notify_dt");
        boolean equals = "1".equals(hashMap.get("drt_include"));
        b.c("Received ad url: <url: \"" + str + "\" type: \"" + str2 + "\" afmaNotifyDt: \"" + str3 + "\">");
        c i = dVar.i();
        if (i != null) {
            i.c(equals);
            i.d(str);
        }
    }
}