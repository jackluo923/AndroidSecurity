package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.f;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.accessibility.AccessibilityNodeProvider;

final class e extends b {
    e() {
    }

    public final f a(Object obj, View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = ((AccessibilityDelegate) obj).getAccessibilityNodeProvider(view);
        return accessibilityNodeProvider != null ? new f(accessibilityNodeProvider) : null;
    }

    public final Object a(a aVar) {
        return new l(new f(this, aVar));
    }

    public final boolean a(Object obj, View view, int i, Bundle bundle) {
        return ((AccessibilityDelegate) obj).performAccessibilityAction(view, i, bundle);
    }
}