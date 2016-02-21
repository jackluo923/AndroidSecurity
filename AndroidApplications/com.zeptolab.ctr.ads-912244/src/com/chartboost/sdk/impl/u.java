package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Region.Op;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBOrientation.Difference;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class u extends FrameLayout {
    private Matrix a;
    private Matrix b;
    private float[] c;
    private View d;
    private RelativeLayout e;

    public u(Context context) {
        super(context);
        this.a = new Matrix();
        this.b = new Matrix();
        this.c = new float[2];
        this.e = new RelativeLayout(context);
        addView(this.e, new LayoutParams(-1, -1));
        this.d = this.e;
    }

    public u(Context context, View view) {
        super(context);
        this.a = new Matrix();
        this.b = new Matrix();
        this.c = new float[2];
        addView(view, new LayoutParams(-1, -1));
        this.d = view;
    }

    public View a() {
        return this.d;
    }

    public void a(View view) {
        a(view, new RelativeLayout.LayoutParams(-2, -2));
    }

    public void a(View view, RelativeLayout.LayoutParams layoutParams) {
        if (this.e != null) {
            this.e.addView(view, layoutParams);
        } else {
            throw new IllegalStateException("cannot call addViewToContainer() on CBRotatableContainer that was set up with a default view");
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        Difference forcedOrientationDifference = CBPreferences.getInstance().getForcedOrientationDifference();
        int asInt = forcedOrientationDifference.getAsInt();
        if (forcedOrientationDifference == Difference.ANGLE_0) {
            super.dispatchDraw(canvas);
        } else {
            canvas.save();
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, 0.0f, (float) getWidth(), (float) getHeight(), Op.REPLACE);
            try {
                View view;
                ViewGroup viewGroup = (ViewGroup) getParent();
                try {
                    View view2 = (ViewGroup) viewGroup.getParent();
                    if (view2 instanceof ScrollView || view2 instanceof HorizontalScrollView) {
                        view = view2;
                    }
                } catch (Exception e) {
                }
                int left = getLeft() - view.getScrollX();
                int top = getTop() - view.getScrollY();
                canvas.clipRect((float) (0 - left), (float) (0 - top), (float) (view.getWidth() - left), (float) (view.getHeight() - top), Op.INTERSECT);
            } catch (Exception e2) {
            }
            canvas.translate(((float) getWidth()) / 2.0f, ((float) getHeight()) / 2.0f);
            canvas.rotate((float) asInt);
            if (forcedOrientationDifference.isOdd()) {
                canvas.translate(((float) (-getHeight())) / 2.0f, ((float) (-getWidth())) / 2.0f);
            } else {
                canvas.translate(((float) (-getWidth())) / 2.0f, ((float) (-getHeight())) / 2.0f);
            }
            this.a = canvas.getMatrix();
            this.a.invert(this.b);
            super.dispatchDraw(canvas);
            canvas.restore();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (CBPreferences.getInstance().getForcedOrientationDifference() == Difference.ANGLE_0) {
            return super.dispatchTouchEvent(motionEvent);
        }
        float[] fArr = this.c;
        fArr[0] = motionEvent.getRawX();
        fArr[1] = motionEvent.getRawY();
        this.b.mapPoints(fArr);
        motionEvent.setLocation(fArr[0], fArr[1]);
        return super.dispatchTouchEvent(motionEvent);
    }

    protected void onMeasure(int i, int i2) {
        if (CBPreferences.getInstance().getForcedOrientationDifference().isOdd()) {
            super.onMeasure(i2, i);
            setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Difference forcedOrientationDifference = CBPreferences.getInstance().getForcedOrientationDifference();
        ViewGroup.LayoutParams layoutParams = this.d.getLayoutParams();
        layoutParams.width = forcedOrientationDifference.isOdd() ? i2 : i;
        if (!forcedOrientationDifference.isOdd()) {
            i = i2;
        }
        layoutParams.height = i;
        this.d.setLayoutParams(layoutParams);
        this.d.measure(MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
        this.d.layout(0, 0, layoutParams.width, layoutParams.height);
    }
}