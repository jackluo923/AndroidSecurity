package net.simonvt.menudrawer;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;

public final class af
  extends Drawable
  implements Drawable.Callback
{
  private Drawable a;
  private float b;
  private final Rect c = new Rect();
  private boolean d;
  
  public af(Drawable paramDrawable)
  {
    a = paramDrawable;
  }
  
  public final void a(float paramFloat)
  {
    b = paramFloat;
    invalidateSelf();
  }
  
  final void a(boolean paramBoolean)
  {
    d = paramBoolean;
    invalidateSelf();
  }
  
  public final void clearColorFilter()
  {
    a.clearColorFilter();
  }
  
  public final void draw(Canvas paramCanvas)
  {
    a.copyBounds(c);
    paramCanvas.save();
    if (d) {
      paramCanvas.translate(c.width() * 0.33333334F * b, 0.0F);
    }
    for (;;)
    {
      a.draw(paramCanvas);
      paramCanvas.restore();
      return;
      paramCanvas.translate(c.width() * 0.33333334F * -b, 0.0F);
    }
  }
  
  public final int getChangingConfigurations()
  {
    return a.getChangingConfigurations();
  }
  
  public final Drawable.ConstantState getConstantState()
  {
    return super.getConstantState();
  }
  
  public final Drawable getCurrent()
  {
    return a.getCurrent();
  }
  
  public final int getIntrinsicHeight()
  {
    return a.getIntrinsicHeight();
  }
  
  public final int getIntrinsicWidth()
  {
    return a.getIntrinsicWidth();
  }
  
  public final int getMinimumHeight()
  {
    return a.getMinimumHeight();
  }
  
  public final int getMinimumWidth()
  {
    return a.getMinimumWidth();
  }
  
  public final int getOpacity()
  {
    return a.getOpacity();
  }
  
  public final boolean getPadding(Rect paramRect)
  {
    return a.getPadding(paramRect);
  }
  
  public final int[] getState()
  {
    return a.getState();
  }
  
  public final Region getTransparentRegion()
  {
    return a.getTransparentRegion();
  }
  
  public final void invalidateDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == a) {
      invalidateSelf();
    }
  }
  
  public final boolean isStateful()
  {
    return a.isStateful();
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    a.setBounds(paramRect);
  }
  
  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    a.setState(paramArrayOfInt);
    return super.onStateChange(paramArrayOfInt);
  }
  
  public final void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    if (paramDrawable == a) {
      scheduleSelf(paramRunnable, paramLong);
    }
  }
  
  public final void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public final void setChangingConfigurations(int paramInt)
  {
    a.setChangingConfigurations(paramInt);
  }
  
  public final void setColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    a.setColorFilter(paramInt, paramMode);
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
  
  public final void setDither(boolean paramBoolean)
  {
    a.setDither(paramBoolean);
  }
  
  public final void setFilterBitmap(boolean paramBoolean)
  {
    a.setFilterBitmap(paramBoolean);
  }
  
  public final boolean setState(int[] paramArrayOfInt)
  {
    return a.setState(paramArrayOfInt);
  }
  
  public final boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public final void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    if (paramDrawable == a) {
      unscheduleSelf(paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */