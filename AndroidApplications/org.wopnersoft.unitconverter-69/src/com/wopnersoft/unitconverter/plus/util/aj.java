package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class aj implements OnClickListener {
    final /* synthetic */ ListFilterDialog a;

    aj(ListFilterDialog listFilterDialog) {
        this.a = listFilterDialog;
    }

    public void onClick(View view) {
        this.a.a.edit().putLong("filterListORed", this.a.b.a()).commit();
        this.a.l.a("filterList", Boolean.TRUE);
        this.a.finish();
    }
}