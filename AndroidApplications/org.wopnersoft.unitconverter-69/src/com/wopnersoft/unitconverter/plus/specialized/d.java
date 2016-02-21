package com.wopnersoft.unitconverter.plus.specialized;

import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class d implements OnClickListener {
    final /* synthetic */ DecimalToFractionConverter a;

    d(DecimalToFractionConverter decimalToFractionConverter) {
        this.a = decimalToFractionConverter;
    }

    public void onClick(View view) {
        this.a.r = "bm";
        this.a.l();
    }
}