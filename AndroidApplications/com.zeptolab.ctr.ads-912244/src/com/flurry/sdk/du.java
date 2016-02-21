package com.flurry.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public final class du {
    private static final String a;

    static {
        a = du.class.getSimpleName();
    }

    public static PackageInfo a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 20815);
        } catch (NameNotFoundException e) {
            el.a(a, "Cannot find package info for package: " + context.getPackageName());
            return null;
        }
    }

    public static ApplicationInfo b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), Cast.MAX_NAMESPACE_LENGTH);
        } catch (NameNotFoundException e) {
            el.a(a, "Cannot find application info for package: " + context.getPackageName());
            return null;
        }
    }

    public static String c(Context context) {
        PackageInfo a = a(context);
        return (a == null || a.packageName == null) ? AdTrackerConstants.BLANK : a.packageName;
    }

    public static Bundle d(Context context) {
        ApplicationInfo b = b(context);
        return (b == null || b.metaData == null) ? Bundle.EMPTY : b.metaData;
    }
}