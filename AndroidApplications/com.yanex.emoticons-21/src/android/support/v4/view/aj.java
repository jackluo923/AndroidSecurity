package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;

class aj extends ai {
    aj() {
    }

    public final void a(View view, a aVar) {
        view.setAccessibilityDelegate((AccessibilityDelegate) aVar.a());
    }

    public final boolean a(View view, int i) {
        return view.canScrollHorizontally(i);
    }
}