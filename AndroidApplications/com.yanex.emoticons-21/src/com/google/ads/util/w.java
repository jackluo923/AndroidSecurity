package com.google.ads.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;

final class w implements OnClickListener {
    final /* synthetic */ JsPromptResult a;

    w(JsPromptResult jsPromptResult) {
        this.a = jsPromptResult;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.cancel();
    }
}