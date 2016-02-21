package com.wopnersoft.unitconverter.plus.b;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;

// compiled from: ProGuard
class n implements OnClickListener {
    final /* synthetic */ a a;

    n(a aVar) {
        this.a = aVar;
    }

    public void onClick(View view) {
        int i = 0;
        try {
            if (this.a.u().booleanValue()) {
                ((InputMethodManager) this.a.getSystemService("input_method")).hideSoftInputFromWindow(a.d(this.a).getWindowToken(), i);
                a.d(this.a).clearFocus();
            } else {
                this.a.v();
                ((InputMethodManager) this.a.getSystemService("input_method")).hideSoftInputFromWindow(a.d(this.a).getWindowToken(), i);
                a.d(this.a).clearFocus();
            }
        } catch (Exception e) {
            this.a.a(this.a.getString(2131362058), "BaseConvertermBtnCompute.onClick", e);
            ((InputMethodManager) this.a.getSystemService("input_method")).hideSoftInputFromWindow(a.d(this.a).getWindowToken(), i);
            a.d(this.a).clearFocus();
        }
    }
}