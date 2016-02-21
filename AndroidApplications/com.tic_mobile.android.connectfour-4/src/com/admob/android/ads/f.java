package com.admob.android.ads;

import android.graphics.PointF;
import android.view.View;

// compiled from: ViewInfo.java
public final class f {
    public float a;
    public PointF b;

    public f() {
        this.a = 0.0f;
        this.b = new PointF(0.5f, 0.5f);
    }

    public static float a(View view) {
        return view != null ? c(view).a : 0.0f;
    }

    public static PointF b(View view) {
        return view != null ? c(view).b : null;
    }

    public static f c(View view) {
        view = view.getTag();
        return (view == null || !(view instanceof f)) ? new f() : (f) view;
    }
}