package com.millennialmedia.android;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

class AdViewOverlayView$CloseDrawable
  extends Drawable
{
  protected boolean enabled = true;
  protected final Paint paint;
  
  AdViewOverlayView$CloseDrawable(boolean paramBoolean)
  {
    enabled = paramBoolean;
    paint = new Paint();
    paint.setAntiAlias(true);
    paint.setStyle(Paint.Style.STROKE);
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = copyBounds();
    int j = right - left;
    int k = bottom - top;
    float f = j / 6.0F;
    paint.setStrokeWidth(f);
    if (enabled) {}
    for (int i = 255;; i = 80)
    {
      paint.setARGB(255, i, i, i);
      paramCanvas.drawLine(f / 2.0F, f / 2.0F, j - f / 2.0F, k - f / 2.0F, paint);
      paramCanvas.drawLine(j - f / 2.0F, f / 2.0F, f / 2.0F, k - f / 2.0F, paint);
      return;
    }
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.CloseDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */