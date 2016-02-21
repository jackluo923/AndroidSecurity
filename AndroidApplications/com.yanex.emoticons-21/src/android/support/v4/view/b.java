package android.support.v4.view;

import android.support.v4.view.a.a;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

class b extends g {
    b() {
    }

    public final Object a() {
        return new AccessibilityDelegate();
    }

    public Object a(a aVar) {
        return new i(new c(this, aVar));
    }

    public final void a(Object obj, View view, int i) {
        ((AccessibilityDelegate) obj).sendAccessibilityEvent(view, i);
    }

    public final void a(Object obj, View view, a aVar) {
        ((AccessibilityDelegate) obj).onInitializeAccessibilityNodeInfo(view, (AccessibilityNodeInfo) aVar.a());
    }

    public final boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        return ((AccessibilityDelegate) obj).dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public final boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return ((AccessibilityDelegate) obj).onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public final void b_(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        ((AccessibilityDelegate) obj).onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public final void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        ((AccessibilityDelegate) obj).onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public final void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        ((AccessibilityDelegate) obj).sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}