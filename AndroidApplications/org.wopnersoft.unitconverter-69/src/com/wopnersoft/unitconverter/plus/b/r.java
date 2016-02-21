package com.wopnersoft.unitconverter.plus.b;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;

// compiled from: ProGuard
class r implements OnClickListener {
    final /* synthetic */ o a;

    r(o oVar) {
        this.a = oVar;
    }

    public void onClick(View view) {
        InputMethodManager inputMethodManager;
        View currentFocus;
        int i = 0;
        try {
            this.a.b();
            this.a.A();
            inputMethodManager = (InputMethodManager) this.a.getSystemService("input_method");
            if (this.a.d != null) {
                inputMethodManager.hideSoftInputFromWindow(this.a.d.getWindowToken(), i);
                this.a.d.clearFocus();
            } else {
                currentFocus = this.a.getCurrentFocus();
                if (currentFocus != null) {
                    inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), i);
                    currentFocus.clearFocus();
                }
            }
        } catch (Exception e) {
            try {
                this.a.a(this.a.getString(2131362058), "BaseCommonDelegateConvertermBtnCompute.onClick", e);
                inputMethodManager = (InputMethodManager) this.a.getSystemService("input_method");
                if (this.a.d != null) {
                    inputMethodManager.hideSoftInputFromWindow(this.a.d.getWindowToken(), i);
                    this.a.d.clearFocus();
                } else {
                    currentFocus = this.a.getCurrentFocus();
                    if (currentFocus != null) {
                        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), i);
                        currentFocus.clearFocus();
                    }
                }
            } catch (Throwable th) {
                Throwable th2 = th;
                inputMethodManager = (InputMethodManager) this.a.getSystemService("input_method");
                if (this.a.d != null) {
                    inputMethodManager.hideSoftInputFromWindow(this.a.d.getWindowToken(), i);
                    this.a.d.clearFocus();
                } else {
                    View currentFocus2 = this.a.getCurrentFocus();
                    if (currentFocus2 != null) {
                        inputMethodManager.hideSoftInputFromWindow(currentFocus2.getWindowToken(), i);
                        currentFocus2.clearFocus();
                    }
                }
            }
        }
    }
}