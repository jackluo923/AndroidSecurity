package com.wopnersoft.unitconverter.plus.converter;

import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class c implements OnClickListener {
    final /* synthetic */ CurrencyConverter a;

    c(CurrencyConverter currencyConverter) {
        this.a = currencyConverter;
    }

    public void onClick(View view) {
        this.a.showDialog(0);
    }
}