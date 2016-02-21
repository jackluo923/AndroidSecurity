package android.support.v4.widget;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class w extends v {
    private Method a;
    private Field b;

    w() {
        try {
            this.a = View.class.getDeclaredMethod("getDisplayList", null);
        } catch (NoSuchMethodException e) {
            Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
        }
        try {
            this.b = View.class.getDeclaredField("mRecreateDisplayList");
            this.b.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
        }
    }

    public final void a(SlidingPaneLayout slidingPaneLayout, View view) {
        if (this.a == null || this.b == null) {
            view.invalidate();
        } else {
            try {
                this.b.setBoolean(view, true);
                this.a.invoke(view, null);
            } catch (Exception e) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e);
            }
            super.a(slidingPaneLayout, view);
        }
    }
}