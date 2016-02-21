package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public class dy {
    private static final String a;
    private static String b;
    private static String c;

    static {
        a = dy.class.getSimpleName();
    }

    public static synchronized String a() {
        String str;
        synchronized (dy.class) {
            if (!TextUtils.isEmpty(b)) {
                str = b;
            } else if (TextUtils.isEmpty(c)) {
                c = b();
                str = c;
            } else {
                str = c;
            }
        }
        return str;
    }

    public static void a(String str) {
        b = str;
    }

    private static String b() {
        try {
            Context b = dl.a().b();
            PackageInfo packageInfo = b.getPackageManager().getPackageInfo(b.getPackageName(), 0);
            if (packageInfo.versionName != null) {
                return packageInfo.versionName;
            }
            if (packageInfo.versionCode != 0) {
                return Integer.toString(packageInfo.versionCode);
            }
            return "Unknown";
        } catch (Throwable th) {
            el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, AdTrackerConstants.BLANK, th);
        }
    }
}