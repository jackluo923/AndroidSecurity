package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.os.Handler;
import android.view.View;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBOrientation.Difference;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class v extends View {
    private Handler a;
    private float b;
    private long c;
    private Paint d;
    private Paint e;
    private Path f;
    private Path g;
    private RectF h;
    private RectF i;
    private Bitmap j;
    private Canvas k;
    private Runnable l;

    public v(Context context) {
        super(context);
        this.j = null;
        this.k = null;
        this.l = new Runnable() {
            public void run() {
                Difference forcedOrientationDifference = CBPreferences.getInstance().getForcedOrientationDifference();
                float f = v.this.getContext().getResources().getDisplayMetrics().density;
                v.a(v.this, 1.0f * f);
                float width = (forcedOrientationDifference.isOdd() ? (float) v.this.getWidth() : (float) v.this.getHeight()) - f * 9.0f;
                if (v.this.b > width) {
                    v.b(v.this, width * 2.0f);
                }
                if (v.this.getWindowVisibility() == 0) {
                    v.this.invalidate();
                }
            }
        };
        a(context);
    }

    static /* synthetic */ float a(v vVar, float f) {
        float f2 = vVar.b + f;
        vVar.b = f2;
        return f2;
    }

    private void a(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        this.b = 0.0f;
        this.a = new Handler();
        this.c = (long) (((double) System.nanoTime()) / 1000000.0d);
        this.d = new Paint();
        this.d.setColor(-1);
        this.d.setStyle(Style.STROKE);
        this.d.setStrokeWidth(f * 3.0f);
        this.d.setAntiAlias(true);
        this.e = new Paint();
        this.e.setColor(-1);
        this.e.setStyle(Style.FILL);
        this.e.setAntiAlias(true);
        this.f = new Path();
        this.g = new Path();
        this.i = new RectF();
        this.h = new RectF();
        try {
            getClass().getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(this, new Object[]{Integer.valueOf(1), null});
        } catch (Exception e) {
        }
    }

    private boolean a(Canvas canvas) {
        try {
            return ((Boolean) Canvas.class.getMethod("isHardwareAccelerated", new Class[0]).invoke(canvas, new Object[0])).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    static /* synthetic */ float b(v vVar, float f) {
        float f2 = vVar.b - f;
        vVar.b = f2;
        return f2;
    }

    protected void onAttachedToWindow() {
        this.a.removeCallbacks(this.l);
        this.a.post(this.l);
    }

    protected void onDetachedFromWindow() {
        this.a.removeCallbacks(this.l);
        if (!(this.j == null || this.j.isRecycled())) {
            this.j.recycle();
        }
        this.j = null;
    }

    protected void onDraw(Canvas canvas) {
        Canvas canvas2;
        float f = getContext().getResources().getDisplayMetrics().density;
        boolean a = a(canvas);
        if (a) {
            if (!(this.j != null && this.j.getWidth() == canvas.getWidth() && this.j.getHeight() == canvas.getHeight())) {
                if (!(this.j == null || this.j.isRecycled())) {
                    this.j.recycle();
                }
                try {
                    this.j = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Config.ARGB_8888);
                    this.k = new Canvas(this.j);
                } catch (Throwable th) {
                }
            }
            this.j.eraseColor(0);
            canvas2 = this.k;
        } else {
            canvas2 = canvas;
            canvas = null;
        }
        Difference forcedOrientationDifference = CBPreferences.getInstance().getForcedOrientationDifference();
        canvas2.save();
        if (forcedOrientationDifference.isReverse()) {
            canvas2.rotate(BitmapDescriptorFactory.HUE_CYAN, ((float) getWidth()) / 2.0f, ((float) getHeight()) / 2.0f);
        }
        this.h.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) getWidth(), (float) getHeight());
        this.h.inset(1.5f * f, 1.5f * f);
        float width = ((float) (forcedOrientationDifference.isOdd() ? getWidth() : getHeight())) / 2.0f;
        canvas2.drawRoundRect(this.h, width, width, this.d);
        this.i.set(this.h);
        this.i.inset(3.0f * f, f * 3.0f);
        width = (forcedOrientationDifference.isOdd() ? this.i.width() : this.i.height()) / 2.0f;
        this.f.reset();
        this.f.addRoundRect(this.i, width, width, Direction.CW);
        width = forcedOrientationDifference.isOdd() ? this.i.width() : this.i.height();
        this.g.reset();
        if (forcedOrientationDifference.isOdd()) {
            this.g.moveTo(width, BitmapDescriptorFactory.HUE_RED);
            this.g.lineTo(width, width);
            this.g.lineTo(BitmapDescriptorFactory.HUE_RED, width * 2.0f);
            this.g.lineTo(BitmapDescriptorFactory.HUE_RED, width);
        } else {
            this.g.moveTo(BitmapDescriptorFactory.HUE_RED, width);
            this.g.lineTo(width, width);
            this.g.lineTo(width * 2.0f, BitmapDescriptorFactory.HUE_RED);
            this.g.lineTo(width, BitmapDescriptorFactory.HUE_RED);
        }
        this.g.close();
        canvas2.save();
        boolean z = 1;
        try {
            canvas2.clipPath(this.f);
        } catch (UnsupportedOperationException e) {
            z = false;
        }
        if (i != 0) {
            f = (-width) + this.b;
            while (true) {
                if (f >= (forcedOrientationDifference.isOdd() ? this.i.height() : this.i.width()) + width) {
                    break;
                }
                float f2 = (forcedOrientationDifference.isOdd() ? this.i.top : this.i.left) + f;
                canvas2.save();
                if (forcedOrientationDifference.isOdd()) {
                    canvas2.translate(this.i.left, f2);
                } else {
                    canvas2.translate(f2, this.i.top);
                }
                canvas2.drawPath(this.g, this.e);
                canvas2.restore();
                f += 2.0f * width;
            }
        }
        canvas2.restore();
        canvas2.restore();
        if (a && canvas != null) {
            canvas.drawBitmap(this.j, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, null);
        }
        long max = Math.max(0, 16 - ((long) (((double) System.nanoTime()) / 1000000.0d)) - this.c);
        this.a.removeCallbacks(this.l);
        this.a.postDelayed(this.l, max);
    }

    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.a.removeCallbacks(this.l);
        if (i == 0) {
            this.a.post(this.l);
        }
    }
}