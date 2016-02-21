package android.support.v4.app;

import android.view.View;

class f implements n {
    final /* synthetic */ Fragment a;

    f(Fragment fragment) {
        this.a = fragment;
    }

    public View a(int i) {
        if (this.a.R != null) {
            return this.a.R.findViewById(i);
        }
        throw new IllegalStateException("Fragment does not have a view");
    }
}