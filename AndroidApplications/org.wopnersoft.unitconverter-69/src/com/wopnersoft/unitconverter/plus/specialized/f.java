package com.wopnersoft.unitconverter.plus.specialized;

import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class f implements OnClickListener {
    final /* synthetic */ DecimalToFractionConverter a;

    f(DecimalToFractionConverter decimalToFractionConverter) {
        this.a = decimalToFractionConverter;
    }

    public void onClick(View view) {
        this.a.r = "rl";
        this.a.l();
    }
}