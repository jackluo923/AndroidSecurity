package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;

class k {
    public static Object a(m mVar) {
        return new l(mVar);
    }

    public static Object a(Object obj, View view) {
        return ((AccessibilityDelegate) obj).getAccessibilityNodeProvider(view);
    }

    public static boolean a(Object obj, View view, int i, Bundle bundle) {
        return ((AccessibilityDelegate) obj).performAccessibilityAction(view, i, bundle);
    }
}