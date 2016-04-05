package com.google.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;

@Deprecated
public final class d
{
  public static final d a = new d(-1, -2, (byte)0);
  public static final d b = new d(320, 50, (byte)0);
  public static final d c = new d(300, 250, (byte)0);
  public static final d d = new d(468, 60, (byte)0);
  public static final d e = new d(728, 90, (byte)0);
  public static final d f = new d(160, 600, (byte)0);
  private final AdSize g;
  
  public d(int paramInt1, int paramInt2)
  {
    this(new AdSize(paramInt1, paramInt2));
  }
  
  private d(int paramInt1, int paramInt2, byte paramByte)
  {
    this(new AdSize(paramInt1, paramInt2));
  }
  
  public d(AdSize paramAdSize)
  {
    g = paramAdSize;
  }
  
  public final int a()
  {
    return g.getWidth();
  }
  
  public final int a(Context paramContext)
  {
    return g.getWidthInPixels(paramContext);
  }
  
  public final d a(d... paramVarArgs)
  {
    if (paramVarArgs == null) {
      localObject2 = null;
    }
    Object localObject1;
    float f1;
    int k;
    int m;
    int n;
    int i;
    do
    {
      return (d)localObject2;
      localObject1 = null;
      f1 = 0.0F;
      k = g.getWidth();
      m = g.getHeight();
      n = paramVarArgs.length;
      i = 0;
      localObject2 = localObject1;
    } while (i >= n);
    Object localObject2 = paramVarArgs[i];
    int i1 = g.getWidth();
    int i2 = g.getHeight();
    int j = g.getWidth();
    int i3 = g.getHeight();
    label150:
    float f2;
    if ((i1 <= j * 1.25F) && (i1 >= j * 0.8F) && (i2 <= i3 * 1.25F) && (i2 >= i3 * 0.8F))
    {
      j = 1;
      if (j == 0) {
        break label212;
      }
      float f3 = i1 * i2 / (k * m);
      f2 = f3;
      if (f3 > 1.0F) {
        f2 = 1.0F / f3;
      }
      if (f2 <= f1) {
        break label212;
      }
      localObject1 = localObject2;
    }
    for (;;)
    {
      i += 1;
      f1 = f2;
      break;
      j = 0;
      break label150;
      label212:
      f2 = f1;
    }
  }
  
  public final int b()
  {
    return g.getHeight();
  }
  
  public final int b(Context paramContext)
  {
    return g.getHeightInPixels(paramContext);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {
      return false;
    }
    paramObject = (d)paramObject;
    return g.equals(g);
  }
  
  public final int hashCode()
  {
    return g.hashCode();
  }
  
  public final String toString()
  {
    return g.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */