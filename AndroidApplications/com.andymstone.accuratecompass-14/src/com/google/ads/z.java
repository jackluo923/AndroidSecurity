package com.google.ads;

import android.webkit.WebView;
import com.google.ads.AdActivity.StaticMethodWrapper;
import com.google.ads.internal.d;
import com.google.ads.internal.e;
import com.google.ads.util.b;
import java.util.HashMap;

public class z implements n {
    private StaticMethodWrapper a;

    public z() {
        this(new StaticMethodWrapper());
    }

    public z(StaticMethodWrapper staticMethodWrapper) {
        this.a = staticMethodWrapper;
    }

    public void a(d dVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("a");
        if (str == null) {
            b.a("Could not get the action parameter for open GMSG.");
        } else if (str.equals("webapp")) {
            this.a.a(dVar, new e("webapp", hashMap));
        } else if (str.equals("expand")) {
            this.a.a(dVar, new e("expand", hashMap));
        } else {
            this.a.a(dVar, new e("intent", hashMap));
        }
    }
}