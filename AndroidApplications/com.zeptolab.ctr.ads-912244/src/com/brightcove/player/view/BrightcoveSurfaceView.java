package com.brightcove.player.view;

import android.content.Context;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View.MeasureSpec;

public class BrightcoveSurfaceView extends SurfaceView {
    private static final String TAG;
    private int videoHeight;
    private int videoWidth;

    static {
        TAG = BrightcoveSurfaceView.class.getSimpleName();
    }

    public BrightcoveSurfaceView(Context context) {
        super(context);
    }

    public int getVideoHeight() {
        return this.videoHeight;
    }

    public int getVideoWidth() {
        return this.videoWidth;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Log.v(TAG, "onLayout: changed = " + z + ", left = " + i + ", top = " + i2 + ", right = " + i3 + ", bottom = " + i4);
        super.onLayout(z, i, i2, i3, i4);
    }

    protected void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int mode = MeasureSpec.getMode(i);
        int size2 = MeasureSpec.getSize(i2);
        Log.v(TAG, "onMeasure: width = " + size + ", height = " + size2 + ", videoWidth = " + this.videoWidth + ", videoHeight = " + this.videoHeight + ", widthMode = " + LayoutUtil.getSpecMode(mode) + ", heightMode = " + LayoutUtil.getSpecMode(MeasureSpec.getMode(i2)));
        if (this.videoWidth > 0 && this.videoHeight > 0) {
            if (this.videoWidth * size2 > this.videoHeight * size) {
                size2 = (this.videoHeight * size) / this.videoWidth;
            } else if (this.videoWidth * size2 < this.videoHeight * size) {
                size = (this.videoWidth * size2) / this.videoHeight;
            }
        }
        Log.v(TAG, "setMeasuredDimension: width = " + size + ", height = " + size2);
        setMeasuredDimension(size, size2);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        Log.v(TAG, "onSizeChanged: width = " + i + ", height = " + i2 + ", oldw = " + i3 + ", oldh = " + i4);
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void setVideoSize(int i, int i2) {
        this.videoWidth = i;
        this.videoHeight = i2;
        if (i != 0 && i2 != 0) {
            super.requestLayout();
            super.invalidate();
        }
    }
}