package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.e.a;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.et;

public final class SignInButton extends FrameLayout implements OnClickListener {
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int mSize;
    private int yX;
    private View yY;
    private OnClickListener yZ;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.yZ = null;
        setStyle(SIZE_STANDARD, SIZE_STANDARD);
    }

    private static Button c(Context context, int i, int i2) {
        Button etVar = new et(context);
        etVar.a(context.getResources(), i, i2);
        return etVar;
    }

    private void v(Context context) {
        if (this.yY != null) {
            removeView(this.yY);
        }
        try {
            this.yY = es.d(context, this.mSize, this.yX);
        } catch (a e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.yY = c(context, this.mSize, this.yX);
        }
        addView(this.yY);
        this.yY.setEnabled(isEnabled());
        this.yY.setOnClickListener(this);
    }

    public void onClick(View view) {
        if (this.yZ != null && view == this.yY) {
            this.yZ.onClick(this);
        }
    }

    public void setColorScheme(int i) {
        setStyle(this.mSize, i);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.yY.setEnabled(z);
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.yZ = onClickListener;
        if (this.yY != null) {
            this.yY.setOnClickListener(this);
        }
    }

    public void setSize(int i) {
        setStyle(i, this.yX);
    }

    public void setStyle(int i, int i2) {
        boolean z;
        boolean z2 = true;
        z = i >= 0 && i < 3;
        er.a(z, "Unknown button size " + i);
        if (i2 < 0 || i2 >= 2) {
            z2 = false;
        }
        er.a(z2, "Unknown color scheme " + i2);
        this.mSize = i;
        this.yX = i2;
        v(getContext());
    }
}