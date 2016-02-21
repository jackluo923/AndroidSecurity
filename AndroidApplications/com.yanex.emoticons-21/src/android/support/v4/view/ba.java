package android.support.v4.view;

import android.database.DataSetObserver;

final class ba extends DataSetObserver {
    final /* synthetic */ ViewPager a;

    private ba(ViewPager viewPager) {
        this.a = viewPager;
    }

    public final void onChanged() {
        this.a.b();
    }

    public final void onInvalidated() {
        this.a.b();
    }
}