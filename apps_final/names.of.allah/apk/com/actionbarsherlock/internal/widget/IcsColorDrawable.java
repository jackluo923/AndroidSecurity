package com.actionbarsherlock.internal.widget;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;

public class IcsColorDrawable
  extends Drawable
{
  private int color;
  private final Paint paint = new Paint();
  
  public IcsColorDrawable(int paramInt)
  {
    color = paramInt;
  }
  
  public IcsColorDrawable(ColorDrawable paramColorDrawable)
  {
    Bitmap localBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
    paramColorDrawable.draw(new Canvas(localBitmap));
    color = localBitmap.getPixel(0, 0);
    localBitmap.recycle();
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (color >>> 24 != 0)
    {
      paint.setColor(color);
      paramCanvas.drawRect(getBounds(), paint);
    }
  }
  
  public int getOpacity()
  {
    return color >>> 24;
  }
  
  public void setAlpha(int paramInt)
  {
    if (paramInt != color >>> 24)
    {
      color = (color & 0xFFFFFF | paramInt << 24);
      invalidateSelf();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsColorDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */