package android.support.v4.widget;

import android.support.v4.view.af;
import android.view.View;

class v implements u {
    v() {
    }

    public void a(SlidingPaneLayout slidingPaneLayout, View view) {
        af.a(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }
}