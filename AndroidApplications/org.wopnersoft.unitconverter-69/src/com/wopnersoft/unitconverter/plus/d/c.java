package com.wopnersoft.unitconverter.plus.d;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

// compiled from: ProGuard
class c implements OnKeyListener {
    private final /* synthetic */ Activity a;

    c(Activity activity) {
        this.a = activity;
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        this.a.onKeyDown(i, keyEvent);
        return false;
    }
}