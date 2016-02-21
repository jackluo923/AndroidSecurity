package android.support.v4.widget;

import android.support.v4.view.ak;
import android.view.View;

class s implements Runnable {
    final View a;
    final /* synthetic */ SlidingPaneLayout b;

    s(SlidingPaneLayout slidingPaneLayout, View view) {
        this.b = slidingPaneLayout;
        this.a = view;
    }

    public void run() {
        if (this.a.getParent() == this.b) {
            ak.a(this.a, 0, null);
            SlidingPaneLayout.a(this.b, this.a);
        }
        SlidingPaneLayout.a(this.b).remove(this);
    }
}