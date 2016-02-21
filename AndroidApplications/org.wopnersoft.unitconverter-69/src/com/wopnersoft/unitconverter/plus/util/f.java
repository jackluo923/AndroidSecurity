package com.wopnersoft.unitconverter.plus.util;

import android.app.Dialog;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;

// compiled from: ProGuard
class f implements OnClickListener {
    private final /* synthetic */ Editor a;
    private final /* synthetic */ Dialog b;

    f(Editor editor, Dialog dialog) {
        this.a = editor;
        this.b = dialog;
    }

    public void onClick(View view) {
        if (this.a != null) {
            this.a.putBoolean("dontshowagain", true);
            this.a.commit();
        }
        this.b.dismiss();
    }
}