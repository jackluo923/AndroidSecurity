package org.acra.c.a.a.a;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class b implements ActivityLifecycleCallbacks {
    private a a;

    public b(a aVar) {
        this.a = aVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.a.a(activity, bundle);
    }

    public void onActivityDestroyed(Activity activity) {
        this.a.e(activity);
    }

    public void onActivityPaused(Activity activity) {
        this.a.c(activity);
    }

    public void onActivityResumed(Activity activity) {
        this.a.b(activity);
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.a.b(activity, bundle);
    }

    public void onActivityStarted(Activity activity) {
        this.a.a(activity);
    }

    public void onActivityStopped(Activity activity) {
        this.a.d(activity);
    }
}