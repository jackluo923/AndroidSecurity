package com.wopnersoft.unitconverter.plus.util;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;
import com.wopnersoft.unitconverter.plus.converter.CurrencyConverter;
import java.util.Random;

// compiled from: ProGuard
class x implements OnClickListener {
    final /* synthetic */ ErrorLogDialog a;
    private final /* synthetic */ UnitConverterApplication b;

    x(ErrorLogDialog errorLogDialog, UnitConverterApplication unitConverterApplication) {
        this.a = errorLogDialog;
        this.b = unitConverterApplication;
    }

    public void onClick(View view) {
        int nextInt = new Random().nextInt(99999);
        this.b.a("debugDownloadMode", Integer.valueOf(nextInt));
        Intent intent = new Intent(this.a, CurrencyConverter.class);
        intent.putExtra("debugDownloadMode", nextInt);
        intent.putExtra("debugTestLinks", true);
        this.a.startActivity(intent);
    }
}