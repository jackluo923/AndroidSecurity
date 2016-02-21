package com.wopnersoft.unitconverter.plus.util;

import android.app.Dialog;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class e implements OnClickListener {
    private final /* synthetic */ Editor a;
    private final /* synthetic */ Dialog b;

    e(Editor editor, Dialog dialog) {
        this.a = editor;
        this.b = dialog;
    }

    public void onClick(View view) {
        this.a.putLong("date_firstlaunch", Long.valueOf(System.currentTimeMillis()).longValue()).commit();
        this.b.dismiss();
    }
}