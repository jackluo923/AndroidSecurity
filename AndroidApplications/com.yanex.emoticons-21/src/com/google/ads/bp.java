package com.google.ads;

import com.google.ads.util.ac;
import com.google.ads.util.z;

public final class bp extends z {
    public final ac a;
    public final ac b;
    public final ac c;
    public final ac d;
    public final ac e;
    public final ac f;
    public final ac g;
    public final ac h;
    public final ac i;
    public final ac j;
    public final ac k;
    public final ac l;
    public final ac m;
    public final ac n;
    public final ac o;

    public bp() {
        this.a = new ac(this, "ASDomains", null);
        this.b = new ac(this, "minHwAccelerationVersionBanner", Integer.valueOf(18));
        this.c = new ac(this, "minHwAccelerationVersionOverlay", Integer.valueOf(18));
        this.d = new ac(this, "minHwAccelerationVersionOverlay", Integer.valueOf(14));
        this.e = new ac(this, "mraidBannerPath", "http://media.admob.com/mraid/v1/mraid_app_banner.js");
        this.f = new ac(this, "mraidExpandedBannerPath", "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js");
        this.g = new ac(this, "mraidInterstitialPath", "http://media.admob.com/mraid/v1/mraid_app_interstitial.js");
        this.h = new ac(this, "badAdReportPath", "https://badad.googleplex.com/s/reportAd");
        this.i = new ac(this, "appCacheMaxSize", Long.valueOf(0));
        this.j = new ac(this, "appCacheMaxSizePaddingInBytes", Long.valueOf(131072));
        this.k = new ac(this, "maxTotalAppCacheQuotaInBytes", Long.valueOf(5242880));
        this.l = new ac(this, "maxTotalDatabaseQuotaInBytes", Long.valueOf(5242880));
        this.m = new ac(this, "maxDatabaseQuotaPerOriginInBytes", Long.valueOf(1048576));
        this.n = new ac(this, "databaseQuotaIncreaseStepInBytes", Long.valueOf(131072));
        this.o = new ac(this, "isInitialized", Boolean.valueOf(false));
    }
}