package com.google.ads.internal;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.n;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g.b;
import java.util.HashMap;
import java.util.Map;

public class i extends WebViewClient {
    private static final a c;
    protected d a;
    protected boolean b;
    private Map<String, n> d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;

    static {
        c = (a) a.a.b();
    }

    protected i(d dVar, Map<String, n> map, boolean z, boolean z2) {
        this.a = dVar;
        this.d = map;
        this.e = z;
        this.f = z2;
        this.b = false;
        this.g = false;
        this.h = false;
    }

    public static i a(d dVar, Map<String, n> map, boolean z, boolean z2) {
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

    public void onPageFinished(WebView view, String url) {
        if (this.g) {
            c i = this.a.i();
            if (i != null) {
                i.c();
            } else {
                com.google.ads.util.b.a("adLoader was null while trying to setFinishedLoadingHtml().");
            }
            this.g = false;
        }
        if (this.h) {
            c.a(view);
            this.h = false;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String url) {
        com.google.ads.util.b.a("shouldOverrideUrlLoading(\"" + url + "\")");
        Uri parse = Uri.parse(url);
        HashMap b = AdUtil.b(parse);
        if (b != null) {
            String str = (String) b.get("ai");
            if (str != null) {
                this.a.l().a(str);
            }
        }
        if (c.a(parse)) {
            c.a(this.a, this.d, parse, webView);
            return true;
        } else if (this.f) {
            if (AdUtil.a(parse)) {
                return super.shouldOverrideUrlLoading(webView, url);
            }
            b = new HashMap();
            b.put(AdActivity.URL_PARAM, url);
            AdActivity.launchAdActivity(this.a, new e("intent", b));
            return true;
        } else if (this.e) {
            b = new HashMap();
            b.put(AdActivity.URL_PARAM, parse.toString());
            AdActivity.launchAdActivity(this.a, new e("intent", b));
            return true;
        } else {
            com.google.ads.util.b.e("URL is not a GMSG and can't handle URL: " + url);
            return true;
        }
    }
}