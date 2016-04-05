package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class gu$b
  extends Drawable.ConstantState
{
  int FJ;
  int FK;
  
  gu$b(b paramb)
  {
    if (paramb != null)
    {
      FJ = FJ;
      FK = FK;
    }
  }
  
  public final int getChangingConfigurations()
  {
    return FJ;
  }
  
  public final Drawable newDrawable()
  {
    return new gu(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gu.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */