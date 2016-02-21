package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;

// compiled from: ProGuard
class v implements OnClickListener {
    final /* synthetic */ ErrorLogDialog a;
    private final /* synthetic */ UnitConverterApplication b;

    v(ErrorLogDialog errorLogDialog, UnitConverterApplication unitConverterApplication) {
        this.a = errorLogDialog;
        this.b = unitConverterApplication;
    }

    public void onClick(View view) {
        if (this.b.d().booleanValue()) {
            ((TextView) this.a.findViewById(2131034135)).setText(this.b.e());
        }
    }
}