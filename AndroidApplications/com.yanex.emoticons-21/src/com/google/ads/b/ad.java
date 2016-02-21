package com.google.ads.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.ai;
import com.google.ads.aj;
import com.google.ads.bq;
import com.google.ads.e;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import com.google.ads.util.y;
import java.util.HashMap;
import java.util.Map;

public class ad extends WebViewClient {
    private static final h c;
    protected w a;
    protected boolean b;
    private final Map d;
    private final boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;

    static {
        c = (h) h.a.a();
    }

    public ad(w wVar, Map map, boolean z, boolean z2) {
        this.a = wVar;
        this.d = map;
        this.e = z;
        this.g = z2;
        this.b = false;
        this.h = false;
        this.i = false;
    }

    public static ad a(w wVar, Map map, boolean z, boolean z2) {
        return AdUtil.a >= 11 ? new y(wVar, map, z, z2) : new ad(wVar, map, z, z2);
    }

    public final void a() {
        this.b = true;
    }

    public final void b() {
        this.g = false;
    }

    public final void c() {
        this.h = true;
    }

    public final void d() {
        this.i = true;
    }

    public final boolean e() {
        return this.f;
    }

    public void onPageFinished(WebView webView, String str) {
        this.f = false;
        if (this.h) {
            n i = this.a.i();
            if (i != null) {
                i.a();
            } else {
                g.a("adLoader was null while trying to setFinishedLoadingHtml().");
            }
            this.h = false;
        }
        if (this.i) {
            h hVar = c;
            h.a(webView);
            this.i = false;
        }
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.f = true;
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        this.f = false;
        n i2 = this.a.i();
        if (i2 != null) {
            i2.a(e.c);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            g.a(new StringBuilder("shouldOverrideUrlLoading(\"").append(str).append("\")").toString());
            Uri parse = Uri.parse(str);
            h hVar = c;
            if (h.a(parse)) {
                hVar = c;
                h.a(this.a, this.d, parse, webView);
                return true;
            } else if (this.g) {
                if (AdUtil.a(parse)) {
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                HashMap hashMap = new HashMap();
                hashMap.put("u", str);
                AdActivity.a(this.a, new x("intent", hashMap));
                return true;
            } else if (this.e) {
                Uri a;
                HashMap hashMap2;
                try {
                    bq g = this.a.g();
                    Context context = (Context) g.f.a();
                    ai aiVar = (ai) g.s.a();
                    if (aiVar != null && aiVar.a(parse)) {
                        a = aiVar.a(parse, context);
                        hashMap2 = new HashMap();
                        hashMap2.put("u", a.toString());
                        AdActivity.a(this.a, new x("intent", hashMap2));
                        return true;
                    }
                } catch (aj e) {
                    g.e(new StringBuilder("Unable to append parameter to URL: ").append(str).toString());
                }
                a = parse;
                hashMap2 = new HashMap();
                hashMap2.put("u", a.toString());
                AdActivity.a(this.a, new x("intent", hashMap2));
                return true;
            } else {
                g.e(new StringBuilder("URL is not a GMSG and can't handle URL: ").append(str).toString());
                return true;
            }
        } catch (Throwable th) {
            g.d("An unknown error occurred in shouldOverrideUrlLoading.", th);
        }
    }
}