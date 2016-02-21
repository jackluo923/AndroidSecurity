package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

// compiled from: ProGuard
class e extends Filter {
    f a;

    e(f fVar) {
        this.a = fVar;
    }

    public CharSequence convertResultToString(Object obj) {
        return this.a.convertToString((Cursor) obj);
    }

    protected FilterResults performFiltering(CharSequence charSequence) {
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

    protected void publishResults(CharSequence charSequence, FilterResults filterResults) {
        Cursor cursor = this.a.getCursor();
        if (filterResults.values != null && filterResults.values != cursor) {
            this.a.changeCursor((Cursor) filterResults.values);
        }
    }
}