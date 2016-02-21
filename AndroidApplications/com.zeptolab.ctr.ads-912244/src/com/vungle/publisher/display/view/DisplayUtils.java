package com.vungle.publisher.display.view;

import android.content.Context;
import android.util.TypedValue;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class DisplayUtils {
    @Inject
    Context a;

    DisplayUtils() {
    }

    public final float a(int i) {
        return TypedValue.applyDimension(1, (float) i, this.a.getResources().getDisplayMetrics());
    }
}