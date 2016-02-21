package android.support.v4.widget;

import android.database.DataSetObserver;

final class c extends DataSetObserver {
    final /* synthetic */ a a;

    private c(a aVar) {
        this.a = aVar;
    }

    public final void onChanged() {
        this.a.mDataValid = true;
        this.a.notifyDataSetChanged();
    }

    public final void onInvalidated() {
        this.a.mDataValid = false;
        this.a.notifyDataSetInvalidated();
    }
}