package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class a extends BaseAdapter implements e, Filterable {
    @Deprecated
    public static final int FLAG_AUTO_REQUERY = 1;
    public static final int FLAG_REGISTER_CONTENT_OBSERVER = 2;
    protected boolean mAutoRequery;
    protected b mChangeObserver;
    protected Context mContext;
    protected Cursor mCursor;
    protected d mCursorFilter;
    protected DataSetObserver mDataSetObserver;
    protected boolean mDataValid;
    protected FilterQueryProvider mFilterQueryProvider;
    protected int mRowIDColumn;

    @Deprecated
    public a(Context context, Cursor cursor) {
        init(context, cursor, (int)FLAG_AUTO_REQUERY);
    }

    public a(Context context, Cursor cursor, int i) {
        init(context, cursor, i);
    }

    public a(Context context, Cursor cursor, boolean z) {
        init(context, cursor, z ? FLAG_AUTO_REQUERY : FLAG_REGISTER_CONTENT_OBSERVER);
    }

    public abstract void bindView(View view, Context context, Cursor cursor);

    public void changeCursor(Cursor cursor) {
        Cursor swapCursor = swapCursor(cursor);
        if (swapCursor != null) {
            swapCursor.close();
        }
    }

    public CharSequence convertToString(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    public int getCount() {
        return (!this.mDataValid || this.mCursor == null) ? 0 : this.mCursor.getCount();
    }

    public Cursor getCursor() {
        return this.mCursor;
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.mDataValid) {
            return null;
        }
        this.mCursor.moveToPosition(i);
        if (view == null) {
            view = newDropDownView(this.mContext, this.mCursor, viewGroup);
        }
        bindView(view, this.mContext, this.mCursor);
        return view;
    }

    public Filter getFilter() {
        if (this.mCursorFilter == null) {
            this.mCursorFilter = new d(this);
        }
        return this.mCursorFilter;
    }

    public FilterQueryProvider getFilterQueryProvider() {
        return this.mFilterQueryProvider;
    }

    public Object getItem(int i) {
        if (!this.mDataValid || this.mCursor == null) {
            return null;
        }
        this.mCursor.moveToPosition(i);
        return this.mCursor;
    }

    public long getItemId(int i) {
        return (this.mDataValid && this.mCursor != null && this.mCursor.moveToPosition(i)) ? this.mCursor.getLong(this.mRowIDColumn) : 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.mDataValid) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.mCursor.moveToPosition(i)) {
            if (view == null) {
                view = newView(this.mContext, this.mCursor, viewGroup);
            }
            bindView(view, this.mContext, this.mCursor);
            return view;
        } else {
            throw new IllegalStateException(new StringBuilder("couldn't move cursor to position ").append(i).toString());
        }
    }

    public boolean hasStableIds() {
        return true;
    }

    void init(Context context, Cursor cursor, int i) {
        boolean z = true;
        if ((i & 1) == 1) {
            i |= 2;
            this.mAutoRequery = true;
        } else {
            this.mAutoRequery = false;
        }
        if (cursor == null) {
            z = false;
        }
        this.mCursor = cursor;
        this.mDataValid = z;
        this.mContext = context;
        this.mRowIDColumn = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.mChangeObserver = new b(this);
            this.mDataSetObserver = new c((byte) 0);
        } else {
            this.mChangeObserver = null;
            this.mDataSetObserver = null;
        }
        if (z) {
            if (this.mChangeObserver != null) {
                cursor.registerContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor.registerDataSetObserver(this.mDataSetObserver);
            }
        }
    }

    @Deprecated
    protected void init(Context context, Cursor cursor, boolean z) {
        init(context, cursor, z ? FLAG_AUTO_REQUERY : FLAG_REGISTER_CONTENT_OBSERVER);
    }

    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return newView(context, cursor, viewGroup);
    }

    public abstract View newView(Context context, Cursor cursor, ViewGroup viewGroup);

    protected void onContentChanged() {
        if (this.mAutoRequery && this.mCursor != null && !this.mCursor.isClosed()) {
            this.mDataValid = this.mCursor.requery();
        }
    }

    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        return this.mFilterQueryProvider != null ? this.mFilterQueryProvider.runQuery(charSequence) : this.mCursor;
    }

    public void setFilterQueryProvider(FilterQueryProvider filterQueryProvider) {
        this.mFilterQueryProvider = filterQueryProvider;
    }

    public Cursor swapCursor(Cursor cursor) {
        if (cursor == this.mCursor) {
            return null;
        }
        Cursor cursor2 = this.mCursor;
        if (cursor2 != null) {
            if (this.mChangeObserver != null) {
                cursor2.unregisterContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor2.unregisterDataSetObserver(this.mDataSetObserver);
            }
        }
        this.mCursor = cursor;
        if (cursor != null) {
            if (this.mChangeObserver != null) {
                cursor.registerContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor.registerDataSetObserver(this.mDataSetObserver);
            }
            this.mRowIDColumn = cursor.getColumnIndexOrThrow("_id");
            this.mDataValid = true;
            notifyDataSetChanged();
            return cursor2;
        } else {
            this.mRowIDColumn = -1;
            this.mDataValid = false;
            notifyDataSetInvalidated();
            return cursor2;
        }
    }
}