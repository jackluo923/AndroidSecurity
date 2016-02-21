package com.google.ads;

import com.google.ads.util.i;
import com.google.ads.util.i.b;
import com.google.ads.util.i.c;

public class l extends i {
    private static final l b;
    public final b<a> a;

    public static final class a extends i {
        public final c<Integer> a;
        public final c<Integer> b;
        public final c<String> c;
        public final c<String> d;
        public final c<String> e;
        public final c<Long> f;
        public final c<Long> g;
        public final c<Long> h;
        public final c<Long> i;
        public final c<Long> j;
        public final c<Long> k;
        public final c<Boolean> l;

        public a() {
            this.a = new c("minHwAccelerationVersionBanner", Integer.valueOf(16));
            this.b = new c("minHwAccelerationVersionOverlay", Integer.valueOf(14));
            this.c = new c("mraidBannerPath", "http://media.admob.com/mraid/v1/mraid_app_banner.js");
            this.d = new c("mraidExpandedBannerPath", "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js");
            this.e = new c("mraidInterstitialPath", "http://media.admob.com/mraid/v1/mraid_app_interstitial.js");
            this.f = new c("appCacheMaxSize", Long.valueOf(0));
            this.g = new c("appCacheMaxSizePaddingInBytes", Long.valueOf(131072));
            this.h = new c("maxTotalAppCacheQuotaInBytes", Long.valueOf(5242880));
            this.i = new c("maxTotalDatabaseQuotaInBytes", Long.valueOf(5242880));
            this.j = new c("maxDatabaseQuotaPerOriginInBytes", Long.valueOf(1048576));
            this.k = new c("databaseQuotaIncreaseStepInBytes", Long.valueOf(131072));
            this.l = new c("isInitialized", Boolean.valueOf(false));
        }
    }

    static {
        b = new l();
    }

    private l() {
        this.a = new b("constants", new a());
    }

    public static l a() {
        return b;
    }
}