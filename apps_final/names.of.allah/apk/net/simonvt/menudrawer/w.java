package net.simonvt.menudrawer;

import android.view.animation.Interpolator;

final class w
  implements Interpolator
{
  private static final ae a = new ae();
  
  public final float getInterpolation(float paramFloat)
  {
    float f = 1.0F;
    if (paramFloat < 0.33333334F) {
      f = a.getInterpolation(paramFloat * 3.0F);
    }
    while (paramFloat <= 0.6666667F) {
      return f;
    }
    return 1.0F - a.getInterpolation((paramFloat + 0.33333334F - 1.0F) * 3.0F);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */