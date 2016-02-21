package com.wopnersoft.unitconverter.plus.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.wopnersoft.unitconverter.plus.converter.CurrencyConverter;

// compiled from: ProGuard
class as implements OnClickListener {
    private final /* synthetic */ CurrencyConverter a;

    as(CurrencyConverter currencyConverter) {
        this.a = currencyConverter;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.C();
    }
}