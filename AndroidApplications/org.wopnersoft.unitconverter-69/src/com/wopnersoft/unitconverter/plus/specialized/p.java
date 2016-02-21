package com.wopnersoft.unitconverter.plus.specialized;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

// compiled from: ProGuard
class p implements OnItemSelectedListener {
    final /* synthetic */ dBmToWattConverter a;

    p(dBmToWattConverter com_wopnersoft_unitconverter_plus_specialized_dBmToWattConverter) {
        this.a = com_wopnersoft_unitconverter_plus_specialized_dBmToWattConverter;
    }

    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        dBmToWattConverter.a(this.a);
    }

    public void onNothingSelected(AdapterView adapterView) {
    }
}