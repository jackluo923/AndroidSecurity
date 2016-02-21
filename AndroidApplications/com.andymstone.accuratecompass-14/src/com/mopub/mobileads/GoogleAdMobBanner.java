package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.util.Log;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener;
import java.util.Map;

class GoogleAdMobBanner extends CustomEventBanner implements AdListener {
    private AdView a;
    private CustomEventBannerListener b;

    GoogleAdMobBanner() {
    }

    private Location a(Map map) {
        Object obj = map.get("location");
        return obj instanceof Location ? (Location) obj : null;
    }

    private AdSize a(int i, int i2) {
        if (i <= AdSize.b.a() && i2 <= AdSize.b.b()) {
            return AdSize.b;
        }
        if (i <= AdSize.c.a() && i2 <= AdSize.c.b()) {
            return AdSize.c;
        }
        if (i <= AdSize.d.a() && i2 <= AdSize.d.b()) {
            return AdSize.d;
        }
        return (i > AdSize.e.a() || i2 > AdSize.e.b()) ? null : AdSize.e;
    }

    private boolean b(Map map) {
        try {
            Integer.parseInt((String) map.get("adWidth"));
            Integer.parseInt((String) map.get("adHeight"));
            return map.containsKey("adUnitID");
        } catch (NumberFormatException e) {
            return false;
        }
    }

    protected void a() {
        this.a.setAdListener(null);
        this.a.a();
    }

    protected void a(Context context, CustomEventBannerListener customEventBannerListener, Map map, Map map2) {
        this.b = customEventBannerListener;
        if (!(context instanceof Activity)) {
            this.b.a(MoPubErrorCode.f);
        } else if (b(map2)) {
            String str = (String) map2.get("adUnitID");
            int parseInt = Integer.parseInt((String) map2.get("adWidth"));
            int parseInt2 = Integer.parseInt((String) map2.get("adHeight"));
            AdSize a = a(parseInt, parseInt2);
            if (a == null) {
                Log.d("MoPub", new StringBuilder("Unsupported AdMob ad size: ").append(parseInt).append("x").append(parseInt2).toString());
                this.b.a(MoPubErrorCode.f);
            } else {
                this.a = new AdView((Activity) context, a, str);
                this.a.setAdListener(this);
                AdRequest adRequest = new AdRequest();
                Location a2 = a(map);
                if (a2 != null) {
                    adRequest.a(a2);
                }
                this.a.a(adRequest);
            }
        } else {
            this.b.a(MoPubErrorCode.f);
        }
    }

    public void a(Ad ad) {
        Log.d("MoPub", "Google AdMob banner ad loaded successfully. Showing ad...");
        this.b.a(this.a);
    }

    public void a(Ad ad, ErrorCode errorCode) {
        Log.d("MoPub", "Google AdMob banner ad failed to load.");
        this.b.a(MoPubErrorCode.h);
    }

    public void b(Ad ad) {
        Log.d("MoPub", "Google AdMob banner ad clicked.");
        this.b.c();
    }

    public void c(Ad ad) {
    }

    public void d(Ad ad) {
    }
}