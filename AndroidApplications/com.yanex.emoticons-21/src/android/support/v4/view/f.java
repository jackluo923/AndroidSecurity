package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.a;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class f implements m {
    final /* synthetic */ a a;
    final /* synthetic */ e b;

    f(e eVar, a aVar) {
        this.b = eVar;
        this.a = aVar;
    }

    public final Object a(View view) {
        a aVar = this.a;
        android.support.v4.view.a.f a = a.a(view);
        return a != null ? a.a() : null;
    }

    public final void a(View view, int i) {
        a aVar = this.a;
        a.a(view, i);
    }

    public final void a(View view, Object obj) {
        this.a.a(view, new a(obj));
    }

    public final boolean a(View view, int i, Bundle bundle) {
        return this.a.a(view, i, bundle);
    }

    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        a aVar = this.a;
        return a.b(view, accessibilityEvent);
    }

    public final boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        a aVar = this.a;
        return a.a(viewGroup, view, accessibilityEvent);
    }

    public final void b(View view, AccessibilityEvent accessibilityEvent) {
        this.a.d(view, accessibilityEvent);
    }

    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        a aVar = this.a;
        a.c(view, accessibilityEvent);
    }

    public final void d(View view, AccessibilityEvent accessibilityEvent) {
        a aVar = this.a;
        a.a(view, accessibilityEvent);
    }
}