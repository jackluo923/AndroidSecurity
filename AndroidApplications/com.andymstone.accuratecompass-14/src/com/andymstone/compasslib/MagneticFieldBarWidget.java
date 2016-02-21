package com.andymstone.compasslib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class MagneticFieldBarWidget extends FrameLayout {
    final View a;
    final View b;
    int c;
    int d;

    public MagneticFieldBarWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = -1;
        this.d = -1;
        View inflate = LayoutInflater.from(context).inflate(t.magnetic_field_bar, this);
        this.a = inflate.findViewById(s.mfb_slider);
        this.b = inflate.findViewById(s.mfb_main_bar);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.b != null) {
            LayoutParams layoutParams = (LayoutParams) this.b.getLayoutParams();
            if (layoutParams != null) {
                this.c = layoutParams.leftMargin;
                this.d = layoutParams.width + this.c;
            }
        }
    }

    public void setValue(int i) {
        if (this.c != -1) {
            LayoutParams layoutParams = (LayoutParams) this.a.getLayoutParams();
            layoutParams.setMargins((int) (Math.min((double) (this.d - this.c - this.a.getWidth()), (((double) i) / 100.0d) * ((double) (this.d - this.c))) + ((double) this.c)), layoutParams.topMargin, layoutParams.rightMargin, layoutParams.bottomMargin);
            this.a.setLayoutParams(layoutParams);
            this.a.requestLayout();
        }
    }
}