package com.wopnersoft.unitconverter.plus.specialized;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

// compiled from: ProGuard
class n implements OnItemSelectedListener {
    final /* synthetic */ GasMarkConverter a;

    n(GasMarkConverter gasMarkConverter) {
        this.a = gasMarkConverter;
    }

    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        try {
            this.a.b();
        } catch (Exception e) {
            this.a.a(this.a.getString(2131362058), "GasMarkConvertermSpinner.onItemSelected", e);
        }
    }

    public void onNothingSelected(AdapterView adapterView) {
    }
}