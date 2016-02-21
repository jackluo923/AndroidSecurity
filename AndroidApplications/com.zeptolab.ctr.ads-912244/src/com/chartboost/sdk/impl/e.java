package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.widget.Button;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public final class e extends Button {
    private Path a;
    private Path b;
    private Path c;
    private RectF d;
    private Paint e;
    private Paint f;
    private Shader g;
    private Shader h;
    private int i;

    public e(Context context) {
        super(context);
        a(context);
    }

    private void a() {
        int height = getHeight();
        if (height != this.i) {
            this.i = height;
            float f = 0.0f;
            float f2 = 0.0f;
            this.g = new LinearGradient(0.0f, f, f2, (float) getHeight(), new int[]{-81366, -89600, -97280}, null, TileMode.CLAMP);
            f = 0.0f;
            f2 = 0.0f;
            this.h = new LinearGradient(0.0f, f, f2, (float) getHeight(), new int[]{-97280, -89600, -81366}, null, TileMode.CLAMP);
        }
    }

    private void a(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        setTextSize(GoogleScorer.CLIENT_PLUS, 13.0f);
        setShadowLayer(1.0f * f, 1.0f * f, 1.0f * f, -16757901);
        setTypeface(null, 1);
        setTextColor(-1);
        setClickable(true);
        setGravity(ZBuildConfig.$targetsdk);
        setPadding(Math.round(12.0f * f), Math.round(5.0f * f), Math.round(12.0f * f), Math.round(f * 5.0f));
        this.a = new Path();
        this.b = new Path();
        this.c = new Path();
        this.d = new RectF();
        this.e = new Paint();
        this.e.setStyle(Style.STROKE);
        this.e.setColor(-4496384);
        this.e.setAntiAlias(true);
        this.i = -1;
        this.f = new Paint();
        this.f.setStyle(Style.FILL);
        this.f.setAntiAlias(true);
        setBackgroundDrawable(new Drawable() {
            boolean a;

            {
                this.a = false;
            }

            public void draw(Canvas canvas) {
                int i = 0;
                float f = e.this.getContext().getResources().getDisplayMetrics().density;
                int[] state = getState();
                boolean z = false;
                while (i < state.length) {
                    if (state[i] == 16842919) {
                        z = 1;
                    }
                    i++;
                }
                float f2 = 6.0f * f;
                e.this.a.reset();
                e.this.d.set(getBounds());
                e.this.a.addRoundRect(e.this.d, f2, f2, Direction.CW);
                e.this.a();
                e.this.f.setShader(i != 0 ? e.this.h : e.this.g);
                canvas.drawPath(e.this.a, e.this.f);
                float f3 = 1.0f * f;
                e.this.reset();
                e.this.d.inset(f3 / 2.0f, f3 / 2.0f);
                e.this.addRoundRect(e.this.d, f2, f2, Direction.CW);
                e.this.c.reset();
                e.this.d.offset(BitmapDescriptorFactory.HUE_RED, f3 / 2.0f);
                e.this.c.addRoundRect(e.this.d, f2, f2, Direction.CW);
                if (i == 0) {
                    e.this.e.setColor(-1);
                    canvas.drawPath(e.this.c, e.this.e);
                }
                e.this.e.setColor(-4496384);
                canvas.drawPath(e.this, e.this.e);
            }

            public int getOpacity() {
                return 1;
            }

            public boolean isStateful() {
                return true;
            }

            protected boolean onStateChange(int[] iArr) {
                int i = 0;
                boolean z = false;
                while (i < iArr.length) {
                    if (iArr[i] == 16842919) {
                        z = true;
                    }
                    i++;
                }
                if (this.a == z) {
                    return false;
                }
                this.a = z;
                invalidateSelf();
                return true;
            }

            public void setAlpha(int i) {
                e.this.e.setAlpha(i);
                e.this.f.setAlpha(i);
            }

            public void setColorFilter(ColorFilter colorFilter) {
                e.this.e.setColorFilter(colorFilter);
                e.this.f.setColorFilter(colorFilter);
            }
        });
    }
}