package com.wopnersoft.unitconverter.plus;

import android.util.Log;
import com.wopnersoft.unitconverter.plus.a.i;
import com.wopnersoft.unitconverter.plus.a.k;

// compiled from: ProGuard
class p implements i {
    final /* synthetic */ UnitConverterConvertMenu a;

    p(UnitConverterConvertMenu unitConverterConvertMenu) {
        this.a = unitConverterConvertMenu;
    }

    public void a(k kVar) {
        Log.d("Unit Converter", "Setup finished.");
        if (kVar.b() && this.a.i != null) {
            Log.d("Unit Converter", "Setup successful. Querying inventory.");
            this.a.i.a(this.a.b);
        }
    }
}