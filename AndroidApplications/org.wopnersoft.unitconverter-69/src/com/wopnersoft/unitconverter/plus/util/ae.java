package com.wopnersoft.unitconverter.plus.util;

import android.text.Editable;
import android.text.TextWatcher;

// compiled from: ProGuard
class ae implements TextWatcher {
    final /* synthetic */ ad a;

    ae(ad adVar) {
        this.a = adVar;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.a.c.getFilter().filter(charSequence);
    }
}