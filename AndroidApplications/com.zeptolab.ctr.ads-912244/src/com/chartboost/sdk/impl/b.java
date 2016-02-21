package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public abstract class b extends LinearLayout implements com.chartboost.sdk.impl.g.b {
    protected OnClickListener a;
    private RectF b;
    private Paint c;
    private Paint d;
    private RectF e;

    public b(Context context) {
        super(context);
        this.b = new RectF();
        this.c = null;
        this.d = null;
        this.e = null;
        this.a = null;
    }

    private void a(Canvas canvas, RectF rectF) {
        if (this.d == null) {
            this.d = new Paint();
            this.d.setStyle(Style.FILL);
            this.d.setAntiAlias(true);
        }
        if (this.e == null || Math.abs(rectF.top - this.e.top) > 0.1f || Math.abs(rectF.bottom - this.e.bottom) > 0.1f) {
            this.d.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF.bottom, -1447447, -2302756, TileMode.CLAMP));
        }
        canvas.drawRect(rectF, this.d);
    }

    private void b_(Canvas canvas, RectF rectF) {
        if (this.c == null) {
            this.c = new Paint();
            this.c.setStyle(Style.FILL);
            this.c.setAntiAlias(true);
        }
        this.c.setColor(-723724);
        canvas.drawRect(rectF.left, rectF.top, rectF.right, rectF.top + 1.0f, this.c);
        this.c.setColor(-3355444);
        canvas.drawRect(rectF.left, rectF.bottom - 1.0f, rectF.right, rectF.bottom, this.c);
    }

    protected void onDraw(Canvas canvas) {
        this.b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) getWidth(), (float) a());
        a(canvas, this.b);
        b(canvas, this.b);
    }
}