package com.wopnersoft.unitconverter.plus.b;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.TextView;

// compiled from: ProGuard
class c implements OnItemClickListener {
    final /* synthetic */ a a;

    c(a aVar) {
        this.a = aVar;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        int position = ((ArrayAdapter) a.e(this.a).getAdapter()).getPosition(((TextView) view).getText().toString());
        this.a.k = Boolean.valueOf(true);
        a.e(this.a).setSelection(position);
        this.a.dismissDialog(8988);
    }
}