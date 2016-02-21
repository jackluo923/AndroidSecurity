package com.google.ads;

import com.google.ads.util.i;
import com.google.ads.util.i.b;
import com.google.ads.util.i.c;

public class l extends i {
    private static final l b;
    public final b a;

    public final class a extends i {
        public final c a;
        public final c b;
        public final c c;
        public final c d;
        public final c e;
        public final c f;
        public final c g;
        public final c h;
        public final c i;
        public final c j;
        public final c k;
        public final c l;

        public a() {
            this.a = new c(this, "minHwAccelerationVersionBanner", Integer.valueOf(17));
            this.b = new c(this, "minHwAccelerationVersionOverlay", Integer.valueOf(14));
            this.c = new c(this, "mraidBannerPath", "http://media.admob.com/mraid/v1/mraid_app_banner.js");
            this.d = new c(this, "mraidExpandedBannerPath", "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js");
            this.e = new c(this, "mraidInterstitialPath", "http://media.admob.com/mraid/v1/mraid_app_interstitial.js");
            this.f = new c(this, "appCacheMaxSize", Long.valueOf(0));
            this.g = new c(this, "appCacheMaxSizePaddingInBytes", Long.valueOf(131072));
            this.h = new c(this, "maxTotalAppCacheQuotaInBytes", Long.valueOf(5242880));
            this.i = new c(this, "maxTotalDatabaseQuotaInBytes", Long.valueOf(5242880));
            this.j = new c(this, "maxDatabaseQuotaPerOriginInBytes", Long.valueOf(1048576));
            this.k = new c(this, "databaseQuotaIncreaseStepInBytes", Long.valueOf(131072));
            this.l = new c(this, "isInitialized", Boolean.valueOf(false));
        }
    }

    static {
        b = new l();
    }

    private l() {
        this.a = new b(this, "constants", new a());
    }

    public static l a() {
        return b;
    }
}