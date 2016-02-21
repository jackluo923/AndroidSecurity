package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;

class h {
    public static final String a = "4.0.0";
    public static final boolean b = false;
    public static final boolean c = true;
    static final String d = "com.mixpanel.android.mpmetrics.ReferralInfo";
    private static final String p = "MixpanelAPI.MPConfig";
    private final int e;
    private final int f;
    private final int g;
    private final boolean h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final boolean o;

    public h(Bundle bundle) {
        this.e = bundle.getInt("com.mixpanel.android.MPConfig.BulkUploadLimit", ApiEventType.API_MRAID_PLAY_VIDEO);
        this.f = bundle.getInt("com.mixpanel.android.MPConfig.FlushInterval", 60000);
        this.g = bundle.getInt("com.mixpanel.android.MPConfig.DataExpiration", 172800000);
        this.h = bundle.getBoolean("com.mixpanel.android.MPConfig.DisableFallback", b);
        this.o = bundle.getBoolean("com.mixpanel.android.MPConfig.AutoCheckForSurveys", b);
        String string = bundle.getString("com.mixpanel.android.MPConfig.EventsEndpoint");
        if (string == null) {
            string = "https://api.mixpanel.com/track?ip=1";
        }
        this.i = string;
        string = bundle.getString("com.mixpanel.android.MPConfig.EventsFallbackEndpoint");
        if (string == null) {
            string = "http://api.mixpanel.com/track?ip=1";
        }
        this.j = string;
        string = bundle.getString("com.mixpanel.android.MPConfig.PeopleEndpoint");
        if (string == null) {
            string = "https://api.mixpanel.com/engage";
        }
        this.k = string;
        string = bundle.getString("com.mixpanel.android.MPConfig.PeopleFallbackEndpoint");
        if (string == null) {
            string = "http://api.mixpanel.com/engage";
        }
        this.l = string;
        string = bundle.getString("com.mixpanel.android.MPConfig.DecideEndpoint");
        if (string == null) {
            string = "https://decide.mixpanel.com/decide";
        }
        this.m = string;
        string = bundle.getString("com.mixpanel.android.MPConfig.DecideFallbackEndpoint");
        if (string == null) {
            string = "http://decide.mixpanel.com/decide";
        }
        this.n = string;
    }

    public static h a(Context context) {
        String packageName = context.getPackageName();
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(packageName, Cast.MAX_NAMESPACE_LENGTH).metaData;
            if (bundle == null) {
                bundle = new Bundle();
            }
            return new h(bundle);
        } catch (NameNotFoundException e) {
            throw new RuntimeException("Can't configure Mixpanel with package name " + packageName, e);
        }
    }

    public int a() {
        return this.e;
    }

    public int b() {
        return this.f;
    }

    public int c() {
        return this.g;
    }

    public boolean d() {
        return this.h;
    }

    public String e() {
        return this.i;
    }

    public String f() {
        return this.k;
    }

    public String g() {
        return this.m;
    }

    public String h_() {
        return this.j;
    }

    public String i() {
        return this.l;
    }

    public String j() {
        return this.n;
    }

    public boolean k() {
        return this.o;
    }
}