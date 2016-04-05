package com.google.android.gms.internal;

import java.util.List;

public final class c$e
  extends mb<e>
{
  private static volatile e[] eU;
  public int key;
  public int value;
  
  public c$e()
  {
    j();
  }
  
  public static e[] i()
  {
    if (eU == null) {}
    synchronized (md.amX)
    {
      if (eU == null) {
        eU = new e[0];
      }
      return eU;
    }
  }
  
  public final void a(ma paramma)
  {
    paramma.p(1, key);
    paramma.p(2, value);
    super.a(paramma);
  }
  
  protected final int c()
  {
    return super.c() + ma.r(1, key) + ma.r(2, value);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof e)) {
        return false;
      }
      paramObject = (e)paramObject;
      if (key != key) {
        return false;
      }
      if (value != value) {
        return false;
      }
      if ((amU != null) && (!amU.isEmpty())) {
        break;
      }
    } while ((amU == null) || (amU.isEmpty()));
    return false;
    return amU.equals(amU);
  }
  
  public final e f(lz paramlz)
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
        key = paramlz.nz();
        break;
      case 16: 
        value = paramlz.nz();
      }
    }
  }
  
  public final int hashCode()
  {
    int j = key;
    int k = value;
    if ((amU == null) || (amU.isEmpty())) {}
    for (int i = 0;; i = amU.hashCode()) {
      return i + ((j + 527) * 31 + k) * 31;
    }
  }
  
  public final e j()
  {
    key = 0;
    value = 0;
    amU = null;
    amY = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */