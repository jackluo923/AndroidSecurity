package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.google.ads.b.a;
import com.google.ads.b.w;
import com.google.ads.util.ab;
import com.google.ads.util.ac;
import com.google.ads.util.ad;
import com.google.ads.util.z;

public final class bq extends z {
    public final ab a;
    public final ab b;
    public final ad c;
    public final ab d;
    public final ab e;
    public final ab f;
    public final ab g;
    public final ab h;
    public final ab i;
    public final ab j;
    public final ab k;
    public final ac l;
    public final ac m;
    public final ac n;
    public final ac o;
    public final ac p;
    public final ac q;
    public final ac r;
    public final ac s;
    public final ac t;

    public bq(bo boVar, a aVar, AdView adView, i iVar, String str, Activity activity, Context context, ViewGroup viewGroup, com.google.ads.b.ac acVar, w wVar) {
        Object obj = null;
        this.l = new ac(this, "currentAd", null);
        this.m = new ac(this, "nextAd", null);
        this.o = new ac(this, "adListener");
        this.p = new ac(this, "appEventListener");
        this.q = new ac(this, "swipeableEventListener");
        this.r = new ac(this, "spamSignals", null);
        this.s = new ac(this, "spamSignalsUtil", null);
        this.t = new ac(this, "usesManualImpressions", Boolean.valueOf(false));
        this.d = new ab(this, "appState", boVar);
        this.a = new ab(this, "ad", aVar);
        this.j = new ab(this, "adView", adView);
        this.g = new ab(this, "adType", acVar);
        this.h = new ab(this, "adUnitId", str);
        this.c = new ad(this, "activity", activity);
        this.k = new ab(this, "interstitialAd", iVar);
        this.i = new ab(this, "bannerContainer", viewGroup);
        this.f = new ab(this, "applicationContext", context);
        this.n = new ac(this, "adSizes", null);
        this.b = new ab(this, "adManager", wVar);
        if (acVar != null && acVar.b()) {
            obj = new a(this);
        }
        this.e = new ab(this, "activationOverlay", obj);
    }

    public final boolean a() {
        return !b();
    }

    public final boolean b() {
        return ((com.google.ads.b.ac) this.g.a()).a();
    }
}