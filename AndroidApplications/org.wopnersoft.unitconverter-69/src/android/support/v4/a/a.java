package android.support.v4.a;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import java.io.File;

// compiled from: ProGuard
public class a {
    private static final String DIR_ANDROID = "Android";
    private static final String DIR_CACHE = "cache";
    private static final String DIR_DATA = "data";
    private static final String DIR_FILES = "files";
    private static final String DIR_OBB = "obb";

    private static File buildPath(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        File file2 = file;
        while (i < length) {
            File file3;
            String str = strArr[i];
            if (file2 == null) {
                file3 = new File(str);
            } else if (str != null) {
                file3 = new File(file2, str);
            } else {
                file3 = file2;
            }
            i++;
            file2 = file3;
        }
        return file2;
    }

    public static File[] getExternalCacheDirs(Context context) {
        int i = VERSION.SDK_INT;
        if (i >= 19) {
            return e.a(context);
        }
        File a;
        if (i >= 8) {
            a = b.a(context);
        } else {
            a = buildPath(Environment.getExternalStorageDirectory(), new String[]{DIR_ANDROID, DIR_DATA, context.getPackageName(), DIR_CACHE});
        }
        return new File[]{a};
    }

    public static File[] getExternalFilesDirs(Context context, String str) {
        int i = VERSION.SDK_INT;
        if (i >= 19) {
            return e.a(context, str);
        }
        File a;
        if (i >= 8) {
            a = b.a(context, str);
        } else {
            a = buildPath(Environment.getExternalStorageDirectory(), new String[]{DIR_ANDROID, DIR_DATA, context.getPackageName(), DIR_FILES, str});
        }
        return new File[]{a};
    }

    public static File[] getObbDirs(Context context) {
        int i = VERSION.SDK_INT;
        if (i >= 19) {
            return e.b(context);
        }
        File a;
        if (i >= 11) {
            a = c.a(context);
        } else {
            a = buildPath(Environment.getExternalStorageDirectory(), new String[]{DIR_ANDROID, DIR_OBB, context.getPackageName()});
        }
        return new File[]{a};
    }

    public static boolean startActivities(Context context, Intent[] intentArr) {
        return startActivities(context, intentArr, null);
    }

    public static boolean startActivities(Context context, Intent[] intentArr, Bundle bundle) {
        int i = VERSION.SDK_INT;
        if (i >= 16) {
            d.a(context, intentArr, bundle);
            return true;
        } else if (i < 11) {
            return false;
        } else {
            c.a(context, intentArr);
            return true;
        }
    }
}