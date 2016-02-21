package com.google.ads.b;

import android.webkit.WebView;
import com.google.ads.bq;
import com.google.ads.g;
import java.util.LinkedList;

final class v implements Runnable {
    final /* synthetic */ n a;
    private final w b;
    private final WebView c;
    private final LinkedList d;
    private final int e;
    private final boolean f;
    private final String g;
    private final g h;

    public v(n nVar, w wVar, WebView webView, LinkedList linkedList, int i, boolean z, String str, g gVar) {
        this.a = nVar;
        this.b = wVar;
        this.c = webView;
        this.d = linkedList;
        this.e = i;
        this.f = z;
        this.g = str;
        this.h = gVar;
    }

    public final void run() {
        if (this.c != null) {
            this.c.stopLoading();
            this.c.destroy();
        }
        this.b.a(this.d);
        this.b.a(this.e);
        this.b.a(this.f);
        this.b.a(this.g);
        if (this.h != null) {
            ((ac) ((bq) n.b(this.a).a.a()).g.a()).b(this.h);
            this.b.j().a(this.h);
        }
        this.b.w();
    }
}