package com.wopnersoft.unitconverter.plus.util;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class y implements OnClickListener {
    final /* synthetic */ ErrorLogDialog a;

    y(ErrorLogDialog errorLogDialog) {
        this.a = errorLogDialog;
    }

    public void onClick(View view) {
        this.a.startActivity(new Intent(this.a, SqliteRawViewer.class));
    }
}