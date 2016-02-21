package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.ads.b.h;
import java.util.Date;

public final class aq {
    private static final h a;

    static {
        a = (h) h.a.a();
    }

    public static void a(Activity activity) {
        new Thread(new as(activity)).start();
    }

    public static boolean a(Context context, long j) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        int i = !defaultSharedPreferences.contains("drt") || !defaultSharedPreferences.contains("drt_ts") || defaultSharedPreferences.getLong("drt_ts", 0) < new Date().getTime() - j;
        if (i == 0) {
            return false;
        }
        new Thread(new ar(context)).start();
        return true;
    }
}