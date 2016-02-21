package com.zeptolab.ctr;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.pm.PackageManager.NameNotFoundException;

class getInstallTimeHelper {
    getInstallTimeHelper() {
    }

    @SuppressLint({"NewApi"})
    long getInstallTime(Activity activity) {
        try {
            return activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).firstInstallTime;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }
}