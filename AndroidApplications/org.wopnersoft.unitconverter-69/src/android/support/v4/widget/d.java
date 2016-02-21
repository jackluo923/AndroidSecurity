package android.support.v4.widget;

import android.database.DataSetObserver;

// compiled from: ProGuard
class d extends DataSetObserver {
    final /* synthetic */ a a;

    private d(a aVar) {
        this.a = aVar;
    }

    public void onChanged() {
        this.a.mDataValid = true;
        this.a.notifyDataSetChanged();
    }

    public void onInvalidated() {
        this.a.mDataValid = false;
        this.a.notifyDataSetInvalidated();
    }
}