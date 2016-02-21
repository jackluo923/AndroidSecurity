package me.kiip.internal.k;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;

public class a {
    public static int a_(Context context) {
        int i = -1;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return i;
        }
    }

    public static String b(Context context) {
        String str = null;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return str;
        }
    }
}