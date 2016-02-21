package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.EditText;
import com.actionbarsherlock.R;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public class ClearableEditText extends EditText {
    private Drawable a;
    private l b;
    private Boolean c;

    public ClearableEditText(Context context) {
        super(context);
        this.b = null;
        this.c = Boolean.valueOf(true);
        a();
    }

    public ClearableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = null;
        this.c = Boolean.valueOf(true);
        a();
    }

    public ClearableEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = null;
        this.c = Boolean.valueOf(true);
        a();
    }

    private void c() {
        if (this.b != null) {
            this.b.a();
        }
    }

    void a() {
        if (!isInEditMode()) {
            this.a = getResources().getDrawable(f.a().a((int)R.styleable.SherlockTheme_actionBarSplitStyle));
            this.c = Boolean.valueOf(true);
            this.a.setBounds(R.styleable.SherlockTheme_actionBarSplitStyle, 0, this.a.getIntrinsicWidth(), this.a.getIntrinsicHeight());
            b();
            setOnTouchListener(new j(this));
            addTextChangedListener(new k(this));
        }
    }

    void b() {
        if (getText().toString().equals("")) {
            setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
        } else {
            setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], this.a, getCompoundDrawables()[3]);
        }
    }

    public boolean onCheckIsTextEditor() {
        if (this.c == null) {
            this.c = Boolean.valueOf(true);
        }
        return this.c.booleanValue();
    }

    public void setIsTextEditor(Boolean bool) {
        this.c = bool;
    }

    public void setOnClearButtonPressedListener(l lVar) {
        this.b = lVar;
    }
}