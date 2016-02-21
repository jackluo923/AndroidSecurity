package android.support.v4.widget;

import android.support.v4.view.af;
import android.view.View;

final class s implements Runnable {
    final View a;
    final /* synthetic */ SlidingPaneLayout b;

    s(SlidingPaneLayout slidingPaneLayout, View view) {
        this.b = slidingPaneLayout;
        this.a = view;
    }

    public final void run() {
        if (this.a.getParent() == this.b) {
            af.a(this.a, 0, null);
            SlidingPaneLayout.a(this.b, this.a);
        }
        SlidingPaneLayout.a(this.b).remove(this);
    }
}