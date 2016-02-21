package com.wopnersoft.unitconverter.plus.util;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;
import com.wopnersoft.unitconverter.plus.b.w;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public final class t extends BaseAdapter {
    private final LayoutInflater a;
    private final w b;
    private final int c;
    private final long[] d;
    private final UnitConverterApplication e;
    private final Resources f;

    public t(w wVar, SharedPreferences sharedPreferences) {
        this.b = wVar;
        this.e = (UnitConverterApplication) ((Activity) this.b).getApplication();
        this.f = this.e.getResources();
        this.a = LayoutInflater.from((Context) wVar);
        this.c = f.a().e();
        this.d = this.b.c();
    }

    public int getCount() {
        return this.d == null ? 0 : this.d.length;
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        u uVar;
        Boolean valueOf = Boolean.valueOf(false);
        if (view == null) {
            view = this.a.inflate(2130903086, null);
            u uVar2 = new u();
            uVar2.c = (TextView) view.findViewById(2131034209);
            uVar2.d = (TextView) view.findViewById(2131034210);
            uVar2.e = (ImageView) view.findViewById(2131034208);
            uVar2.f = (ImageView) view.findViewById(2131034311);
            uVar2.c.setTextColor(this.c);
            uVar2.d.setTextColor(this.c);
            uVar2.c.setTextSize(e.a());
            uVar2.d.setTextSize(e.b());
            view.setTag(uVar2);
            uVar = uVar2;
        } else {
            uVar = (u) view.getTag();
        }
        long j = this.d[i];
        int a = this.e.a(j);
        uVar.a = this.b.a(i);
        uVar.b = j;
        uVar.c.setText(this.f.getString(UnitConverterApplication.b[a]));
        uVar.d.setText(this.b.b(i));
        b.a(uVar.e);
        uVar.e.setImageDrawable(f.a().a(j));
        if (this.b.a(j).booleanValue()) {
            b.a(uVar.f);
            if (valueOf.booleanValue() || this.c == -16777216) {
                uVar.f.setImageResource(2130837632);
            } else {
                uVar.f.setImageResource(2130837633);
            }
            uVar.f.setVisibility(0);
        } else {
            uVar.f.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
        return view;
    }
}