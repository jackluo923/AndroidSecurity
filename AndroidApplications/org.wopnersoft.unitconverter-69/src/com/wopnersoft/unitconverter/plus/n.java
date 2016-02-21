package com.wopnersoft.unitconverter.plus;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

// compiled from: ProGuard
class n implements OnClickListener {
    final /* synthetic */ Preferences a;

    n(Preferences preferences) {
        this.a = preferences;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(new StringBuilder("http://market.android.com/details?id=").append(this.a.c).toString())));
        this.a.finish();
    }
}