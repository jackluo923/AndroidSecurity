package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;

final class l extends AccessibilityDelegate {
    final /* synthetic */ m a;

    l(m mVar) {
        this.a = mVar;
    }

    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.a.a(view, accessibilityEvent);
    }

    public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        return (AccessibilityNodeProvider) this.a.a(view);
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

    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.a.a(view, i, bundle);
    }

    public final void sendAccessibilityEvent(View view, int i) {
        this.a.a(view, i);
    }

    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.a.d(view, accessibilityEvent);
    }
}