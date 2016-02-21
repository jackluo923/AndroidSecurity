package com.wopnersoft.unitconverter.plus.b;

import android.view.View;
import android.view.View.OnClickListener;
import com.wopnersoft.unitconverter.plus.d.e;

// compiled from: ProGuard
class b implements OnClickListener {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void onClick(View view) {
        this.a.m = a.a(this.a);
        if (e.h.booleanValue()) {
            this.a.showDialog(8888);
        }
    }
}