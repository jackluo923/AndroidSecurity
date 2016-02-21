package com.flurry.sdk;

import android.location.Criteria;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class dm {
    public static final Integer a;
    public static final Integer b;
    public static final Integer c;
    public static final Integer d;
    public static final String e;
    public static final Boolean f;
    public static final Boolean g;
    public static final String h;
    public static final Boolean i;
    public static final Criteria j;
    public static final Long k;
    public static final Boolean l;
    public static final Long m;
    public static final Byte n;
    private static dn o;

    static {
        a = Integer.valueOf(170);
        b = Integer.valueOf(GoogleScorer.CLIENT_APPSTATE);
        c = Integer.valueOf(0);
        d = Integer.valueOf(0);
        e = null;
        f = Boolean.valueOf(true);
        g = Boolean.valueOf(true);
        h = null;
        i = Boolean.valueOf(true);
        j = null;
        k = Long.valueOf(10000);
        l = Boolean.valueOf(true);
        m = Long.valueOf(0);
        n = Byte.valueOf((byte) -1);
    }

    public static synchronized dn a() {
        dn dnVar;
        synchronized (dm.class) {
            if (o == null) {
                o = new dn();
                b();
            }
            dnVar = o;
        }
        return dnVar;
    }

    private static void b() {
        if (o == null) {
            o = new dn();
        }
        o.a("AgentVersion", a);
        o.a("ReleaseMajorVersion", b);
        o.a("ReleaseMinorVersion", c);
        o.a("ReleasePatchVersion", d);
        o.a("ReleaseBetaVersion", AdTrackerConstants.BLANK);
        o.a("VersionName", e);
        o.a("CaptureUncaughtExceptions", f);
        o.a("UseHttps", g);
        o.a("ReportUrl", h);
        o.a("ReportLocation", i);
        o.a("LocationCriteria", j);
        o.a("ContinueSessionMillis", k);
        o.a("LogEvents", l);
        o.a("Age", m);
        o.a("Gender", n);
        o.a("UserId", AdTrackerConstants.BLANK);
    }
}