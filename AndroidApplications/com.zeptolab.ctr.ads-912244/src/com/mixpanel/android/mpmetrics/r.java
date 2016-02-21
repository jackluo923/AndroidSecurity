package com.mixpanel.android.mpmetrics;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.res.Configuration;
import android.os.Bundle;

class r implements ActivityLifecycleCallbacks {
    private static final String e = "MixpanelAPI:MixpanelActivityLifecycleCallbacks";
    private final j a;
    private boolean b;
    private Integer c;
    private final long d;

    public r(j jVar) {
        this.b = false;
        this.d = 2000;
        this.a = jVar;
    }

    private void a(Activity activity) {
        if (activity != null && e.b(activity.getApplicationContext())) {
            long currentTimeMillis = System.currentTimeMillis();
            this.b = true;
            this.a.d().a(new s(this, currentTimeMillis, activity), activity);
        }
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        Configuration configuration = activity.getResources().getConfiguration();
        int i = (this.c == null || configuration.orientation == this.c.intValue()) ? 0 : 1;
        if (i == 0 && activity.isTaskRoot()) {
            a(activity);
        }
        this.c = Integer.valueOf(configuration.orientation);
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
    }

    public void onActivityResumed(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        if (!this.b && activity.isTaskRoot()) {
            this.c = Integer.valueOf(activity.getResources().getConfiguration().orientation);
            a(activity);
        }
    }

    public void onActivityStopped(Activity activity) {
    }
}