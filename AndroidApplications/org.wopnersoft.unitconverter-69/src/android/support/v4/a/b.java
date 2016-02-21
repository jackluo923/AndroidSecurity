package android.support.v4.a;

import android.content.Context;
import java.io.File;

// compiled from: ProGuard
class b {
    public static File a(Context context) {
        return context.getExternalCacheDir();
    }

    public static File a(Context context, String str) {
        return context.getExternalFilesDir(str);
    }
}