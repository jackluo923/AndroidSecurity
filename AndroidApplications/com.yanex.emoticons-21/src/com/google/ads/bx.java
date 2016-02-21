package com.google.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;

public final class bx implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("u");
        if (TextUtils.isEmpty(str)) {
            g.e("Could not get URL from track gmsg.");
        } else {
            new Thread(new n(str, (Context) wVar.g().f.a())).start();
        }
    }
}