package com.wopnersoft.unitconverter.plus.specialized;

import android.view.View;
import android.view.View.OnClickListener;
import com.wopnersoft.unitconverter.plus.d.e;

// compiled from: ProGuard
class j implements OnClickListener {
    final /* synthetic */ FractionToDecimalConverter a;

    j(FractionToDecimalConverter fractionToDecimalConverter) {
        this.a = fractionToDecimalConverter;
    }

    public void onClick(View view) {
        this.a.m = this.a.g;
        if (e.h.booleanValue()) {
            this.a.showDialog(8888);
        }
    }
}