package com.google.ads;

import android.app.Activity;
import com.google.ads.internal.d;

public class InterstitialAd implements Ad {
    private d a;
    private m b;

    public InterstitialAd(Activity activity, String adUnitId) {
        this(activity, adUnitId, false);
    }

    public InterstitialAd(Activity activity, String adUnitId, boolean shortTimeout) {
        this.b = m.a(this, adUnitId, activity, null, null);
        this.a = new d(this.b, shortTimeout);
    }

    public boolean isReady() {
        return this.a.q();
    }

    public void loadAd(AdRequest adRequest) {
        this.a.a(adRequest);
    }

    public void setAdListener(AdListener adListener) {
        this.b.j.a(adListener);
    }

    public void show() {
        this.a.y();
    }

    public void stopLoading() {
        this.a.z();
    }
}