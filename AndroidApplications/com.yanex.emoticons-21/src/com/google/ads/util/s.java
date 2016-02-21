package com.google.ads.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.JsResult;

final class s implements OnCancelListener {
    final /* synthetic */ JsResult a;

    s(JsResult jsResult) {
        this.a = jsResult;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        this.a.cancel();
    }
}