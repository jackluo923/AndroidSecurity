package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

// compiled from: ProGuard
class ap implements OnClickListener {
    private final /* synthetic */ Context a;

    ap(Context context) {
        this.a = context;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.a.getString(2131361817))));
    }
}