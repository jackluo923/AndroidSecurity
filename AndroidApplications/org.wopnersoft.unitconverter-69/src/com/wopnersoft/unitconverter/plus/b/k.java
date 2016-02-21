package com.wopnersoft.unitconverter.plus.b;

import android.view.View;
import android.view.View.OnClickListener;
import com.wopnersoft.unitconverter.plus.d.e;

// compiled from: ProGuard
class k implements OnClickListener {
    final /* synthetic */ a a;

    k(a aVar) {
        this.a = aVar;
    }

    public void onClick(View view) {
        this.a.m = a.d(this.a);
        if (e.h.booleanValue()) {
            this.a.showDialog(8888);
        }
    }
}