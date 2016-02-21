package com.google.ads.internal;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g.b;
import java.util.HashMap;
import java.util.Map;

public class i extends WebViewClient {
    private static final a c;
    protected d a;
    protected boolean b;
    private final Map d;
    private final boolean e;
    private boolean f;
    private boolean g;
    private boolean h;

    static {
        c = (a) a.a.b();
    }

    public i(d dVar, Map map, boolean z, boolean z2) {
        this.a = dVar;
        this.d = map;
        this.e = z;
        this.f = z2;
        this.b = false;
        this.g = false;
        this.h = false;
    }

    public static i a(d dVar, Map map, boolean z, boolean z2) {
        return AdUtil.a >= 11 ? new b(dVar, map, z, z2) : new i(dVar, map, z, z2);
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void b(boolean z) {
        this.f = z;
    }

    public void c(boolean z) {
        this.g = z;
    }

    public void d(boolean z) {
        this.h = z;
    }

    public void onPageFinished(WebView webView, String str) {
        if (this.g) {
            c j = this.a.j();
            if (j != null) {
                j.c();
            } else {
                com.google.ads.util.b.a("adLoader was null while trying to setFinishedLoadingHtml().");
            }
            this.g = false;
        }
        if (this.h) {
            c.a(webView);
            this.h = false;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        boolean z = true;
        try {
            com.google.ads.util.b.a("shouldOverrideUrlLoading(\"" + str + "\")");
            Uri parse = Uri.parse(str);
            if (c.a(parse)) {
                c.a(this.a, this.d, parse, webView);
                return z;
            } else if (this.f) {
                if (AdUtil.a(parse)) {
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                HashMap hashMap = new HashMap();
                hashMap.put("u", str);
                AdActivity.a(this.a, new e("intent", hashMap));
                return z;
            } else if (this.e) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("u", parse.toString());
                AdActivity.a(this.a, new e("intent", hashMap2));
                return z;
            } else {
                com.google.ads.util.b.e("URL is not a GMSG and can't handle URL: " + str);
                return z;
            }
        } catch (Throwable th) {
            com.google.ads.util.b.b("An unknown error occurred in shouldOverrideUrlLoading.", th);
            return z;
        }
    }
}