package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;

class PermissionChecker {
    private static final String a;
    private static final String b = "android.permission.INTERNET";
    private static PermissionChecker c;
    private boolean d;

    static {
        a = PermissionChecker.class.getSimpleName();
        c = new PermissionChecker();
    }

    protected PermissionChecker() {
        this.d = false;
    }

    static PermissionChecker a() {
        return c;
    }

    protected static void a(PermissionChecker permissionChecker) {
        c = permissionChecker;
    }

    private static final boolean b() {
        Log.d(a, "App permissions were not read.");
        return true;
    }

    public final boolean passesInternetPermissionCheck(Context context) {
        return passesInternetPermissionCheck(context, null);
    }

    public final boolean passesInternetPermissionCheck(Context context, String str) {
        if (this.d) {
            return true;
        }
        if (VERSION.SDK_INT < 8) {
            return b();
        }
        String packageCodePath = AndroidTargetUtils.getPackageCodePath(context);
        if (packageCodePath == null) {
            return b();
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return b();
        }
        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(packageCodePath, AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD);
        if (packageArchiveInfo == null) {
            return b();
        }
        String[] strArr = packageArchiveInfo.requestedPermissions;
        if (strArr == null) {
            return b();
        }
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            if (strArr[i].equals(b)) {
                this.d = true;
                return true;
            } else {
                i++;
            }
        }
        if (str != null) {
            Log.e(str, "Network task cannot commence because the INTERNET permission is missing from the app's manifest.");
        }
        return false;
    }
}