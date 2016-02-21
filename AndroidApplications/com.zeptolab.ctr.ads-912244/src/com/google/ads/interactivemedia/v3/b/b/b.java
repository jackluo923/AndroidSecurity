package com.google.ads.interactivemedia.v3.b.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;
import android.support.v4.view.MotionEventCompat;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.zbuild.ZBuildConfig;

public final class b extends FrameLayout {
    private final float a;
    private final TextView b;

    private static class a extends ShapeDrawable {
        private Paint a;
        private Paint b;

        public a() {
            super(new Shape() {
                private Path a;

                public final void draw(Canvas canvas, Paint paint) {
                    canvas.drawPath(this.a, paint);
                }

                public final void onResize(float f, float f2) {
                    this.a = new Path();
                    this.a.moveTo(getWidth(), getHeight());
                    this.a.lineTo(6.0f, getHeight());
                    this.a.arcTo(new RectF(0.0f, getHeight() - 12.0f, 12.0f, getHeight()), 90.0f, 90.0f);
                    this.a.lineTo(BitmapDescriptorFactory.HUE_RED, 6.0f);
                    this.a.arcTo(new RectF(0.0f, 0.0f, 12.0f, 12.0f), BitmapDescriptorFactory.HUE_CYAN, 90.0f);
                    this.a.lineTo(getWidth(), BitmapDescriptorFactory.HUE_RED);
                }
            });
            this.a = new Paint();
            this.a.setAntiAlias(true);
            this.a.setStyle(Style.STROKE);
            this.a.setStrokeWidth(1.0f);
            this.a.setARGB(150, MotionEventCompat.ACTION_MASK, MotionEventCompat.ACTION_MASK, MotionEventCompat.ACTION_MASK);
            this.b = new Paint();
            this.b.setStyle(Style.FILL);
            this.b.setColor(-16777216);
            this.b.setAlpha(140);
        }

        protected final void onDraw(Shape shape, Canvas canvas, Paint paint) {
            shape.draw(canvas, this.b);
            shape.draw(canvas, this.a);
        }
    }

    public b(Context context) {
        super(context);
        this.a = getResources().getDisplayMetrics().density;
        setBackgroundDrawable(new a());
        int i = (int) (this.a * 8.0f + 0.5f);
        setPadding(i, i, i, i);
        this.b = new TextView(context);
        this.b.setTextColor(-3355444);
        this.b.setIncludeFontPadding(false);
        this.b.setGravity(ZBuildConfig.$targetsdk);
        addView(this.b);
    }

    public final void a(String str) {
        this.b.setText(str);
    }
}