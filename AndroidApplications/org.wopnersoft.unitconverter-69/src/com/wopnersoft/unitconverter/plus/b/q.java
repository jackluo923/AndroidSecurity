package com.wopnersoft.unitconverter.plus.b;

import android.view.View;
import android.view.View.OnClickListener;
import com.wopnersoft.unitconverter.plus.d.e;

// compiled from: ProGuard
class q implements OnClickListener {
    final /* synthetic */ o a;

    q(o oVar) {
        this.a = oVar;
    }

    public void onClick(View view) {
        this.a.m = this.a.d;
        if (e.h.booleanValue()) {
            this.a.showDialog(8888);
        }
    }
}