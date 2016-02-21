package com.mopub.mobileads.util;

import android.content.Context;
import android.util.TypedValue;

public class Dips {
    public static float a(float f, Context context) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static int b(float f, Context context) {
        return (int) (a(f, context) + 0.5f);
    }
}