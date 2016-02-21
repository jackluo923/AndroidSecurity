package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.ak;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

class a extends android.support.v4.view.a {
    final /* synthetic */ DrawerLayout b;
    private final Rect c;

    a(DrawerLayout drawerLayout) {
        this.b = drawerLayout;
        this.c = new Rect();
    }

    private void a_(android.support.v4.view.a.a aVar, android.support.v4.view.a.a aVar2) {
        Rect rect = this.c;
        aVar2.a(rect);
        aVar.b(rect);
        aVar2.c(rect);
        aVar.d(rect);
        aVar.c(aVar2.g());
        aVar.a(aVar2.o());
        aVar.b(aVar2.p());
        aVar.c(aVar2.r());
        aVar.h(aVar2.l());
        aVar.f(aVar2.j());
        aVar.a(aVar2.e());
        aVar.b(aVar2.f());
        aVar.d(aVar2.h());
        aVar.e(aVar2.i());
        aVar.g(aVar2.k());
        aVar.a(aVar2.b());
    }

    public void a_(View view, android.support.v4.view.a.a aVar) {
        android.support.v4.view.a.a a = android.support.v4.view.a.a.a(aVar);
        super.a(view, a);
        aVar.a(view);
        ViewParent e = ak.e(view);
        if (e instanceof View) {
            aVar.c((View) e);
        }
        a(aVar, a);
        a.s();
        int childCount = this.b.getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = this.b.getChildAt(i);
            if (!b(childAt)) {
                aVar.b(childAt);
            }
            i++;
        }
    }

    public boolean a_(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return b(view) ? false : super.a(viewGroup, view, accessibilityEvent);
    }

    public boolean b(View view) {
        View a = this.b.a();
        return a != null && a != view;
    }
}