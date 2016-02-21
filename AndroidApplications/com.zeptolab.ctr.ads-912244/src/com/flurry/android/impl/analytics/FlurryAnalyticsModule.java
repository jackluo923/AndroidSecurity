package com.flurry.android.impl.analytics;

import android.content.Context;
import com.flurry.sdk.da;
import com.flurry.sdk.dg;
import com.flurry.sdk.eq;

public class FlurryAnalyticsModule implements eq {
    private static FlurryAnalyticsModule a;
    private da b;

    private FlurryAnalyticsModule() {
    }

    public static synchronized FlurryAnalyticsModule getInstance() {
        FlurryAnalyticsModule flurryAnalyticsModule;
        synchronized (FlurryAnalyticsModule.class) {
            if (a == null) {
                a = new FlurryAnalyticsModule();
            }
            flurryAnalyticsModule = a;
        }
        return flurryAnalyticsModule;
    }

    public da a() {
        return this.b;
    }

    public void a(dg dgVar) {
    }

    public void a(dg dgVar, Context context) {
        if (this.b == null) {
            this.b = new da();
        }
    }

    public void b(dg dgVar, Context context) {
    }

    public void c(dg dgVar, Context context) {
    }
}