package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.util.HashMap;

public class w implements n {
    public void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("afma_notify_dt");
        b.c("Received log message: <\"string\": \"" + ((String) hashMap.get("string")) + "\", \"afmaNotifyDt\": \"" + str + "\">");
    }
}