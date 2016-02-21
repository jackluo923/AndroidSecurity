package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.eu;
import com.google.android.gms.plus.internal.g;

public final class PlusOneButton extends FrameLayout {
    public static final int ANNOTATION_BUBBLE = 1;
    public static final int ANNOTATION_INLINE = 2;
    public static final int ANNOTATION_NONE = 0;
    public static final int DEFAULT_ACTIVITY_REQUEST_CODE = -1;
    public static final int SIZE_MEDIUM = 1;
    public static final int SIZE_SMALL = 0;
    public static final int SIZE_STANDARD = 3;
    public static final int SIZE_TALL = 2;
    private View QV;
    private int QW;
    private int QX;
    private OnPlusOneClickListener QY;
    private int mSize;
    private String pS;

    public static interface OnPlusOneClickListener {
        void onPlusOneClick(Intent intent);
    }

    protected class DefaultOnPlusOneClickListener implements OnClickListener, com.google.android.gms.plus.PlusOneButton.OnPlusOneClickListener {
        private final com.google.android.gms.plus.PlusOneButton.OnPlusOneClickListener QZ;

        public DefaultOnPlusOneClickListener(com.google.android.gms.plus.PlusOneButton.OnPlusOneClickListener onPlusOneClickListener) {
            this.QZ = onPlusOneClickListener;
        }

        public void onClick(View view) {
            Intent intent = (Intent) PlusOneButton.this.QV.getTag();
            if (this.QZ != null) {
                this.QZ.onPlusOneClick(intent);
            } else {
                onPlusOneClick(intent);
            }
        }

        public void onPlusOneClick(Intent intent) {
            Context context = PlusOneButton.this.getContext();
            if (context instanceof Activity && intent != null) {
                ((Activity) context).startActivityForResult(intent, PlusOneButton.this.QX);
            }
        }
    }

    public PlusOneButton(Context context) {
        this(context, null);
    }

    public PlusOneButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSize = getSize(context, attributeSet);
        this.QW = getAnnotation(context, attributeSet);
        this.QX = -1;
        v(getContext());
        if (!isInEditMode()) {
        }
    }

    protected static int getAnnotation(Context context, AttributeSet attributeSet) {
        String a = eu.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", context, attributeSet, true, false, "PlusOneButton");
        if ("INLINE".equalsIgnoreCase(a)) {
            return SIZE_TALL;
        }
        return "NONE".equalsIgnoreCase(a) ? SIZE_SMALL : 1;
    }

    protected static int getSize(Context context, AttributeSet attributeSet) {
        String a = eu.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", context, attributeSet, true, false, "PlusOneButton");
        if ("SMALL".equalsIgnoreCase(a)) {
            return SIZE_SMALL;
        }
        if ("MEDIUM".equalsIgnoreCase(a)) {
            return 1;
        }
        return "TALL".equalsIgnoreCase(a) ? SIZE_TALL : SIZE_STANDARD;
    }

    private void v(Context context) {
        if (this.QV != null) {
            removeView(this.QV);
        }
        this.QV = g.a(context, this.mSize, this.QW, this.pS, this.QX);
        setOnPlusOneClickListener(this.QY);
        addView(this.QV);
    }

    public void initialize(String str, int i) {
        er.a(getContext() instanceof Activity, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(String, OnPlusOneClickListener).");
        this.pS = str;
        this.QX = i;
        v(getContext());
    }

    public void initialize(String str, OnPlusOneClickListener onPlusOneClickListener) {
        this.pS = str;
        this.QX = 0;
        v(getContext());
        setOnPlusOneClickListener(onPlusOneClickListener);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.QV.layout(SIZE_SMALL, SIZE_SMALL, i3 - i, i4 - i2);
    }

    protected void onMeasure(int i, int i2) {
        View view = this.QV;
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setAnnotation(int i) {
        this.QW = i;
        v(getContext());
    }

    public void setOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
        this.QY = onPlusOneClickListener;
        this.QV.setOnClickListener(new DefaultOnPlusOneClickListener(onPlusOneClickListener));
    }

    public void setSize(int i) {
        this.mSize = i;
        v(getContext());
    }
}