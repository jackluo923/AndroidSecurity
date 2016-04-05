package net.simonvt.menudrawer;

import android.view.animation.Interpolator;

final class ae
  implements Interpolator
{
  public final float getInterpolation(float paramFloat)
  {
    return (float)(Math.sin(paramFloat * 3.141592653589793D - 1.5707963267948966D) * 0.5D + 0.5D);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */