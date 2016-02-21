package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.flurry.sdk.dr.a;
import java.util.Iterator;
import java.util.List;

public class ds {
    private static ds b;
    private final dq a;

    @TargetApi(14)
    private ds() {
        this.a = new dq();
        if (VERSION.SDK_INT >= 14) {
            ((Application) dl.a().b()).registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacks() {
                protected void a(Activity activity, a aVar) {
                    Iterator it = ds.this.c().iterator();
                    while (it.hasNext()) {
                        ((dr) it.next()).a(activity, aVar);
                    }
                }

                public void onActivityCreated(Activity activity, Bundle bundle) {
                    a(activity, a.a);
                }

                public void onActivityDestroyed(Activity activity) {
                    a(activity, a.b);
                }

                public void onActivityPaused(Activity activity) {
                    a(activity, a.c);
                }

                public void onActivityResumed(Activity activity) {
                    a(activity, a.d);
                }

                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    a(activity, a.g);
                }

                public void onActivityStarted(Activity activity) {
                    a(activity, a.e);
                }

                public void onActivityStopped(Activity activity) {
                    a(activity, a.f);
                }
            });
        }
    }

    public static synchronized ds a() {
        ds dsVar;
        synchronized (ds.class) {
            if (b == null) {
                b = new ds();
            }
            dsVar = b;
        }
        return dsVar;
    }

    private synchronized List c() {
        return this.a.a();
    }

    public synchronized void a(dr drVar) {
        this.a.a(drVar);
    }

    public boolean b() {
        return VERSION.SDK_INT >= 14;
    }
}