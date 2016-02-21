package org.acra.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import org.acra.ACRA;

final class e {
    public static String a(Context context) {
        if (a.a() < 5) {
            return "Data available only with API Level >= 5";
        }
        StringBuilder stringBuilder = new StringBuilder();
        try {
            Object[] objArr = (Object[]) PackageManager.class.getMethod("getSystemAvailableFeatures", null).invoke(context.getPackageManager(), new Object[0]);
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                String str = (String) obj.getClass().getField("name").get(obj);
                if (str != null) {
                    stringBuilder.append(str);
                } else {
                    str = (String) obj.getClass().getMethod("getGlEsVersion", null).invoke(obj, new Object[0]);
                    stringBuilder.append("glEsVersion = ");
                    stringBuilder.append(str);
                }
                stringBuilder.append("\n");
                i++;
            }
        } catch (Throwable th) {
            Throwable th2 = th;
            Log.w(ACRA.LOG_TAG, new StringBuilder("Couldn't retrieve DeviceFeatures for ").append(context.getPackageName()).toString(), th2);
            stringBuilder.append("Could not retrieve data: ");
            stringBuilder.append(th2.getMessage());
        }
        return stringBuilder.toString();
    }
}