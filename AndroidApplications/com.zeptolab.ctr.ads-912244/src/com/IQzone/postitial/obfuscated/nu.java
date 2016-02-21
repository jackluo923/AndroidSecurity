package com.IQzone.postitial.obfuscated;

import android.app.Activity;
import java.util.concurrent.Executor;

public final class nu implements Executor {
    private final Activity a;

    public nu(Activity activity) {
        this.a = activity;
    }

    public final void execute(Runnable runnable) {
        this.a.runOnUiThread(runnable);
    }
}