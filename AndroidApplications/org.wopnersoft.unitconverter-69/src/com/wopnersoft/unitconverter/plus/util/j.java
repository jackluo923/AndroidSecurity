package com.wopnersoft.unitconverter.plus.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

// compiled from: ProGuard
class j implements OnTouchListener {
    final /* synthetic */ ClearableEditText a;

    j(ClearableEditText clearableEditText) {
        this.a = clearableEditText;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        ClearableEditText clearableEditText = this.a;
        if (clearableEditText.getCompoundDrawables()[2] != null && motionEvent.getAction() == 1 && motionEvent.getX() > ((float) (clearableEditText.getWidth() - clearableEditText.getPaddingRight() - this.a.a.getIntrinsicWidth()))) {
            clearableEditText.setText("");
            this.a.b();
            this.a.c();
        }
        return false;
    }
}