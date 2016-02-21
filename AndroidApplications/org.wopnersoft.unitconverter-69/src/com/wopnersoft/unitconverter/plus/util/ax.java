package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public final class ax extends BaseAdapter {
    private final Context a;
    private final LayoutInflater b;
    private final int c;
    private final int d;
    private final String[] e;
    private final String[] f;
    private final int g;
    private final int h;
    private final float i;
    private final Boolean j;

    public ax(Context context, SharedPreferences sharedPreferences, String[] strArr, String[] strArr2, int i, int i2, float f, Boolean bool) {
        this.a = context;
        this.e = (String[]) strArr.clone();
        this.f = (String[]) strArr2.clone();
        this.b = LayoutInflater.from(context);
        this.d = f.a().f();
        this.c = f.a().e();
        this.g = i;
        this.h = i2;
        this.i = f;
        this.j = bool;
    }

    public int getCount() {
        return this.e.length;
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        ay ayVar;
        if (view == null) {
            view = this.b.inflate(2130903090, null);
            ay ayVar2 = new ay();
            ayVar2.a = (TextView) view.findViewById(2131034209);
            ayVar2.b = (TextView) view.findViewById(2131034210);
            if (this.g > 0) {
                ayVar2.a.setLayoutParams(new LayoutParams(-1, -2, (float) this.g));
            }
            if (this.h > 0) {
                ayVar2.b.setLayoutParams(new LayoutParams(-1, -2, (float) this.h));
            }
            if (this.i > 0.0f) {
                ayVar2.a.setTextSize(this.i);
                ayVar2.b.setTextSize(this.i);
            }
            ayVar2.a.setTextColor(this.c);
            ayVar2.b.setTextColor(this.c);
            view.setTag(ayVar2);
            ayVar = ayVar2;
        } else {
            ayVar = (ay) view.getTag();
        }
        if (i % 2 == 0) {
            view.setBackgroundColor(this.d);
        } else {
            view.setBackgroundColor(0);
        }
        ayVar.a.setText(this.f[i]);
        ayVar.b.setText(this.e[i]);
        if (this.j.booleanValue()) {
            b.a(this.a, this.e[i], ayVar.b, Boolean.valueOf(true));
        }
        return view;
    }
}