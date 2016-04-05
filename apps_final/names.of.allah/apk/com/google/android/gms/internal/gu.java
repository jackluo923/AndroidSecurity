package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;

public final class gu
  extends Drawable
  implements Drawable.Callback
{
  private gu.b FA;
  private Drawable FB;
  private Drawable FC;
  private boolean FD;
  private boolean FE;
  private boolean FF;
  private int FG;
  private boolean Fm = true;
  private int Fs = 0;
  private long Ft;
  private int Fu;
  private int Fv;
  private int Fw = 255;
  private int Fx;
  private int Fy = 0;
  private boolean Fz;
  
  public gu(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this(null);
    Object localObject = paramDrawable1;
    if (paramDrawable1 == null) {
      localObject = gu.a.fc();
    }
    FB = ((Drawable)localObject);
    ((Drawable)localObject).setCallback(this);
    paramDrawable1 = FA;
    FK |= ((Drawable)localObject).getChangingConfigurations();
    paramDrawable1 = paramDrawable2;
    if (paramDrawable2 == null) {
      paramDrawable1 = gu.a.fc();
    }
    FC = paramDrawable1;
    paramDrawable1.setCallback(this);
    paramDrawable2 = FA;
    FK |= paramDrawable1.getChangingConfigurations();
  }
  
  gu(gu.b paramb)
  {
    FA = new gu.b(paramb);
  }
  
  public final boolean canConstantState()
  {
    if (!FD) {
      if ((FB.getConstantState() == null) || (FC.getConstantState() == null)) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      FE = bool;
      FD = true;
      return FE;
    }
  }
  
  public final void draw(Canvas paramCanvas)
  {
    int j = 1;
    int i = 1;
    int k = 0;
    switch (Fs)
    {
    }
    boolean bool;
    Drawable localDrawable1;
    Drawable localDrawable2;
    do
    {
      for (;;)
      {
        j = Fy;
        bool = Fm;
        localDrawable1 = FB;
        localDrawable2 = FC;
        if (i == 0) {
          break;
        }
        if ((!bool) || (j == 0)) {
          localDrawable1.draw(paramCanvas);
        }
        if (j == Fw)
        {
          localDrawable2.setAlpha(Fw);
          localDrawable2.draw(paramCanvas);
        }
        return;
        Ft = SystemClock.uptimeMillis();
        Fs = 2;
        i = k;
      }
    } while (Ft < 0L);
    float f1 = (float)(SystemClock.uptimeMillis() - Ft) / Fx;
    if (f1 >= 1.0F) {}
    for (i = j;; i = 0)
    {
      if (i != 0) {
        Fs = 0;
      }
      f1 = Math.min(f1, 1.0F);
      float f2 = Fu;
      Fy = ((int)(f1 * (Fv - Fu) + f2));
      break;
    }
    if (bool) {
      localDrawable1.setAlpha(Fw - j);
    }
    localDrawable1.draw(paramCanvas);
    if (bool) {
      localDrawable1.setAlpha(Fw);
    }
    if (j > 0)
    {
      localDrawable2.setAlpha(j);
      localDrawable2.draw(paramCanvas);
      localDrawable2.setAlpha(Fw);
    }
    invalidateSelf();
  }
  
  public final Drawable fb()
  {
    return FC;
  }
  
  public final int getChangingConfigurations()
  {
    return super.getChangingConfigurations() | FA.FJ | FA.FK;
  }
  
  public final Drawable.ConstantState getConstantState()
  {
    if (canConstantState())
    {
      FA.FJ = getChangingConfigurations();
      return FA;
    }
    return null;
  }
  
  public final int getIntrinsicHeight()
  {
    return Math.max(FB.getIntrinsicHeight(), FC.getIntrinsicHeight());
  }
  
  public final int getIntrinsicWidth()
  {
    return Math.max(FB.getIntrinsicWidth(), FC.getIntrinsicWidth());
  }
  
  public final int getOpacity()
  {
    if (!FF)
    {
      FG = Drawable.resolveOpacity(FB.getOpacity(), FC.getOpacity());
      FF = true;
    }
    return FG;
  }
  
  public final void invalidateDrawable(Drawable paramDrawable)
  {
    if (iq.fX())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.invalidateDrawable(this);
      }
    }
  }
  
  public final Drawable mutate()
  {
    if ((!Fz) && (super.mutate() == this))
    {
      if (!canConstantState()) {
        throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
      }
      FB.mutate();
      FC.mutate();
      Fz = true;
    }
    return this;
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    FB.setBounds(paramRect);
    FC.setBounds(paramRect);
  }
  
  public final void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    if (iq.fX())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.scheduleDrawable(this, paramRunnable, paramLong);
      }
    }
  }
  
  public final void setAlpha(int paramInt)
  {
    if (Fy == Fw) {
      Fy = paramInt;
    }
    Fw = paramInt;
    invalidateSelf();
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    FB.setColorFilter(paramColorFilter);
    FC.setColorFilter(paramColorFilter);
  }
  
  public final void startTransition(int paramInt)
  {
    Fu = 0;
    Fv = Fw;
    Fy = 0;
    Fx = paramInt;
    Fs = 1;
    invalidateSelf();
  }
  
  public final void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    if (iq.fX())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.unscheduleDrawable(this, paramRunnable);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */