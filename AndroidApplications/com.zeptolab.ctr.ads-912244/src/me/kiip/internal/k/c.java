package me.kiip.internal.k;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.provider.Settings.Secure;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Iterator;

public class c {
    private static final String[] a;

    static {
        a = new String[]{"9774d56d682e549c", "dead00beef"};
    }

    private static String a() {
        try {
            SecureRandom instance = SecureRandom.getInstance("SHA1PRNG");
            instance.setSeed((b(AdTrackerConstants.BLANK) + System.nanoTime() + new SecureRandom().nextLong()).getBytes());
            return Long.toHexString(instance.nextLong());
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    @SuppressLint({"WorldReadableFiles"})
    public static String a(Context context) {
        String b = b(context, null);
        if (b != null) {
            return b;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("me.kiip.sdk", 1);
        if (!sharedPreferences.contains("android_id")) {
            Iterator it = context.getPackageManager().getInstalledApplications(Cast.MAX_NAMESPACE_LENGTH).iterator();
            String str = b;
            while (it.hasNext()) {
                try {
                    b = context.createPackageContext(((ApplicationInfo) it.next()).packageName, 0).getSharedPreferences("me.kiip.sdk", 1).getString("android_id", null);
                    if (b != null) {
                        break;
                    }
                } catch (NameNotFoundException e) {
                    b = str;
                }
                str = b;
            }
            b = str;
            if (b == null) {
                b = a();
            }
            Editor edit = sharedPreferences.edit();
            edit.putString("android_id", b);
            edit.commit();
        }
        return sharedPreferences.getString("android_id", DeviceInfo.ORIENTATION_UNKNOWN);
    }

    public static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    static boolean a(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        String[] strArr = a;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            if (strArr[i].equals(str)) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static String b(Context context, String str) {
        String string = Secure.getString(context.getContentResolver(), "android_id");
        return a(string) ? string : str;
    }

    private static String b(String str) {
        try {
            Class forName = Class.forName("android.os.SystemProperties");
            return (String) forName.getMethod("get", new Class[]{String.class, String.class}).invoke(forName, new Object[]{"ro.serialno", str});
        } catch (Exception e) {
            return str;
        }
    }
}