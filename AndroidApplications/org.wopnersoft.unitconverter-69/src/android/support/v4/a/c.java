package android.support.v4.a;

import android.content.Context;
import android.content.Intent;
import java.io.File;

// compiled from: ProGuard
class c {
    public static File a(Context context) {
        return context.getObbDir();
    }

    static void a(Context context, Intent[] intentArr) {
        context.startActivities(intentArr);
    }
}