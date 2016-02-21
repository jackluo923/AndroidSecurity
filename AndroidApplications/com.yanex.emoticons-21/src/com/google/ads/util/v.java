package com.google.ads.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.JsPromptResult;

final class v implements OnCancelListener {
    final /* synthetic */ JsPromptResult a;

    v(JsPromptResult jsPromptResult) {
        this.a = jsPromptResult;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        this.a.cancel();
    }
}