package com.google.android.gms.internal;

import com.google.ads.b;
import com.google.ads.c;
import com.google.ads.d;
import java.util.Date;
import java.util.HashSet;

public final class cc
{
  public static int a(b paramb)
  {
    switch (cc.1.nX[paramb.ordinal()])
    {
    default: 
      return 0;
    case 2: 
      return 1;
    case 3: 
      return 2;
    }
    return 3;
  }
  
  public static d b(am paramam)
  {
    int i = 0;
    d[] arrayOfd = new d[6];
    arrayOfd[0] = d.a;
    arrayOfd[1] = d.b;
    arrayOfd[2] = d.c;
    arrayOfd[3] = d.d;
    arrayOfd[4] = d.e;
    arrayOfd[5] = d.f;
    while (i < arrayOfd.length)
    {
      if ((arrayOfd[i].a() == width) && (arrayOfd[i].b() == height)) {
        return arrayOfd[i];
      }
      i += 1;
    }
    return new d(com.google.android.gms.ads.a.a(width, height, mc));
  }
  
  public static com.google.ads.mediation.a e(aj paramaj)
  {
    if (lS != null) {}
    for (HashSet localHashSet = new HashSet(lS);; localHashSet = null) {
      return new com.google.ads.mediation.a(new Date(lQ), h(lR), localHashSet, lT, lY);
    }
  }
  
  public static c h(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return c.a;
    case 2: 
      return c.c;
    }
    return c.b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */