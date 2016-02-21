package com.wopnersoft.unitconverter.plus.specialized;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

// compiled from: ProGuard
class i implements OnEditorActionListener {
    final /* synthetic */ FractionToDecimalConverter a;

    i(FractionToDecimalConverter fractionToDecimalConverter) {
        this.a = fractionToDecimalConverter;
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (this.a.p().booleanValue()) {
            this.a.l();
        }
        return false;
    }
}