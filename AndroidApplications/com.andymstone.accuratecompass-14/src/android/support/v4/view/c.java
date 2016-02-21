package android.support.v4.view;

import android.support.v4.view.a.a;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class c implements j {
    final /* synthetic */ a a;
    final /* synthetic */ b b;

    c(b bVar, a aVar) {
        this.b = bVar;
        this.a = aVar;
    }

    public void a(View view, int i) {
        this.a.a(view, i);
    }

    public void a(View view, Object obj) {
        this.a.a(view, new a(obj));
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.a.b(view, accessibilityEvent);
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.a.a(viewGroup, view, accessibilityEvent);
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        this.a.d(view, accessibilityEvent);
    }

    public void c_(View view, AccessibilityEvent accessibilityEvent) {
        this.a.c(view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.a.a(view, accessibilityEvent);
    }
}