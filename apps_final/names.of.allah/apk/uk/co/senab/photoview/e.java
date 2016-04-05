package uk.co.senab.photoview;

import android.graphics.Matrix;
import android.widget.ImageView;

final class e
  implements Runnable
{
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  
  public e(b paramb, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    d = paramFloat2;
    b = paramFloat3;
    c = paramFloat4;
    if (paramFloat1 < paramFloat2)
    {
      e = 1.07F;
      return;
    }
    e = 0.93F;
  }
  
  public final void run()
  {
    ImageView localImageView = a.c();
    if (localImageView != null)
    {
      b.c(a).postScale(e, e, b, c);
      b.d(a);
      f = a.g();
      if (((e > 1.0F) && (f < d)) || ((e < 1.0F) && (d < f))) {
        a.a(localImageView, this);
      }
    }
    else
    {
      return;
    }
    float f = d / f;
    b.c(a).postScale(f, f, b, c);
    b.d(a);
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */