package com.wopnersoft.unitconverter.plus.util;

import android.text.Editable;
import android.text.TextWatcher;

// compiled from: ProGuard
class k implements TextWatcher {
    final /* synthetic */ ClearableEditText a;

    k(ClearableEditText clearableEditText) {
        this.a = clearableEditText;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.a.b();
    }
}