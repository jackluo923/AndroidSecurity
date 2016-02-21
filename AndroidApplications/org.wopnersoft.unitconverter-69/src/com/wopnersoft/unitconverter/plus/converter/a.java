package com.wopnersoft.unitconverter.plus.converter;

import android.util.Log;
import com.wopnersoft.unitconverter.plus.a.h;
import com.wopnersoft.unitconverter.plus.a.k;
import com.wopnersoft.unitconverter.plus.a.m;

// compiled from: ProGuard
class a implements h {
    final /* synthetic */ CurrencyConverter a;

    a(CurrencyConverter currencyConverter) {
        this.a = currencyConverter;
    }

    public void a_(k kVar, m mVar) {
        Log.d("CurrencyConverter", new StringBuilder("Purchase finished: ").append(kVar).append(", purchase: ").append(mVar).toString());
        if (this.a.r != null && !kVar.c()) {
            if (this.a.l.a(mVar)) {
                Log.d("CurrencyConverter", "Purchase successful.");
                if (mVar.b().equals("org.wopnersoft.unitconverter.pro_currency")) {
                    Log.d("CurrencyConverter", "Purchase is premium upgrade. Congratulating user.");
                    this.a.r(this.a.getString(2131361918));
                    this.a.l.a(Boolean.valueOf(true));
                    this.a.D();
                }
            } else {
                this.a.q("Error purchasing. Authenticity verification failed.");
            }
        }
    }
}