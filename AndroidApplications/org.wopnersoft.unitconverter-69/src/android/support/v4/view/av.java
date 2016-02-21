package android.support.v4.view;

import android.database.DataSetObserver;

// compiled from: ProGuard
class av extends DataSetObserver {
    final /* synthetic */ ViewPager a;

    private av(ViewPager viewPager) {
        this.a = viewPager;
    }

    public void onChanged() {
        this.a.a();
    }

    public void onInvalidated() {
        this.a.a();
    }
}