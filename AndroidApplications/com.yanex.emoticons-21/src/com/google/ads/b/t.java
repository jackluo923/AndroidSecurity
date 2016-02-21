package com.google.ads.b;

import android.webkit.WebView;
import com.google.ads.bq;

final class t implements Runnable {
    final /* synthetic */ n a;
    private final String b;
    private final String c;
    private final WebView d;

    public t(n nVar, WebView webView, String str, String str2) {
        this.a = nVar;
        this.d = webView;
        this.b = str;
        this.c = str2;
    }

    public final void run() {
        n.b(this.a).c.a(Boolean.valueOf(n.a(this.a)));
        ((w) ((bq) n.b(this.a).a.a()).b.a()).j().e(n.a(this.a));
        if (((bq) n.b(this.a).a.a()).e.a() != null) {
            ((a) ((bq) n.b(this.a).a.a()).e.a()).a(!n.a(this.a));
        }
        if (this.c != null) {
            this.d.loadDataWithBaseURL(this.b, this.c, "text/html", "utf-8", null);
        } else {
            this.d.loadUrl(this.b);
        }
    }
}