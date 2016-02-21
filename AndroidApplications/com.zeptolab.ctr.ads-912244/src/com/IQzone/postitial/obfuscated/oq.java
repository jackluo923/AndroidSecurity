package com.IQzone.postitial.obfuscated;

import android.view.View;

final class oq implements Runnable {
    private /* synthetic */ np a;

    oq(np npVar) {
        this.a = npVar;
    }

    public final void run() {
        ((c) this.a.e.b()).a();
        this.a.f.removeAllViews();
        this.a.b.a();
        this.a.d.f(this.a.k);
        View rootView = this.a.f.getRootView();
        if (rootView != null) {
            rootView = rootView.findViewById(bt.c);
            if (rootView != null) {
                rootView.setVisibility(0);
            }
        }
    }
}