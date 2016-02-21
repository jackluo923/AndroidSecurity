package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.Locale;

public class CapitalizingTextView extends TextView {
    private static final boolean IS_GINGERBREAD;
    private static final int[] R_styleable_TextView;
    private static final int R_styleable_TextView_textAllCaps = 0;
    private static final boolean SANS_ICE_CREAM;
    private boolean mAllCaps;

    static {
        SANS_ICE_CREAM = VERSION.SDK_INT < 14;
        IS_GINGERBREAD = VERSION.SDK_INT >= 9;
        R_styleable_TextView = new int[]{16843660};
    }

    public CapitalizingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CapitalizingTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R_styleable_TextView, i, 0);
        this.mAllCaps = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
    }

    public void setTextCompat(CharSequence charSequence) {
        if (!SANS_ICE_CREAM || !this.mAllCaps || charSequence == null) {
            setText(charSequence);
        } else if (IS_GINGERBREAD) {
            try {
                setText(charSequence.toString().toUpperCase(Locale.ROOT));
            } catch (NoSuchFieldError e) {
                setText(charSequence.toString().toUpperCase());
            }
        } else {
            setText(charSequence.toString().toUpperCase());
        }
    }
}