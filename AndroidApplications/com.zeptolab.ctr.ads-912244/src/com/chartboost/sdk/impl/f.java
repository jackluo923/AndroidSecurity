package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;

public final class f extends ImageView {
    private RectF a;
    private Paint b;
    private Xfermode c;

    public f(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.c = new PorterDuffXfermode(Mode.SRC_IN);
        this.a = new RectF();
        this.b = new Paint();
        this.b.setStyle(Style.STROKE);
        this.b.setColor(-1509949440);
        this.b.setStrokeWidth(Math.max(1.0f, f * 1.0f));
        this.b.setAntiAlias(true);
    }

    protected void onDraw(Canvas canvas) {
        float f = getContext().getResources().getDisplayMetrics().density;
        float f2 = 10.0f * f;
        float f3 = 1.0f * f;
        Drawable drawable = getDrawable();
        if (drawable instanceof BitmapDrawable) {
            Paint paint = ((BitmapDrawable) drawable).getPaint();
            this.a.set(drawable.getBounds());
            if (getImageMatrix() != null) {
                getImageMatrix().mapRect(this.a);
            }
            int saveLayer = canvas.saveLayer(this.a, null, ApiEventType.API_MRAID_ASYNC_PING);
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-16777216);
            canvas.drawRoundRect(this.a, f2, f2, paint);
            Xfermode xfermode = paint.getXfermode();
            paint.setXfermode(this.c);
            super.onDraw(canvas);
            paint.setXfermode(xfermode);
            canvas.restoreToCount(saveLayer);
        } else {
            super.onDraw(canvas);
        }
        this.a.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) getWidth(), (float) getHeight());
        this.a.inset(f3 / 2.0f, f3 / 2.0f);
        canvas.drawRoundRect(this.a, f2, f2, this.b);
    }
}