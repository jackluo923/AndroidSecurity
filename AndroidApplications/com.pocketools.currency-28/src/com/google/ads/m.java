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
    public final b<l> a;
    public final b<String> b;
    public final d<Activity> c;
    public final b<Context> d;
    public final b<ViewGroup> e;
    public final b<Ad> f;
    public final b<AdView> g;
    public final b<InterstitialAd> h;
    public final b<h> i;
    public final c<AdListener> j;

    public m(l lVar, Ad ad, AdView adView, InterstitialAd interstitialAd, String str, Activity activity, Context context, ViewGroup viewGroup, h hVar) {
        this.j = new c("adListener");
        this.a = new b("appState", lVar);
        this.f = new b("ad", ad);
        this.g = new b("adView", adView);
        this.i = new b("adType", hVar);
        this.b = new b("adUnitId", str);
        this.c = new d("activity", activity);
        this.h = new b("interstitialAd", interstitialAd);
        this.e = new b("bannerContainer", viewGroup);
        this.d = new b("applicationContext", context);
    }

    public static m a(Ad ad, String str, Activity activity, ViewGroup viewGroup, AdSize adSize) {
        AdView adView;
        InterstitialAd interstitialAd = null;
        l a = l.a();
        adView = ad instanceof AdView ? (AdView) ad : null;
        if (ad instanceof InterstitialAd) {
            interstitialAd = (InterstitialAd) ad;
        }
        return new m(a, ad, adView, interstitialAd, str.trim(), activity, activity.getApplicationContext(), viewGroup, adSize == null ? h.a : h.a(adSize, activity.getApplicationContext()));
    }

    public boolean a() {
        return !b();
    }

    public boolean b() {
        return ((h) this.i.a()).a();
    }
}