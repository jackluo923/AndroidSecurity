package net.simonvt.menudrawer;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class e
  extends Drawable.ConstantState
{
  int a;
  int b;
  int c;
  
  e(e parame)
  {
    if (parame != null)
    {
      a = a;
      b = b;
    }
  }
  
  public final int getChangingConfigurations()
  {
    return c;
  }
  
  public final Drawable newDrawable()
  {
    return new d(this, (byte)0);
  }
  
  public final Drawable newDrawable(Resources paramResources)
  {
    return new d(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */