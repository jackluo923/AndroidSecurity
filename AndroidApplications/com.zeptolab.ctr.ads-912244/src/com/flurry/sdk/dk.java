package com.flurry.sdk;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;

public class dk {
    private static final String a;
    private static dk b;

    static {
        a = dk.class.getSimpleName();
    }

    public static synchronized dk a() {
        dk dkVar;
        synchronized (dk.class) {
            if (b == null) {
                b = new dk();
            }
            dkVar = b;
        }
        return dkVar;
    }

    public int b() {
        int intValue = ((Integer) dm.a().a("AgentVersion")).intValue();
        el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "getAgentVersion() = " + intValue);
        return intValue;
    }

    int c() {
        return ((Integer) dm.a().a("ReleaseMajorVersion")).intValue();
    }

    int d() {
        return ((Integer) dm.a().a("ReleaseMinorVersion")).intValue();
    }

    int e() {
        return ((Integer) dm.a().a("ReleasePatchVersion")).intValue();
    }

    String f() {
        return (String) dm.a().a("ReleaseBetaVersion");
    }

    public String g() {
        String str;
        str = f().length() > 0 ? "." : AdTrackerConstants.BLANK;
        return String.format(Locale.getDefault(), "Flurry_Android_%d_%d.%d.%d%s%s", new Object[]{Integer.valueOf(b()), Integer.valueOf(c()), Integer.valueOf(d()), Integer.valueOf(e()), str, f()});
    }

    public String h() {
        dg c = di.a().c();
        return c != null ? c.j() : null;
    }

    public String i() {
        dg c = di.a().c();
        return c != null ? c.k() : null;
    }

    public String j() {
        dg c = di.a().c();
        return c != null ? c.l() : null;
    }

    public boolean k() {
        dg c = di.a().c();
        return c != null ? c.o() : true;
    }

    public Map l() {
        dg c = di.a().c();
        return c != null ? c.p() : Collections.emptyMap();
    }
}