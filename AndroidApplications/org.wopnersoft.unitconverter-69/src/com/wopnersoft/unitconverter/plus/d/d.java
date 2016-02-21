package com.wopnersoft.unitconverter.plus.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

// compiled from: ProGuard
class d extends ArrayAdapter {
    private final float a;
    private final Boolean b;
    private final Context c;

    private d(Context context, int i, Object[] objArr, float f, Boolean bool) {
        super(context, i, objArr);
        this.a = f;
        this.b = bool;
        this.c = context;
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        View dropDownView = super.getDropDownView(i, view, viewGroup);
        if (this.b.booleanValue() && dropDownView instanceof TextView) {
            TextView textView = (TextView) dropDownView;
            textView.setTextSize(this.a);
            if (this.b.booleanValue()) {
                b.a(this.c, textView.getText().toString(), textView, Boolean.valueOf(true));
            } else {
                b.a(textView);
            }
        }
        return dropDownView;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            textView.setTextSize(this.a);
            if (this.b.booleanValue()) {
                b.a(this.c, textView.getText().toString(), textView, Boolean.valueOf(true));
            } else {
                b.a(textView);
            }
        }
        return view2;
    }
}