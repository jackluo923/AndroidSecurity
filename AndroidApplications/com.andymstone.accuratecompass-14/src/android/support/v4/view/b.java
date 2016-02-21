package android.support.v4.view;

import android.support.v4.view.a.a;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class b extends g {
    b() {
    }

    public Object a() {
        return h.a();
    }

    public Object a(a aVar) {
        return h.a(new c(this, aVar));
    }

    public void a(Object obj, View view, int i) {
        h.a(obj, view, i);
    }

    public void a(Object obj, View view, a aVar) {
        h.a(obj, view, aVar.a());
    }

    public boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        return h.a(obj, view, accessibilityEvent);
    }

    public boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return h.a(obj, viewGroup, view, accessibilityEvent);
    }

    public void b_(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        h.b(obj, view, accessibilityEvent);
    }

    public void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        h.c(obj, view, accessibilityEvent);
    }

    public void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        h.d(obj, view, accessibilityEvent);
    }
}