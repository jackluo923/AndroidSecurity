package com.inmobi.commons.data;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

public class AppInfo {
    private static String a;
    private static String b;
    private static String c;
    private static String d;

    private static void a(String str) {
        b = str;
    }

    private static void b(String str) {
        a = str;
    }

    private static void c(String str) {
        c = str;
    }

    public static void fillAppInfo() {
        try {
            Context context = InternalSDKUtil.getContext();
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), Cast.MAX_NAMESPACE_LENGTH);
            if (applicationInfo != null) {
                b(applicationInfo.packageName);
                a(applicationInfo.loadLabel(packageManager).toString());
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), Cast.MAX_NAMESPACE_LENGTH);
            String str = null;
            if (packageInfo != null) {
                str = packageInfo.versionName;
                if (str == null || str.equals(AdTrackerConstants.BLANK)) {
                    str = packageInfo.versionCode + AdTrackerConstants.BLANK;
                }
            }
            if (str != null && !str.equals(AdTrackerConstants.BLANK)) {
                c(str);
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to fill AppInfo", e);
        }
    }

    public static String getAppBId() {
        return a;
    }

    public static String getAppDisplayName() {
        return b;
    }

    public static String getAppId() {
        return d;
    }

    public static String getAppVer() {
        return c;
    }

    public static void setAppId(String str) {
        d = str;
    }
}