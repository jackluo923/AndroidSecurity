package com.google.android.gms.internal;

import java.util.List;

public final class c$a
  extends mb<a>
{
  public int eE;
  public int eF;
  public int level;
  
  public c$a()
  {
    b();
  }
  
  public final a a(lz paramlz)
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
          level = i;
        }
        break;
      case 16: 
        eE = paramlz.nz();
        break;
      case 24: 
        eF = paramlz.nz();
      }
    }
  }
  
  public final void a(ma paramma)
  {
    if (level != 1) {
      paramma.p(1, level);
    }
    if (eE != 0) {
      paramma.p(2, eE);
    }
    if (eF != 0) {
      paramma.p(3, eF);
    }
    super.a(paramma);
  }
  
  public final a b()
  {
    level = 1;
    eE = 0;
    eF = 0;
    amU = null;
    amY = -1;
    return this;
  }
  
  protected final int c()
  {
    int j = super.c();
    int i = j;
    if (level != 1) {
      i = j + ma.r(1, level);
    }
    j = i;
    if (eE != 0) {
      j = i + ma.r(2, eE);
    }
    i = j;
    if (eF != 0) {
      i = j + ma.r(3, eF);
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
      if (level != level) {
        return false;
      }
      if (eE != eE) {
        return false;
      }
      if (eF != eF) {
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
    int j = level;
    int k = eE;
    int m = eF;
    if ((amU == null) || (amU.isEmpty())) {}
    for (int i = 0;; i = amU.hashCode()) {
      return i + (((j + 527) * 31 + k) * 31 + m) * 31;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */