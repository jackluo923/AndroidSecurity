package com.google.ads;

import android.app.Activity;
import com.google.ads.internal.d;

public class InterstitialAd implements Ad {
    private d a;

    public InterstitialAd(Activity activity, String str) {
        this(activity, str, false);
    }

    public InterstitialAd(Activity activity, String str, boolean z) {
        this.a = new d(this, activity, null, str, null, z);
    }

    public void a() {
        this.a.y();
    }

    public void a(AdListener adListener) {
        this.a.h().m.a(adListener);
    }

    public void a(AdRequest adRequest) {
        this.a.a(adRequest);
    }

    public void b() {
        this.a.z();
    }
}