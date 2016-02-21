package com.google.ads.b;

import android.view.ViewGroup;
import android.webkit.WebView;
import com.actionbarsherlock.view.MenuItem;
import com.google.ads.e;

final class r implements Runnable {
    private final w a;
    private final WebView b;
    private final y c;
    private final e d;
    private final boolean e;

    public r(w wVar, WebView webView, y yVar, e eVar, boolean z) {
        this.a = wVar;
        this.b = webView;
        this.c = yVar;
        this.d = eVar;
        this.e = z;
    }

    public final void run() {
        if (this.b != null) {
            this.b.stopLoading();
            this.b.destroy();
        }
        if (this.c != null) {
            this.c.a();
        }
        if (this.e) {
            this.a.j().stopLoading();
            if (this.a.g().i.a() != null) {
                ((ViewGroup) this.a.g().i.a()).setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
        }
        this.a.a(this.d);
    }
}