package com.andymstone.accuratecompass;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;

public class BackgroundSurface extends SurfaceView implements Callback {
    boolean a;
    private Bitmap b;

    public BackgroundSurface(Context context) {
        super(context);
        this.a = false;
        a();
    }

    public BackgroundSurface(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = false;
        a();
    }

    public BackgroundSurface(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = false;
        a();
    }

    void a() {
        getHolder().addCallback(this);
    }

    void a(Canvas canvas) {
        if (this.b != null) {
            Rect rect = new Rect(0, 0, getWidth(), getHeight());
            Paint paint = new Paint();
            paint.setFilterBitmap(true);
            canvas.drawBitmap(this.b, null, rect, paint);
        }
    }

    protected void a(SurfaceHolder surfaceHolder) {
        if (this.a) {
            Canvas lockCanvas = surfaceHolder.lockCanvas();
            if (lockCanvas != null) {
                try {
                    synchronized (surfaceHolder) {
                        a(lockCanvas);
                    }
                    surfaceHolder.unlockCanvasAndPost(lockCanvas);
                } catch (Throwable th) {
                }
            }
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        a(surfaceHolder);
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.b = BitmapFactory.decodeResource(getResources(), n.background);
        this.a = true;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.a = false;
    }
}