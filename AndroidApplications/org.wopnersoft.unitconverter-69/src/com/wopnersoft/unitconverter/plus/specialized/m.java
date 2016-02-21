package com.wopnersoft.unitconverter.plus.specialized;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;

// compiled from: ProGuard
class m implements OnItemClickListener {
    final /* synthetic */ FractionToDecimalConverter a;

    m(FractionToDecimalConverter fractionToDecimalConverter) {
        this.a = fractionToDecimalConverter;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.a.b(((TextView) view).getText().toString());
        this.a.dismissDialog(14785);
        this.a.l();
    }
}