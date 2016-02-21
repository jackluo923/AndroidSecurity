package com.wopnersoft.unitconverter.plus.b;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

// compiled from: ProGuard
class j implements OnEditorActionListener {
    final /* synthetic */ a a;

    j(a aVar) {
        this.a = aVar;
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        a.c(this.a).performClick();
        return false;
    }
}