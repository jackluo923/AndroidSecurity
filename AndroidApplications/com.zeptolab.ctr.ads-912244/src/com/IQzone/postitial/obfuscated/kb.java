package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelView;

final class kb implements mx {
    final /* synthetic */ AdMarvelView a;
    final /* synthetic */ AdMarvelAd b;
    final /* synthetic */ RelativeLayout c;
    final /* synthetic */ LayoutParams d;
    final /* synthetic */ ViewGroup e;
    final /* synthetic */ jk f;
    private /* synthetic */ pw g;
    private /* synthetic */ kn h;

    kb(jk jkVar, pw pwVar, kn knVar, AdMarvelView adMarvelView, AdMarvelAd adMarvelAd, RelativeLayout relativeLayout, LayoutParams layoutParams, ViewGroup viewGroup) {
        this.f = jkVar;
        this.g = pwVar;
        this.h = knVar;
        this.a = adMarvelView;
        this.b = adMarvelAd;
        this.c = relativeLayout;
        this.d = layoutParams;
        this.e = viewGroup;
    }

    private Void a() {
        try {
            this.g.a(Long.valueOf(System.currentTimeMillis()));
        } catch (om e) {
            jk.l();
        }
        if (this.h.equals(kn.a)) {
            this.f.b(true);
        } else if (this.h.equals(kn.b)) {
            this.f.a(true);
        } else {
            this.f.b(false);
        }
        this.a.setOnKeyListener(new kc(this));
        this.f.h().postDelayed(new kd(this), 200);
        return null;
    }

    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        return a();
    }
}