package com.flurry.sdk;

import android.app.Activity;

public interface dr {

    public enum a {
        kCreated,
        kDestroyed,
        kPaused,
        kResumed,
        kStarted,
        kStopped,
        kSaveState;

        static {
            a = new com.flurry.sdk.dr.a("kCreated", 0);
            b = new com.flurry.sdk.dr.a("kDestroyed", 1);
            c = new com.flurry.sdk.dr.a("kPaused", 2);
            d = new com.flurry.sdk.dr.a("kResumed", 3);
            e = new com.flurry.sdk.dr.a("kStarted", 4);
            f = new com.flurry.sdk.dr.a("kStopped", 5);
            g = new com.flurry.sdk.dr.a("kSaveState", 6);
            h = new com.flurry.sdk.dr.a[]{a, b, c, d, e, f, g};
        }
    }

    void a(Activity activity, a aVar);
}