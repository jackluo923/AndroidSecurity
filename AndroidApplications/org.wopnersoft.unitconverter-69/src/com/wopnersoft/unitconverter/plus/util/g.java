package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public final class g extends BaseAdapter {
    private final LayoutInflater a;
    private final long[] b;
    private long c;
    private final UnitConverterApplication d;
    private final Resources e;

    public g(Context context, SharedPreferences sharedPreferences, long[] jArr, long j) {
        this.a = LayoutInflater.from(context);
        this.b = (long[]) jArr.clone();
        this.d = (UnitConverterApplication) context.getApplicationContext();
        this.e = this.d.getResources();
        if (j < 0) {
            this.c = sharedPreferences.getLong("filterListORed", 17179869183L);
        } else {
            this.c = j;
        }
    }

    public long a() {
        return this.c;
    }

    public void a(long j) {
        this.c = j;
    }

    public int getCount() {
        return this.b.length;
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        i iVar;
        if (view == null) {
            view = this.a.inflate(2130903066, null);
            i iVar2 = new i();
            iVar2.b = (TextView) view.findViewById(2131034209);
            iVar2.c = (TextView) view.findViewById(2131034210);
            iVar2.d = (ImageView) view.findViewById(2131034208);
            iVar2.e = (CheckBox) view.findViewById(2131034211);
            iVar2.e.setOnClickListener(new h(this));
            view.setTag(iVar2);
            iVar2.e.setTag(iVar2);
            iVar = iVar2;
        } else {
            iVar = (i) view.getTag();
        }
        int a = this.d.a(this.b[i]);
        iVar.b.setText(this.e.getString(UnitConverterApplication.b[a]));
        iVar.c.setText(this.e.getString(UnitConverterApplication.c[a]));
        iVar.a = Long.valueOf(this.b[i]);
        b.a(iVar.d);
        iVar.d.setImageDrawable(f.a().a(this.b[i]));
        iVar.e.setChecked((iVar.a.longValue() & this.c) == iVar.a.longValue());
        return view;
    }
}