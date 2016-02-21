package com.google.android.gms.drive.widget;

import android.content.Context;
import android.database.CursorIndexOutOfBoundsException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.gms.common.data.DataBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class DataBufferAdapter extends BaseAdapter {
    private final int Fj;
    private int Fk;
    private final int Fl;
    private final List Fm;
    private final LayoutInflater Fn;
    private boolean Fo;
    private final Context mContext;

    public DataBufferAdapter(Context context, int i) {
        this(context, i, 0, new ArrayList());
    }

    public DataBufferAdapter(Context context, int i, int i2) {
        this(context, i, i2, new ArrayList());
    }

    public DataBufferAdapter(Context context, int i, int i2, List list) {
        this.Fo = true;
        this.mContext = context;
        this.Fk = i;
        this.Fj = i;
        this.Fl = i2;
        this.Fm = list;
        this.Fn = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public DataBufferAdapter(Context context, int i, int i2, DataBuffer... dataBufferArr) {
        this(context, i, i2, Arrays.asList(dataBufferArr));
    }

    public DataBufferAdapter(Context context, int i, List list) {
        this(context, i, 0, list);
    }

    public DataBufferAdapter(Context context, int i, DataBuffer... dataBufferArr) {
        this(context, i, 0, Arrays.asList(dataBufferArr));
    }

    private View a(int i, View view, ViewGroup viewGroup, int i2) {
        View inflate = view == null ? this.Fn.inflate(i2, viewGroup, false) : view;
        try {
            TextView textView = this.Fl == 0 ? (TextView) inflate : (TextView) inflate.findViewById(this.Fl);
            Object item = getItem(i);
            if (item instanceof CharSequence) {
                textView.setText((CharSequence) item);
            } else {
                textView.setText(item.toString());
            }
            return inflate;
        } catch (ClassCastException e) {
            Throwable th = e;
            Log.e("DataBufferAdapter", "You must supply a resource ID for a TextView");
            throw new IllegalStateException("DataBufferAdapter requires the resource ID to be a TextView", th);
        }
    }

    public void append(DataBuffer dataBuffer) {
        this.Fm.add(dataBuffer);
        if (this.Fo) {
            notifyDataSetChanged();
        }
    }

    public void clear() {
        Iterator it = this.Fm.iterator();
        while (it.hasNext()) {
            ((DataBuffer) it.next()).close();
        }
        this.Fm.clear();
        if (this.Fo) {
            notifyDataSetChanged();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getCount() {
        Iterator it = this.Fm.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = ((DataBuffer) it.next()).getCount() + i;
        }
        return i;
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return a(i, view, viewGroup, this.Fk);
    }

    public Object getItem(int i) {
        Iterator it = this.Fm.iterator();
        int i2 = i;
        while (it.hasNext()) {
            DataBuffer dataBuffer = (DataBuffer) it.next();
            int count = dataBuffer.getCount();
            if (count <= i2) {
                i2 -= count;
            } else {
                try {
                    return dataBuffer.get(i2);
                } catch (CursorIndexOutOfBoundsException e) {
                    throw new CursorIndexOutOfBoundsException(i, getCount());
                }
            }
        }
        throw new CursorIndexOutOfBoundsException(i, getCount());
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return a(i, view, viewGroup, this.Fj);
    }

    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.Fo = true;
    }

    public void setDropDownViewResource(int i) {
        this.Fk = i;
    }

    public void setNotifyOnChange(boolean z) {
        this.Fo = z;
    }
}