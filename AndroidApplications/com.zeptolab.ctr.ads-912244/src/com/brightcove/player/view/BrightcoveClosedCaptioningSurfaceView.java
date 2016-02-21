package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.media.SubtitleController.Anchor;
import android.media.SubtitleTrack.RenderingWidget;
import android.media.SubtitleTrack.RenderingWidget.OnChangedListener;
import android.os.Looper;

public class BrightcoveClosedCaptioningSurfaceView extends BrightcoveSurfaceView implements Anchor {
    private static final String TAG;
    private RenderingWidget subtitleWidget;
    private OnChangedListener subtitlesChangedListener;

    static {
        TAG = BrightcoveClosedCaptioningSurfaceView.class.getSimpleName();
    }

    public BrightcoveClosedCaptioningSurfaceView(Context context) {
        super(context);
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.subtitleWidget != null) {
            int save = canvas.save();
            canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
            this.subtitleWidget.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    public Looper getSubtitleLooper() {
        return Looper.getMainLooper();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.subtitleWidget != null) {
            this.subtitleWidget.onAttachedToWindow();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.subtitleWidget != null) {
            this.subtitleWidget.onDetachedFromWindow();
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.subtitleWidget != null) {
            this.subtitleWidget.setSize(getWidth() - getPaddingLeft() - getPaddingRight(), getHeight() - getPaddingTop() - getPaddingBottom());
        }
    }

    @TargetApi(19)
    public void setSubtitleWidget(RenderingWidget renderingWidget) {
        if (this.subtitleWidget != renderingWidget) {
            boolean isAttachedToWindow = isAttachedToWindow();
            if (this.subtitleWidget != null) {
                if (isAttachedToWindow) {
                    this.subtitleWidget.onDetachedFromWindow();
                }
                this.subtitleWidget.setOnChangedListener(null);
            }
            this.subtitleWidget = renderingWidget;
            if (renderingWidget != null) {
                if (this.subtitlesChangedListener == null) {
                    this.subtitlesChangedListener = new OnChangedListener() {
                        public void onChanged(RenderingWidget renderingWidget) {
                            BrightcoveClosedCaptioningSurfaceView.this.invalidate();
                        }
                    };
                }
                setWillNotDraw(false);
                renderingWidget.setOnChangedListener(this.subtitlesChangedListener);
                if (isAttachedToWindow) {
                    renderingWidget.onAttachedToWindow();
                    requestLayout();
                }
            } else {
                setWillNotDraw(true);
            }
            invalidate();
        }
    }
}