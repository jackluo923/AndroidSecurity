package com.google.ads;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.internal.g;
import com.google.ads.util.b;
import java.util.HashMap;
import java.util.Locale;

public class q extends u {
    public void a(d dVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("u");
        if (str == null) {
            b.e("Could not get URL from click gmsg.");
        } else {
            g m = dVar.m();
            if (m != null) {
                Uri parse = Uri.parse(str);
                str = parse.getHost();
                if (str != null && str.toLowerCase(Locale.US).endsWith(".admob.com")) {
                    str = null;
                    String path = parse.getPath();
                    if (path != null) {
                        String[] split = path.split("/");
                        if (split.length >= 4) {
                            str = split[2] + "/" + split[3];
                        }
                    }
                    m.a(str);
                }
            }
            super.a(dVar, hashMap, webView);
        }
    }
}