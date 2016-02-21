package com.yanex.emoticons.dragndroplist;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

public final class b extends BaseAdapter implements d {
    private int[] a;
    private int[] b;
    private LayoutInflater c;
    private List d;

    public b(Context context, int[] iArr, int[] iArr2, List list) {
        this.c = LayoutInflater.from(context);
        this.a = iArr2;
        this.b = iArr;
        this.d = list;
    }

    public final void a(int i, int i2) {
        String str = (String) this.d.get(i);
        this.d.remove(i);
        this.d.add(i2, str);
    }

    public final int getCount() {
        return this.d.size();
    }

    public final /* synthetic */ Object getItem(int i) {
        return (String) this.d.get(i);
    }

    public final long getItemId(int i) {
        return (long) i;
    }

    public final View getView(int i, View view, ViewGroup viewGroup) {
        c cVar;
        if (view == null) {
            view = this.c.inflate(this.b[0], null);
            cVar = new c();
            cVar.a = (TextView) view.findViewById(this.a[0]);
            view.setTag(cVar);
        } else {
            cVar = (c) view.getTag();
        }
        cVar.a.setText(Html.fromHtml(new StringBuilder("&nbsp;&nbsp;<font color=\"#777777\">\u21f5</font>&nbsp;&nbsp;&nbsp;").append((String) this.d.get(i)).toString()));
        return view;
    }
}