package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.a.a;
import com.admarvel.android.ads.AdMarvelView;

final class jy implements Runnable {
    private /* synthetic */ a a;
    private /* synthetic */ AdMarvelView b;
    private /* synthetic */ String c;

    jy(jx jxVar, a aVar, AdMarvelView adMarvelView, String str) {
        this.a = aVar;
        this.b = adMarvelView;
        this.c = str;
    }

    public final void run() {
        jk.l();
        this.a.a(this.b, this.c);
    }
}