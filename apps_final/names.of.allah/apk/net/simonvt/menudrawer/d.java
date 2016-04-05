package net.simonvt.menudrawer;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class d
  extends Drawable
{
  private e a;
  private final Paint b = new Paint();
  
  public d()
  {
    this(null);
  }
  
  public d(byte paramByte)
  {
    this(null);
    if ((a.a != -16777216) || (a.b != -16777216))
    {
      invalidateSelf();
      e locale = a;
      a.b = -16777216;
      a = -16777216;
    }
  }
  
  private d(e parame)
  {
    a = new e(parame);
  }
  
  public final void draw(Canvas paramCanvas)
  {
    if (a.b >>> 24 != 0)
    {
      b.setColor(a.b);
      paramCanvas.drawRect(getBounds(), b);
    }
  }
  
  public final int getChangingConfigurations()
  {
    return super.getChangingConfigurations() | a.c;
  }
  
  public final Drawable.ConstantState getConstantState()
  {
    a.c = getChangingConfigurations();
    return a;
  }
  
  public final int getOpacity()
  {
    switch (a.b >>> 24)
    {
    default: 
      return -3;
    case 255: 
      return -1;
    }
    return -2;
  }
  
  public final void setAlpha(int paramInt)
  {
    int i = a.a;
    int j = a.b;
    a.b = (((paramInt >> 7) + paramInt) * (i >>> 24) >> 8 << 24 | a.a << 8 >>> 8);
    if (j != a.b) {
      invalidateSelf();
    }
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter) {}
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */