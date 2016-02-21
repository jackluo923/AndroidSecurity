package android.support.v4.widget;

import android.view.View;

// compiled from: ProGuard
class x implements Runnable {
    final View a;
    final /* synthetic */ SlidingPaneLayout b;

    x(SlidingPaneLayout slidingPaneLayout, View view) {
        this.b = slidingPaneLayout;
        this.a = view;
    }

    public void run() {
        if (this.a.getParent() == this.b) {
            android.support.v4.view.x.a(this.a, 0, null);
            SlidingPaneLayout.a(this.b, this.a);
        }
        SlidingPaneLayout.a(this.b).remove(this);
    }
}