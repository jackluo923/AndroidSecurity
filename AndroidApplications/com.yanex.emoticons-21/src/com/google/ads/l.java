package com.google.ads;

import android.app.Activity;
import android.webkit.WebView;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;

public final class l implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        if (((Activity) wVar.g().c.a()) == null) {
            g.e("Activity was null while responding to touch gmsg.");
        } else {
            String str = (String) hashMap.get("ty");
            String str2 = (String) hashMap.get("td");
            try {
                int parseInt = Integer.parseInt((String) hashMap.get("tx"));
                int parseInt2 = Integer.parseInt(str);
                int parseInt3 = Integer.parseInt(str2);
                ag agVar = (ag) wVar.g().r.a();
                if (agVar != null) {
                    agVar.a(parseInt, parseInt2, parseInt3);
                }
            } catch (NumberFormatException e) {
                g.e("Could not parse touch parameters from gmsg.");
            }
        }
    }
}