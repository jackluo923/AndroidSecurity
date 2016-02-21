package com.zeptolab.ctr;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.VideoView;

public class CtrVideoView extends VideoView {
    protected int mVideoHeight;
    protected int mVideoWidth;

    public CtrVideoView(Context context) {
        super(context);
    }

    public CtrVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CtrVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.mVideoWidth, i);
        int defaultSize2 = getDefaultSize(this.mVideoHeight, i2);
        if (this.mVideoWidth > 0 && this.mVideoHeight > 0) {
            if (this.mVideoWidth * defaultSize2 > this.mVideoHeight * defaultSize) {
                defaultSize2 = (this.mVideoHeight * defaultSize) / this.mVideoWidth;
            } else if (this.mVideoWidth * defaultSize2 < this.mVideoHeight * defaultSize) {
                defaultSize = (this.mVideoWidth * defaultSize2) / this.mVideoHeight;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }
}