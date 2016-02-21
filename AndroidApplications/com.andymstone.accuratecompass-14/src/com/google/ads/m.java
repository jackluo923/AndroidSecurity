package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.google.ads.internal.h;
import com.google.ads.util.i;
import com.google.ads.util.i.b;
import com.google.ads.util.i.c;
import com.google.ads.util.i.d;

public class m extends i {
    public final b a;
    public final c b;
    public final c c;
    public final b d;
    public final d e;
    public final b f;
    public final b g;
    public final b h;
    public final b i;
    public final b j;
    public final b k;
    public final c l;
    public final c m;
    public final c n;

    public m(l lVar, Ad ad, AdView adView, InterstitialAd interstitialAd, String str, Activity activity, Context context, ViewGroup viewGroup, h hVar) {
        this.b = new c("currentAd", null);
        this.c = new c("nextAd", null);
        this.m = new c("adListener");
        this.n = new c("appEventListener");
        this.a = new b("appState", lVar);
        this.h = new b("ad", ad);
        this.i = new b("adView", adView);
        this.k = new b("adType", hVar);
        this.d = new b("adUnitId", str);
        this.e = new d("activity", activity);
        this.j = new b("interstitialAd", interstitialAd);
        this.g = new b("bannerContainer", viewGroup);
        this.f = new b("applicationContext", context);
        this.l = new c("adSizes", null);
    }

    public boolean a() {
        return !b();
    }

    public boolean b() {
        return ((h) this.k.a()).a();
    }
}