package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;

class aw {
    public static void a(View view, Object obj) {
        view.setAccessibilityDelegate((AccessibilityDelegate) obj);
    }

    public static boolean a(View view, int i) {
        return view.canScrollHorizontally(i);
    }
}