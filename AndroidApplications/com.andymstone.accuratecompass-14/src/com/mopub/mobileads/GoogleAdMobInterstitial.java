package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.util.Log;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.InterstitialAd;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;
import java.util.Map;

class GoogleAdMobInterstitial extends CustomEventInterstitial implements AdListener {
    private InterstitialAd a;
    private boolean b;
    private CustomEventInterstitialListener c;

    GoogleAdMobInterstitial() {
    }

    private Location a(Map map) {
        Object obj = map.get("location");
        return obj instanceof Location ? (Location) obj : null;
    }

    private boolean b(Map map) {
        return map.containsKey("adUnitID");
    }

    protected void a() {
        if (this.a != null) {
            this.a.a(null);
        }
    }

    protected void a(Context context, CustomEventInterstitialListener customEventInterstitialListener, Map map, Map map2) {
        this.c = customEventInterstitialListener;
        if (!(context instanceof Activity)) {
            this.c.a(MoPubErrorCode.f);
        } else if (b(map2)) {
            this.a = new InterstitialAd((Activity) context, (String) map2.get("adUnitID"));
            this.a.a(this);
            AdRequest adRequest = new AdRequest();
            Location a = a(map);
            if (a != null) {
                adRequest.a(a);
            }
            this.a.a(adRequest);
        } else {
            this.c.a(MoPubErrorCode.f);
        }
    }

    public void a(Ad ad) {
        Log.d("MoPub", "Google AdMob interstitial ad loaded successfully.");
        this.c.a();
    }

    public void a(Ad ad, ErrorCode errorCode) {
        Log.d("MoPub", "Google AdMob interstitial ad failed to load.");
        this.c.a(MoPubErrorCode.h);
    }

    public void b(Ad ad) {
        Log.d("MoPub", "Showing Google AdMob interstitial ad.");
        this.c.b();
    }

    public void c(Ad ad) {
        Log.d("MoPub", "Google AdMob interstitial ad dismissed.");
        this.c.d();
    }

    public void d(Ad ad) {
        if (!this.b) {
            Log.d("MoPub", "Google AdMob interstitial ad clicked.");
            this.b = true;
            this.c.c();
        }
    }
}