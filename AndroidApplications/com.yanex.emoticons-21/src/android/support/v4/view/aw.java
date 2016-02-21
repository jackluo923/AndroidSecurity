package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.a.a;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class aw extends a {
    final /* synthetic */ ViewPager b;

    aw(ViewPager viewPager) {
        this.b = viewPager;
    }

    public final void a(View view, a aVar) {
        boolean z = true;
        super.a(view, aVar);
        aVar.a(ViewPager.class.getName());
        if (ViewPager.b(this.b) == null || ViewPager.b(this.b).getCount() <= 1) {
            z = false;
        }
        aVar.a(z);
        if (ViewPager.b(this.b) != null && ViewPager.c(this.b) >= 0 && ViewPager.c(this.b) < ViewPager.b(this.b).getCount() - 1) {
            aVar.a((int)FragmentTransaction.TRANSIT_ENTER_MASK);
        }
        if (ViewPager.b(this.b) != null && ViewPager.c(this.b) > 0 && ViewPager.c(this.b) < ViewPager.b(this.b).getCount()) {
            aVar.a((int)FragmentTransaction.TRANSIT_EXIT_MASK);
        }
    }

    public final boolean a(View view, int i, Bundle bundle) {
        if (super.a(view, i, bundle)) {
            return true;
        }
        switch (i) {
            case FragmentTransaction.TRANSIT_ENTER_MASK:
                if (ViewPager.b(this.b) == null || ViewPager.c(this.b) < 0 || ViewPager.c(this.b) >= ViewPager.b(this.b).getCount() - 1) {
                    return false;
                }
                this.b.a(ViewPager.c(this.b) + 1);
                return true;
            case FragmentTransaction.TRANSIT_EXIT_MASK:
                if (ViewPager.b(this.b) == null || ViewPager.c(this.b) <= 0 || ViewPager.c(this.b) >= ViewPager.b(this.b).getCount()) {
                    return false;
                }
                this.b.a(ViewPager.c(this.b) - 1);
                return true;
            default:
                return false;
        }
    }

    public final void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        accessibilityEvent.setClassName(ViewPager.class.getName());
    }
}