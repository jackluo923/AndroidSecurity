package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;

// compiled from: ProGuard
class z implements OnClickListener {
    final /* synthetic */ ErrorLogDialog a;
    private final /* synthetic */ UnitConverterApplication b;

    z(ErrorLogDialog errorLogDialog, UnitConverterApplication unitConverterApplication) {
        this.a = errorLogDialog;
        this.b = unitConverterApplication;
    }

    public void onClick(View view) {
        this.b.f();
        ((TextView) this.a.findViewById(2131034135)).setText("");
    }
}