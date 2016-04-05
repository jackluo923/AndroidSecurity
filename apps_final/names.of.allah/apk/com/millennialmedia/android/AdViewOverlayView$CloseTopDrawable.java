package com.millennialmedia.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;

class AdViewOverlayView$CloseTopDrawable
  extends AdViewOverlayView.CloseDrawable
{
  final float dist;
  final float scale;
  
  AdViewOverlayView$CloseTopDrawable(boolean paramBoolean, float paramFloat)
  {
    super(paramBoolean);
    scale = paramFloat;
    dist = (4.0F * paramFloat);
    paint.setColor(-16777216);
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = copyBounds();
    float f1 = (right - left) / 10.0F;
    float f2 = right - scale * 20.0F;
    float f3 = top + scale * 20.0F;
    paint.setStrokeWidth(f1);
    paint.setColor(-16777216);
    paint.setStyle(Paint.Style.STROKE);
    paramCanvas.drawCircle(f2, f3, 12.0F * scale, paint);
    paint.setColor(-1);
    paint.setStyle(Paint.Style.FILL_AND_STROKE);
    paramCanvas.drawCircle(f2, f3, scale * 10.0F, paint);
    paint.setColor(-16777216);
    paramCanvas.drawCircle(f2, f3, 7.0F * scale, paint);
    paint.setColor(-1);
    paint.setStrokeWidth(f1 / 2.0F);
    paint.setStyle(Paint.Style.STROKE);
    paramCanvas.drawLine(f2 - dist, f3 - dist, f2 + dist, f3 + dist, paint);
    paramCanvas.drawLine(f2 + dist, f3 - dist, f2 - dist, f3 + dist, paint);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.CloseTopDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */