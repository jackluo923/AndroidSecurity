package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.a.j;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class a {
    private static final d b;
    private static final Object c;
    final Object a;

    static {
        if (VERSION.SDK_INT >= 16) {
            b = new e();
        } else if (VERSION.SDK_INT >= 14) {
            b = new b();
        } else {
            b = new g();
        }
        c = b.a();
    }

    public a() {
        this.a = b.a(this);
    }

    public j a_(View view) {
        return b.a(c, view);
    }

    Object a_() {
        return this.a;
    }

    public void a_(View view, int i) {
        b.a(c, view, i);
    }

    public void a_(View view, android.support.v4.view.a.a aVar) {
        b.a(c, view, aVar);
    }

    public void a_(View view, AccessibilityEvent accessibilityEvent) {
        b.d(c, view, accessibilityEvent);
    }

    public boolean a_(View view, int i, Bundle bundle) {
        return b.a(c, view, i, bundle);
    }

    public boolean a_(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return b.a(c, viewGroup, view, accessibilityEvent);
    }

    public boolean b(View view, AccessibilityEvent accessibilityEvent) {
        return b.a(c, view, accessibilityEvent);
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        b.c(c, view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        b.b(c, view, accessibilityEvent);
    }
}