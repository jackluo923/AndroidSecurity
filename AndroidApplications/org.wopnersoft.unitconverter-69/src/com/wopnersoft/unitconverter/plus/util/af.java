package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public class af extends ArrayAdapter {
    final Context a;
    final Boolean b;

    public af(Context context, int i, String[] strArr, Boolean bool) {
        super(context, i, strArr);
        this.a = context;
        this.b = bool;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 != null) {
            TextView textView = (TextView) view2.findViewById(2131034209);
            textView.setTextColor(f.a().e());
            view2.setBackgroundColor(f.a().d());
            if (this.b.booleanValue()) {
                b.a(this.a, textView.getText().toString(), textView, Boolean.valueOf(true));
            } else {
                b.a(textView);
            }
        }
        return view2;
    }
}