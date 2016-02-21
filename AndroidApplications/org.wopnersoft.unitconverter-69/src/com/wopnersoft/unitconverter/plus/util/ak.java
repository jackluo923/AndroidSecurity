package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class ak implements OnClickListener {
    final /* synthetic */ ListFilterDialog a;

    ak(ListFilterDialog listFilterDialog) {
        this.a = listFilterDialog;
    }

    public void onClick(View view) {
        this.a.finish();
    }
}