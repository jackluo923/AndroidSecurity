package com.wopnersoft.unitconverter.plus.b;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;

// compiled from: ProGuard
class f implements OnItemSelectedListener {
    final /* synthetic */ a a;

    f(a aVar) {
        this.a = aVar;
    }

    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        if (view != null) {
            try {
                this.a.b(((TextView) view).getText().toString());
                if (this.a.k.booleanValue()) {
                    a.c(this.a).performClick();
                }
            } catch (Exception e) {
                this.a.l.a("mSpinnerTo.setOnItemSelectedListener", "Error setting to spinner selected", e);
            }
        }
    }

    public void onNothingSelected(AdapterView adapterView) {
    }
}