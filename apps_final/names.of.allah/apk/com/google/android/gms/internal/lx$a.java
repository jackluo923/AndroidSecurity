package com.google.android.gms.internal;

import java.util.List;

public final class lx$a
  extends mb<a>
{
  private static volatile a[] amp;
  public lx.a.a amq;
  public String name;
  
  public lx$a()
  {
    ns();
  }
  
  public static a[] nr()
  {
    if (amp == null) {}
    synchronized (md.amX)
    {
      if (amp == null) {
        amp = new a[0];
      }
      return amp;
    }
  }
  
  public final void a(ma paramma)
  {
    paramma.b(1, name);
    if (amq != null) {
      paramma.a(2, amq);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int j = super.c() + ma.h(1, name);
    int i = j;
    if (amq != null) {
      i = j + ma.b(2, amq);
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
      if (name == null)
      {
        if (name != null) {
          return false;
        }
      }
      else if (!name.equals(name)) {
        return false;
      }
      if (amq == null)
      {
        if (amq != null) {
          return false;
        }
      }
      else if (!amq.equals(amq)) {
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
    int m = 0;
    int i;
    int j;
    if (name == null)
    {
      i = 0;
      if (amq != null) {
        break label73;
      }
      j = 0;
      label21:
      k = m;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label84;
        }
      }
    }
    label73:
    label84:
    for (int k = m;; k = amU.hashCode())
    {
      return (j + (i + 527) * 31) * 31 + k;
      i = name.hashCode();
      break;
      j = amq.hashCode();
      break label21;
    }
  }
  
  public final a ns()
  {
    name = "";
    amq = null;
    amU = null;
    amY = -1;
    return this;
  }
  
  public final a r(lz paramlz)
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
      case 10: 
        name = paramlz.readString();
        break;
      case 18: 
        if (amq == null) {
          amq = new lx.a.a();
        }
        paramlz.a(amq);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */