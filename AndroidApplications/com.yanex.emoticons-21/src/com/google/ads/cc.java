package com.google.ads;

import android.webkit.WebView;
import com.google.ads.b.w;
import com.google.ads.b.x;
import com.google.ads.util.g;
import java.util.HashMap;

public final class cc implements br {
    private b a;

    public cc() {
        this(new b());
    }

    private cc(b bVar) {
        this.a = bVar;
    }

    public final void a(w wVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("a");
        if (str == null) {
            g.a("Could not get the action parameter for open GMSG.");
        } else if (str.equals("webapp")) {
            bVar = this.a;
            b.a(wVar, new x("webapp", hashMap));
        } else if (str.equals("expand")) {
            bVar = this.a;
            b.a(wVar, new x("expand", hashMap));
        } else {
            bVar = this.a;
            b.a(wVar, new x("intent", hashMap));
        }
    }
}