package com.flurry.sdk;

import android.os.Build.VERSION;
import android.text.TextUtils;

public final class en extends ep {
    private final int a;

    public en(String str, int i) {
        super(a(str, i));
        this.a = i;
    }

    private static eq a(String str, int i) {
        return b(str, i) ? eo.a(str) : null;
    }

    private static boolean b(String str, int i) {
        return !TextUtils.isEmpty(str) && VERSION.SDK_INT >= i;
    }
}