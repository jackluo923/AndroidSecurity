package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.a;
import android.support.v4.view.a.j;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class f implements m {
    final /* synthetic */ a a;
    final /* synthetic */ e b;

    f(e eVar, a aVar) {
        this.b = eVar;
        this.a = aVar;
    }

    public Object a(View view) {
        j a = this.a.a(view);
        return a != null ? a.a() : null;
    }

    public void a(View view, int i) {
        this.a.a(view, i);
    }

    public void a(View view, Object obj) {
        this.a.a(view, new a(obj));
    }

    public boolean a(View view, int i, Bundle bundle) {
        return this.a.a(view, i, bundle);
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

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.a.c(view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.a.a(view, accessibilityEvent);
    }
}