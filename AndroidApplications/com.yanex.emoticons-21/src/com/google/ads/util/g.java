package com.google.ads.util;

import android.util.Log;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;

public final class g {
    public static i a;
    private static int b;

    static {
        a = null;
        b = 5;
    }

    private static void a() {
        if (a != null) {
            i iVar = a;
        }
    }

    public static void a(String str) {
        if (a("Ads", (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)) {
            Log.d("Ads", str);
        }
        h hVar = h.b;
        a();
    }

    public static void a(String str, Throwable th) {
        if (a("Ads", (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)) {
            Log.d("Ads", str, th);
        }
        h hVar = h.b;
        a();
    }

    private static boolean a(String str, int i) {
        return (i >= b) != 0 || Log.isLoggable(str, i);
    }

    public static void b(String str) {
        if (a("Ads", (int)FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)) {
            Log.e("Ads", str);
        }
        h hVar = h.e;
        a();
    }

    public static void b(String str, Throwable th) {
        if (a("Ads", (int)FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)) {
            Log.e("Ads", str);
            Log.i("Ads", "The following was caught and handled:", th);
        }
        h hVar = h.e;
        a();
    }

    public static void c(String str) {
        if (a("Ads", (int)ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)) {
            Log.i("Ads", str);
        }
        h hVar = h.c;
        a();
    }

    public static void c(String str, Throwable th) {
        if (a("Ads", (int)ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)) {
            Log.i("Ads", str, th);
        }
        h hVar = h.c;
        a();
    }

    public static void d(String str) {
        if (a("Ads", (int)IcsLinearLayout.SHOW_DIVIDER_MIDDLE)) {
            Log.v("Ads", str);
        }
        h hVar = h.a;
        a();
    }

    public static void d(String str, Throwable th) {
        if (a("Ads", (int)FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)) {
            Log.w("Ads", str);
            Log.i("Ads", "The following was caught and handled:", th);
        }
        h hVar = h.d;
        a();
    }

    public static void e(String str) {
        if (a("Ads", (int)FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)) {
            Log.w("Ads", str);
        }
        h hVar = h.d;
        a();
    }
}