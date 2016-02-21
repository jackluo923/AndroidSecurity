package android.support.v4.view.a;

import android.view.accessibility.AccessibilityNodeInfo;

class b extends e {
    b() {
    }

    public final void a(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).addAction(i);
    }

    public final void a(Object obj, CharSequence charSequence) {
        ((AccessibilityNodeInfo) obj).setClassName(charSequence);
    }

    public final void a(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setScrollable(z);
    }
}