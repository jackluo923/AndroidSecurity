package com.wopnersoft.unitconverter.plus.util;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class d implements OnClickListener {
    private final /* synthetic */ Context a;
    private final /* synthetic */ Dialog b;

    d(Context context, Dialog dialog) {
        this.a = context;
        this.b = dialog;
    }

    public void onClick(View view) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.android.com/details?id=org.wopnersoft.unitconverter")));
        this.b.dismiss();
    }
}