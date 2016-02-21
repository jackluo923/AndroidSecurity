package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class i extends AccessibilityDelegate {
    final /* synthetic */ j a;

    i(j jVar) {
        this.a = jVar;
    }

    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.a.a(view, accessibilityEvent);
    }

    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.a.b(view, accessibilityEvent);
    }

    public final void onInitializeAccessibilityNodeInfo(View view, Object obj) {
        this.a.a(view, obj);
    }

    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.a.c(view, accessibilityEvent);
    }

    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.a.a(viewGroup, view, accessibilityEvent);
    }

    public final void sendAccessibilityEvent(View view, int i) {
        this.a.a(view, i);
    }

    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.a.d(view, accessibilityEvent);
    }
}