package org.acra.e;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import org.acra.ACRA;

public final class i {
    private final Context a;

    public i(Context context) {
        this.a = context;
    }

    public PackageInfo a() {
        PackageManager packageManager = this.a.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            return packageManager.getPackageInfo(this.a.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            Log.v(ACRA.LOG_TAG, new StringBuilder("Failed to find PackageInfo for current App : ").append(this.a.getPackageName()).toString());
            return null;
        } catch (RuntimeException e2) {
            return null;
        }
    }

    public boolean a(String str) {
        PackageManager packageManager = this.a.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        try {
            return packageManager.checkPermission(str, this.a.getPackageName()) == 0;
        } catch (RuntimeException e) {
            return false;
        }
    }
}