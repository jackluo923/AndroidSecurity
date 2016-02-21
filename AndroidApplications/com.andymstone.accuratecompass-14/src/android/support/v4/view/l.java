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

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.a.a(view, accessibilityEvent);
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        return (AccessibilityNodeProvider) this.a.a(view);
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.a.b(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, Object obj) {
        this.a.a(view, obj);
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.a.c(view, accessibilityEvent);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.a.a(viewGroup, view, accessibilityEvent);
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.a.a(view, i, bundle);
    }

    public void sendAccessibilityEvent(View view, int i) {
        this.a.a(view, i);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.a.d(view, accessibilityEvent);
    }
}