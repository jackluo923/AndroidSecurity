package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;

// compiled from: ProGuard
class al implements OnClickListener {
    final /* synthetic */ ListFilterDialog a;

    al(ListFilterDialog listFilterDialog) {
        this.a = listFilterDialog;
    }

    public void onClick(View view) {
        if (((CheckBox) view).isChecked()) {
            this.a.b.a(17179869183L);
        } else {
            this.a.b.a(0);
        }
        this.a.b.notifyDataSetChanged();
    }
}