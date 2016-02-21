package com.google.ads;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.b.ab;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;
import java.util.Locale;

public final class bu implements br {
    public final void a(w wVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("u");
        if (str == null) {
            g.e("Could not get URL from click gmsg.");
        } else {
            Uri parse;
            Uri a;
            ab l = wVar.l();
            if (l != null) {
                parse = Uri.parse(str);
                String host = parse.getHost();
                if (host != null && host.toLowerCase(Locale.US).endsWith(".admob.com")) {
                    host = null;
                    String path = parse.getPath();
                    if (path != null) {
                        String[] split = path.split("/");
                        if (split.length >= 4) {
                            host = split[2] + "/" + split[3];
                        }
                    }
                    l.a(host);
                }
            }
            bq g = wVar.g();
            Context context = (Context) g.f.a();
            parse = Uri.parse(str);
            try {
                ai aiVar = (ai) g.s.a();
                if (aiVar != null && aiVar.a(parse)) {
                    a = aiVar.a(parse, context);
                    new Thread(new n(a.toString(), context)).start();
                }
            } catch (aj e) {
                g.e(new StringBuilder("Unable to append parameter to URL: ").append(str).toString());
            }
            a = parse;
            new Thread(new n(a.toString(), context)).start();
        }
    }
}