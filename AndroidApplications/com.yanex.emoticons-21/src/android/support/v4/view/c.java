package android.support.v4.view;

import android.support.v4.view.a.a;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class c implements j {
    final /* synthetic */ a a;
    final /* synthetic */ b b;

    c(b bVar, a aVar) {
        this.b = bVar;
        this.a = aVar;
    }

    public final void a(View view, int i) {
        a aVar = this.a;
        a.a(view, i);
    }

    public final void a(View view, Object obj) {
        this.a.a(view, new a(obj));
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

    public final void c_(View view, AccessibilityEvent accessibilityEvent) {
        a aVar = this.a;
        a.c(view, accessibilityEvent);
    }

    public final void d(View view, AccessibilityEvent accessibilityEvent) {
        a aVar = this.a;
        a.a(view, accessibilityEvent);
    }
}