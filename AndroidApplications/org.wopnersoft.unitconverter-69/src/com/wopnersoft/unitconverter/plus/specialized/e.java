package com.wopnersoft.unitconverter.plus.specialized;

import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class e implements OnClickListener {
    final /* synthetic */ DecimalToFractionConverter a;

    e(DecimalToFractionConverter decimalToFractionConverter) {
        this.a = decimalToFractionConverter;
    }

    public void onClick(View view) {
        this.a.r = "ex";
        this.a.l();
    }
}