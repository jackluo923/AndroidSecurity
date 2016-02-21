package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup.LayoutParams;

final class pr implements Runnable {
    private /* synthetic */ mx a;
    private /* synthetic */ np b;

    pr(np npVar, mx mxVar) {
        this.b = npVar;
        this.a = mxVar;
    }

    public final void run() {
        this.b.f.removeAllViews();
        this.b.f.addView(this.b.d.d(), new LayoutParams(-1, -1));
        this.b.b.a(this.a);
    }
}