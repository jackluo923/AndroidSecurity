package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

final class d extends Filter {
    e a;

    d(e eVar) {
        this.a = eVar;
    }

    public final CharSequence convertResultToString(Object obj) {
        return this.a.convertToString((Cursor) obj);
    }

    protected final FilterResults performFiltering(CharSequence charSequence) {
        Cursor runQueryOnBackgroundThread = this.a.runQueryOnBackgroundThread(charSequence);
        FilterResults filterResults = new FilterResults();
        if (runQueryOnBackgroundThread != null) {
            filterResults.count = runQueryOnBackgroundThread.getCount();
            filterResults.values = runQueryOnBackgroundThread;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    protected final void publishResults(CharSequence charSequence, FilterResults filterResults) {
        Cursor cursor = this.a.getCursor();
        if (filterResults.values != null && filterResults.values != cursor) {
            this.a.changeCursor((Cursor) filterResults.values);
        }
    }
}