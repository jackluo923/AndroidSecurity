package com.wopnersoft.unitconverter.plus.specialized;

import android.view.View;
import android.view.View.OnClickListener;
import com.wopnersoft.unitconverter.plus.d.e;

// compiled from: ProGuard
class l implements OnClickListener {
    final /* synthetic */ FractionToDecimalConverter a;

    l(FractionToDecimalConverter fractionToDecimalConverter) {
        this.a = fractionToDecimalConverter;
    }

    public void onClick(View view) {
        this.a.m = this.a.h;
        if (e.h.booleanValue()) {
            this.a.showDialog(8888);
        }
    }
}