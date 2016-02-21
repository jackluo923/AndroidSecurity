package com.google.ads.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsResult;

final class u implements OnClickListener {
    final /* synthetic */ JsResult a;

    u(JsResult jsResult) {
        this.a = jsResult;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.confirm();
    }
}