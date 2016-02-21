package com.actionbarsherlock.internal.widget;

import android.view.View;

// compiled from: ProGuard
final class IcsView {
    private IcsView() {
    }

    public static int getMeasuredStateInt(View view) {
        return (view.getMeasuredWidth() & -16777216) | ((view.getMeasuredHeight() >> 16) & -256);
    }
}