package com.google.android.gms.internal;

import java.util.List;

public final class lx
  extends mb<lx>
{
  public lx.a[] amo;
  
  public lx()
  {
    nq();
  }
  
  public static lx n(byte[] paramArrayOfByte)
  {
    return (lx)mf.a(new lx(), paramArrayOfByte);
  }
  
  public final void a(ma paramma)
  {
    if ((amo != null) && (amo.length > 0))
    {
      int i = 0;
      while (i < amo.length)
      {
        lx.a locala = amo[i];
        if (locala != null) {
          paramma.a(1, locala);
        }
        i += 1;
      }
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int i = super.c();
    int k = i;
    if (amo != null)
    {
      k = i;
      if (amo.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= amo.length) {
            break;
          }
          lx.a locala = amo[j];
          k = i;
          if (locala != null) {
            k = i + ma.b(1, locala);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lx)) {
        return false;
      }
      paramObject = (lx)paramObject;
      if (!md.equals(amo, amo)) {
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
    int j = md.hashCode(amo);
    if ((amU == null) || (amU.isEmpty())) {}
    for (int i = 0;; i = amU.hashCode()) {
      return i + (j + 527) * 31;
    }
  }
  
  public final lx nq()
  {
    amo = lx.a.nr();
    amU = null;
    amY = -1;
    return this;
  }
  
  public final lx q(lz paramlz)
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
        int j = mi.b(paramlz, 10);
        if (amo == null) {}
        lx.a[] arrayOfa;
        for (i = 0;; i = amo.length)
        {
          arrayOfa = new lx.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(amo, 0, arrayOfa, 0, i);
            j = i;
          }
          while (j < arrayOfa.length - 1)
          {
            arrayOfa[j] = new lx.a();
            paramlz.a(arrayOfa[j]);
            paramlz.nw();
            j += 1;
          }
        }
        arrayOfa[j] = new lx.a();
        paramlz.a(arrayOfa[j]);
        amo = arrayOfa;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */