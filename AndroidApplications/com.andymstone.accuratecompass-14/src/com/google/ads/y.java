package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.util.HashMap;

public class y implements n {
    public void a(d dVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("afma_notify_dt");
        b.c("Received log message: <\"string\": \"" + ((String) hashMap.get("string")) + "\", \"afmaNotifyDt\": \"" + str + "\">");
    }
}