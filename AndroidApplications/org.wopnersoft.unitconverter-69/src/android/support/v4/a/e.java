package android.support.v4.a;

import android.content.Context;
import java.io.File;

// compiled from: ProGuard
class e {
    public static File[] a(Context context) {
        return context.getExternalCacheDirs();
    }

    public static File[] a(Context context, String str) {
        return context.getExternalFilesDirs(str);
    }

    public static File[] b(Context context) {
        return context.getObbDirs();
    }
}