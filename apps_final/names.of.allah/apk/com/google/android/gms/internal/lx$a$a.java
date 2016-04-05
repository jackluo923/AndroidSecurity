package com.google.android.gms.internal;

import java.util.List;

public final class lx$a$a
  extends mb<a>
{
  private static volatile a[] amr;
  public lx.a.a.a ams;
  public int type;
  
  public lx$a$a()
  {
    nu();
  }
  
  public static a[] nt()
  {
    if (amr == null) {}
    synchronized (md.amX)
    {
      if (amr == null) {
        amr = new a[0];
      }
      return amr;
    }
  }
  
  public final void a(ma paramma)
  {
    paramma.p(1, type);
    if (ams != null) {
      paramma.a(2, ams);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int j = super.c() + ma.r(1, type);
    int i = j;
    if (ams != null) {
      i = j + ma.b(2, ams);
    }
    return i;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof a)) {
        return false;
      }
      paramObject = (a)paramObject;
      if (type != type) {
        return false;
      }
      if (ams == null)
      {
        if (ams != null) {
          return false;
        }
      }
      else if (!ams.equals(ams)) {
        return false;
      }
      if ((amU != null) && (!amU.isEmpty())) {
        break;
      }
    } while ((amU == null) || (amU.isEmpty()));
    return false;
    return amU.equals(amU);
  }
  
  public final int hashCode()
  {
    int k = 0;
    int m = type;
    int i;
    if (ams == null)
    {
      i = 0;
      j = k;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label68;
        }
      }
    }
    label68:
    for (int j = k;; j = amU.hashCode())
    {
      return (i + (m + 527) * 31) * 31 + j;
      i = ams.hashCode();
      break;
    }
  }
  
  public final a nu()
  {
    type = 1;
    ams = null;
    amU = null;
    amY = -1;
    return this;
  }
  
  public final a s(lz paramlz)
  {
    for (;;)
    {
      int i = paramlz.nw();
      switch (i)
      {
      default: 
        if (a(paramlz, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        i = paramlz.nz();
        switch (i)
        {
        default: 
          break;
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
        case 9: 
        case 10: 
        case 11: 
        case 12: 
        case 13: 
        case 14: 
        case 15: 
          type = i;
        }
        break;
      case 18: 
        if (ams == null) {
          ams = new lx.a.a.a();
        }
        paramlz.a(ams);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lx.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */