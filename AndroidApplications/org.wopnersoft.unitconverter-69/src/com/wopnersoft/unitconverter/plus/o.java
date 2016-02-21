package com.wopnersoft.unitconverter.plus;

import android.util.Log;
import com.wopnersoft.unitconverter.plus.a.j;
import com.wopnersoft.unitconverter.plus.a.k;
import com.wopnersoft.unitconverter.plus.a.l;
import com.wopnersoft.unitconverter.plus.a.m;

// compiled from: ProGuard
class o implements j {
    final /* synthetic */ UnitConverterConvertMenu a;

    o(UnitConverterConvertMenu unitConverterConvertMenu) {
        this.a = unitConverterConvertMenu;
    }

    public void a(k kVar, l lVar) {
        Log.d("Unit Converter", "Query inventory finished.");
        if (this.a.i != null && !kVar.c()) {
            boolean z;
            Log.d("Unit Converter", "Query inventory was successful.");
            m a = lVar.a("org.wopnersoft.unitconverter.pro_currency");
            z = a != null && this.a.c.a(a);
            Boolean valueOf = Boolean.valueOf(z);
            this.a.c.a(valueOf);
            Log.d("Unit Converter", new StringBuilder("User is ").append(valueOf.booleanValue() ? "PRO_CURRENCY" : "NOT PRO_CURRENCY").toString());
            Log.d("Unit Converter", "Initial inventory query finished; enabling main UI.");
        }
    }
}