package com.google.ads;

import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.b.a;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;

public final class k implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        int i = -1;
        if (webView instanceof a) {
            try {
                int parseInt;
                int parseInt2;
                int parseInt3;
                parseInt = TextUtils.isEmpty((CharSequence) hashMap.get("w")) ? -1 : Integer.parseInt((String) hashMap.get("w"));
                parseInt2 = TextUtils.isEmpty((CharSequence) hashMap.get("h")) ? -1 : Integer.parseInt((String) hashMap.get("h"));
                parseInt3 = TextUtils.isEmpty((CharSequence) hashMap.get("x")) ? -1 : Integer.parseInt((String) hashMap.get("x"));
                if (!TextUtils.isEmpty((CharSequence) hashMap.get("y"))) {
                    i = Integer.parseInt((String) hashMap.get("y"));
                }
                if (hashMap.get("a") != null && ((String) hashMap.get("a")).equals("1")) {
                    wVar.a(true, parseInt3, i, parseInt, parseInt2);
                } else if (hashMap.get("a") == null || !((String) hashMap.get("a")).equals("0")) {
                    wVar.a(parseInt3, i, parseInt, parseInt2);
                } else {
                    wVar.a(false, parseInt3, i, parseInt, parseInt2);
                }
            } catch (NumberFormatException e) {
                g.d("Invalid number format in activation overlay response.", e);
            }
        } else {
            g.b("Trying to activate an overlay when this is not an overlay.");
        }
    }
}