package fr.castorflex.android.smoothprogressbar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.Interpolator;

public final class i
  extends Drawable
  implements Animatable
{
  private Interpolator a;
  private Rect b;
  private Paint c;
  private int[] d;
  private int e;
  private boolean f = false;
  private float g;
  private int h;
  private int i;
  private float j;
  private boolean k;
  private boolean l;
  private boolean m;
  private float n;
  private final Runnable o = new j(this);
  
  private i(Interpolator paramInterpolator, int paramInt1, int paramInt2, int[] paramArrayOfInt, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramInterpolator;
    i = paramInt1;
    h = paramInt2;
    j = paramFloat2;
    k = paramBoolean1;
    d = paramArrayOfInt;
    e = 0;
    m = paramBoolean2;
    n = (1.0F / i);
    c = new Paint();
    c.setStrokeWidth(paramFloat1);
    c.setStyle(Paint.Style.STROKE);
    c.setDither(false);
    c.setAntiAlias(false);
  }
  
  public final void a(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("Speed must be >= 0");
    }
    j = paramFloat;
    invalidateSelf();
  }
  
  public final void a(int paramInt)
  {
    a(new int[] { paramInt });
  }
  
  public final void a(Interpolator paramInterpolator)
  {
    if (paramInterpolator == null) {
      throw new IllegalArgumentException("Interpolator cannot be null");
    }
    a = paramInterpolator;
    invalidateSelf();
  }
  
  public final void a(boolean paramBoolean)
  {
    if (k == paramBoolean) {
      return;
    }
    k = paramBoolean;
    invalidateSelf();
  }
  
  public final void a(int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0)) {
      throw new IllegalArgumentException("Colors cannot be null or empty");
    }
    e = 0;
    d = paramArrayOfInt;
    invalidateSelf();
  }
  
  public final void b(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("The strokeWidth must be >= 0");
    }
    c.setStrokeWidth(paramFloat);
    invalidateSelf();
  }
  
  public final void b(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("SectionsCount must be > 0");
    }
    i = paramInt;
    n = (1.0F / i);
    g %= n;
    invalidateSelf();
  }
  
  public final void b(boolean paramBoolean)
  {
    if (m == paramBoolean) {
      return;
    }
    m = paramBoolean;
    invalidateSelf();
  }
  
  public final void c(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("SeparatorLength must be >= 0");
    }
    h = paramInt;
    invalidateSelf();
  }
  
  public final void draw(Canvas paramCanvas)
  {
    b = getBounds();
    paramCanvas.clipRect(b);
    int i1 = b.width();
    if (k)
    {
      paramCanvas.translate(i1, 0.0F);
      paramCanvas.scale(-1.0F, 1.0F);
    }
    int i2 = b.width();
    if (m) {
      i2 /= 2;
    }
    for (;;)
    {
      int i5 = h + i2 + i;
      int i6 = b.centerY();
      float f4 = 1.0F / i;
      if (l)
      {
        i3 = e - 1;
        i1 = i3;
        if (i3 < 0) {
          i1 = d.length - 1;
        }
        e = i1;
        l = false;
      }
      i1 = e;
      int i3 = 0;
      float f1 = 0.0F;
      if (i3 <= i)
      {
        float f3 = i3 * f4 + g;
        float f2 = Math.max(0.0F, f3 - f4);
        f3 = (int)(Math.abs(a.getInterpolation(f2) - a.getInterpolation(Math.min(f3, 1.0F))) * i5);
        label248:
        label261:
        float f5;
        float f6;
        float f7;
        if (f3 + f2 < i5)
        {
          f2 = Math.min(f3, h);
          if (f3 <= f2) {
            break label385;
          }
          f3 -= f2;
          f3 = f1 + f3;
          if (f3 > f1)
          {
            f1 = Math.min(i2, f1);
            f5 = i6;
            f6 = Math.min(i2, f3);
            f7 = i6;
            c.setColor(d[i1]);
            if (m) {
              break label391;
            }
            paramCanvas.drawLine(f1, f5, f6, f7, c);
          }
        }
        for (;;)
        {
          paramCanvas.save();
          int i4 = i1 + 1;
          i1 = i4;
          if (i4 >= d.length) {
            i1 = 0;
          }
          i3 += 1;
          f1 = f3 + f2;
          break;
          f2 = 0.0F;
          break label248;
          label385:
          f3 = 0.0F;
          break label261;
          label391:
          if (k)
          {
            paramCanvas.drawLine(i2 + f1, f5, i2 + f6, f7, c);
            paramCanvas.drawLine(i2 - f1, f5, i2 - f6, f7, c);
          }
          else
          {
            paramCanvas.drawLine(f1, f5, f6, f7, c);
            paramCanvas.drawLine(i2 * 2 - f1, f5, i2 * 2 - f6, f7, c);
          }
        }
      }
      return;
    }
  }
  
  public final int getOpacity()
  {
    return -2;
  }
  
  public final boolean isRunning()
  {
    return f;
  }
  
  public final void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    f = true;
    super.scheduleSelf(paramRunnable, paramLong);
  }
  
  public final void setAlpha(int paramInt)
  {
    c.setAlpha(paramInt);
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    c.setColorFilter(paramColorFilter);
  }
  
  public final void start()
  {
    if (isRunning()) {
      return;
    }
    scheduleSelf(o, SystemClock.uptimeMillis() + 16L);
    invalidateSelf();
  }
  
  public final void stop()
  {
    if (!isRunning()) {
      return;
    }
    f = false;
    unscheduleSelf(o);
  }
}

/* Location:
 * Qualified Name:     fr.castorflex.android.smoothprogressbar.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */