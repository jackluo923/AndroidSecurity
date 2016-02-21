package com.andymstone.compasslib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.andymstone.core.o;

public class DropShadowView extends FrameLayout {
    Paint a;
    Paint b;
    RectF c;
    final int d;
    final int e;
    final int f;

    public DropShadowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new Paint();
        this.b = new Paint();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, v.DropShadowView);
        this.e = obtainStyledAttributes.getDimensionPixelOffset(0, o.MyAlertDialog_MAD_textAppearanceMedium);
        this.d = obtainStyledAttributes.getDimensionPixelOffset(1, o.MyAlertDialog_myAlertDialogButtonDrawable);
        this.f = this.e * 2;
        setPadding(this.f + 13, this.f + 7, this.f + 13, this.f + 13);
        this.a.setColor(-11908534);
        this.a.setAntiAlias(true);
        this.a.setShadowLayer(10.0f, 3.0f, 3.0f, -16777216);
        this.b.setColor(-8947849);
        this.b.setStrokeWidth((float) this.d);
        this.b.setStyle(Style.STROKE);
        setWillNotDraw(false);
        invalidate();
    }

    public void onDraw(Canvas canvas) {
        if (this.c != null) {
            canvas.drawRoundRect(this.c, (float) this.e, (float) this.e, this.a);
            if (this.d > 0) {
                canvas.drawRoundRect(this.c, (float) this.e, (float) this.e, this.b);
            }
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.c = new RectF(13.0f, 7.0f, (float) (i - 1 - 13), (float) (i2 - 1 - 13));
    }
}