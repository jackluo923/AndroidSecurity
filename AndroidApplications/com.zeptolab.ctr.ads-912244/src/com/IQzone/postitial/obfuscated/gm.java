package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.a.a;
import com.admarvel.android.ads.AdMarvelView;

final class gm implements Runnable {
    private /* synthetic */ a a;
    private /* synthetic */ AdMarvelView b;
    private /* synthetic */ String c;

    gm(gl glVar, a aVar, AdMarvelView adMarvelView, String str) {
        this.a = aVar;
        this.b = adMarvelView;
        this.c = str;
    }

    public final void run() {
        gj.a();
        this.a.a(this.b, this.c);
    }
}