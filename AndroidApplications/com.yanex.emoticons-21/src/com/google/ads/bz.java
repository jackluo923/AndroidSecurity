package com.google.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.b.n;
import com.google.ads.b.u;
import com.google.ads.b.w;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Locale;

public final class bz implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        u uVar;
        String str = (String) hashMap.get("url");
        String str2 = (String) hashMap.get("type");
        String str3 = (String) hashMap.get("afma_notify_dt");
        String str4 = (String) hashMap.get("activation_overlay_url");
        String str5 = (String) hashMap.get("check_packages");
        boolean equals = "1".equals(hashMap.get("drt_include"));
        String str6 = (String) hashMap.get("request_scenario");
        boolean equals2 = "1".equals(hashMap.get("use_webview_loadurl"));
        if (u.d.e.equals(str6)) {
            uVar = u.d;
        } else if (u.c.e.equals(str6)) {
            uVar = u.c;
        } else if (u.a.e.equals(str6)) {
            uVar = u.a;
        } else {
            uVar = u.b;
        }
        g.c(new StringBuilder("Received ad url: <url: \"").append(str).append("\" type: \"").append(str2).append("\" afmaNotifyDt: \"").append(str3).append("\" activationOverlayUrl: \"").append(str4).append("\" useWebViewLoadUrl: \"").append(equals2).append("\">").toString());
        if (!(TextUtils.isEmpty(str5) || TextUtils.isEmpty(str))) {
            BigInteger bigInteger = new BigInteger(new byte[1]);
            String[] split = str5.split(",");
            int i = 0;
            BigInteger bigInteger2 = bigInteger;
            while (i < split.length) {
                if (AdUtil.a((Context) wVar.g().c.a(), split[i])) {
                    bigInteger2 = bigInteger2.setBit(i);
                }
                i++;
            }
            str2 = String.format(Locale.US, "%X", new Object[]{bigInteger2});
            str = str.replaceAll("%40installed_markets%40", str2);
            bo.a().a.a(str2);
            g.c(new StringBuilder("Ad url modified to ").append(str).toString());
        }
        n i2 = wVar.i();
        if (i2 != null) {
            i2.c(equals);
            i2.a(uVar);
            i2.d(equals2);
            i2.e(str4);
            i2.d(str);
        }
    }
}