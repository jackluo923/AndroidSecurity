package com.chartboost.sdk.Libraries;

import android.app.Activity;
import android.content.Context;
import com.chartboost.sdk.Chartboost;
import java.lang.ref.WeakReference;

public final class h extends WeakReference {
    private static h b;
    private int a;

    private h(Activity activity) {
        super(activity);
        this.a = activity.hashCode();
    }

    public static h a(Activity activity) {
        if (b == null || b.a != activity.hashCode()) {
            b = new h(activity);
        }
        return b;
    }

    public int a() {
        return this.a;
    }

    public boolean a(h hVar) {
        return hVar != null && hVar.a() == this.a;
    }

    public Context b() {
        Context context = (Context) get();
        return context == null ? Chartboost.sharedChartboost().getContext() : context;
    }

    public boolean b(Activity activity) {
        return activity != null && activity.hashCode() == this.a;
    }

    public int hashCode() {
        return a();
    }
}