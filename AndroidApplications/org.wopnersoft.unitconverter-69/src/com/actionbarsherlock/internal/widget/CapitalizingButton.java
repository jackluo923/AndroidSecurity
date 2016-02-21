package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.Button;
import java.util.Locale;

// compiled from: ProGuard
public class CapitalizingButton extends Button {
    private static final boolean IS_GINGERBREAD;
    private static final int[] R_styleable_Button;
    private static final int R_styleable_Button_textAppearance = 0;
    private static final int[] R_styleable_TextAppearance;
    private static final int R_styleable_TextAppearance_textAllCaps = 0;
    private static final boolean SANS_ICE_CREAM;
    private boolean mAllCaps;

    static {
        SANS_ICE_CREAM = VERSION.SDK_INT < 14;
        IS_GINGERBREAD = VERSION.SDK_INT >= 9;
        R_styleable_Button = new int[]{16842804};
        R_styleable_TextAppearance = new int[]{16843660};
    }

    public CapitalizingButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R_styleable_Button);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        if (resourceId != -1) {
            obtainStyledAttributes = context.obtainStyledAttributes(resourceId, R_styleable_TextAppearance);
            if (obtainStyledAttributes != null) {
                this.mAllCaps = obtainStyledAttributes.getBoolean(0, true);
                obtainStyledAttributes.recycle();
            }
        }
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