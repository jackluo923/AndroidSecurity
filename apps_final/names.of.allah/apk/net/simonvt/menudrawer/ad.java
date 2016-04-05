package net.simonvt.menudrawer;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

final class ad
{
  private static final float t = (float)(Math.log(0.75D) / Math.log(0.9D));
  private static final float[] u = new float[101];
  private static float x;
  private static float y = 1.0F / a(1.0F);
  private int a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private long l;
  private int m;
  private float n;
  private float o;
  private float p;
  private boolean q = true;
  private Interpolator r;
  private boolean s;
  private float v;
  private final float w;
  
  static
  {
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 <= 100)
    {
      float f4 = i1 / 100.0F;
      float f2 = 1.0F;
      float f3;
      float f5;
      for (;;)
      {
        f3 = (f2 - f1) / 2.0F + f1;
        f5 = 3.0F * f3 * (1.0F - f3);
        float f6 = ((1.0F - f3) * 0.4F + 0.6F * f3) * f5 + f3 * f3 * f3;
        if (Math.abs(f6 - f4) < 1.0E-5D) {
          break;
        }
        if (f6 > f4) {
          f2 = f3;
        } else {
          f1 = f3;
        }
      }
      u[i1] = (f3 * f3 * f3 + f5);
      i1 += 1;
    }
    u[100] = 1.0F;
    x = 8.0F;
    y = 1.0F;
  }
  
  public ad(Context paramContext, Interpolator paramInterpolator) {}
  
  private ad(Context paramContext, Interpolator paramInterpolator, boolean paramBoolean)
  {
    r = paramInterpolator;
    w = (getResourcesgetDisplayMetricsdensity * 160.0F);
    v = (ViewConfiguration.getScrollFriction() * (386.0878F * w));
    s = paramBoolean;
  }
  
  private static float a(float paramFloat)
  {
    paramFloat = x * paramFloat;
    if (paramFloat < 1.0F) {}
    for (paramFloat -= 1.0F - (float)Math.exp(-paramFloat);; paramFloat = (1.0F - (float)Math.exp(1.0F - paramFloat)) * 0.63212055F + 0.36787945F) {
      return paramFloat * y;
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a = 0;
    q = false;
    m = paramInt3;
    l = AnimationUtils.currentAnimationTimeMillis();
    b = paramInt1;
    c = 0;
    d = (paramInt1 + paramInt2);
    e = 0;
    o = paramInt2;
    p = 0.0F;
    n = (1.0F / m);
  }
  
  public final boolean a()
  {
    return q;
  }
  
  public final int b()
  {
    return j;
  }
  
  public final int c()
  {
    return d;
  }
  
  public final boolean d()
  {
    if (q) {
      return false;
    }
    int i1 = (int)(AnimationUtils.currentAnimationTimeMillis() - l);
    if (i1 < m) {
      switch (a)
      {
      }
    }
    for (;;)
    {
      return true;
      float f1 = i1 * n;
      if (r == null) {}
      for (f1 = a(f1);; f1 = r.getInterpolation(f1))
      {
        j = (b + Math.round(o * f1));
        i1 = c;
        k = (Math.round(f1 * p) + i1);
        break;
      }
      f1 = i1 / m;
      i1 = (int)(100.0F * f1);
      float f2 = i1 / 100.0F;
      float f3 = (i1 + 1) / 100.0F;
      float f4 = u[i1];
      float f5 = u[(i1 + 1)];
      f1 = (f1 - f2) / (f3 - f2) * (f5 - f4) + f4;
      j = (b + Math.round((d - b) * f1));
      j = Math.min(j, g);
      j = Math.max(j, f);
      i1 = c;
      k = (Math.round(f1 * (e - c)) + i1);
      k = Math.min(k, i);
      k = Math.max(k, h);
      if ((j == d) && (k == e))
      {
        q = true;
        continue;
        j = d;
        k = e;
        q = true;
      }
    }
  }
  
  public final void e()
  {
    j = d;
    k = e;
    q = true;
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */