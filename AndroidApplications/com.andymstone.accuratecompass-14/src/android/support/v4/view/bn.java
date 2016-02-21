package android.support.v4.view;

import android.database.DataSetObserver;

class bn extends DataSetObserver {
    final /* synthetic */ ViewPager a;

    private bn(ViewPager viewPager) {
        this.a = viewPager;
    }

    public void onChanged() {
        this.a.a();
    }

    public void onInvalidated() {
        this.a.a();
    }
}