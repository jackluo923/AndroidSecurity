package org.acra.c.a.a.a;

import android.annotation.TargetApi;
import android.app.Application;
import android.os.Build.VERSION;

public class c {
    public static final boolean a;

    static {
        a = VERSION.SDK_INT < 14;
    }

    public static void a(Application application, a aVar) {
        if (a) {
            a(aVar);
        } else {
            b(application, aVar);
        }
    }

    private static void a(a aVar) {
        d.a().a(aVar);
    }

    @TargetApi(14)
    private static void b(Application application, a aVar) {
        application.registerActivityLifecycleCallbacks(new b(aVar));
    }
}