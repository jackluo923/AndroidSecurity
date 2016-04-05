package net.simonvt.menudrawer;

import android.view.animation.Interpolator;

final class ai
  implements Interpolator
{
  public final float getInterpolation(float paramFloat)
  {
    paramFloat -= 1.0F;
    return paramFloat * (paramFloat * paramFloat * paramFloat * paramFloat) + 1.0F;
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */