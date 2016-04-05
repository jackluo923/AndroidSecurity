package com.google.android.gms.internal;

import java.util.List;

public final class lf$a
  extends mb<a>
{
  public long aiD;
  public c.j aiE;
  public c.f fK;
  
  public lf$a()
  {
    na();
  }
  
  public static a l(byte[] paramArrayOfByte)
  {
    return (a)mf.a(new a(), paramArrayOfByte);
  }
  
  public final void a(ma paramma)
  {
    paramma.b(1, aiD);
    if (fK != null) {
      paramma.a(2, fK);
    }
    if (aiE != null) {
      paramma.a(3, aiE);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int j = super.c() + ma.d(1, aiD);
    int i = j;
    if (fK != null) {
      i = j + ma.b(2, fK);
    }
    j = i;
    if (aiE != null) {
      j = i + ma.b(3, aiE);
    }
    return j;
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
      if (aiD != aiD) {
        return false;
      }
      if (fK == null)
      {
        if (fK != null) {
          return false;
        }
      }
      else if (!fK.equals(fK)) {
        return false;
      }
      if (aiE == null)
      {
        if (aiE != null) {
          return false;
        }
      }
      else if (!aiE.equals(aiE)) {
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
    int n = (int)(aiD ^ aiD >>> 32);
    int i;
    int j;
    if (fK == null)
    {
      i = 0;
      if (aiE != null) {
        break label94;
      }
      j = 0;
      label36:
      k = m;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label105;
        }
      }
    }
    label94:
    label105:
    for (int k = m;; k = amU.hashCode())
    {
      return (j + (i + (n + 527) * 31) * 31) * 31 + k;
      i = fK.hashCode();
      break;
      j = aiE.hashCode();
      break label36;
    }
  }
  
  public final a na()
  {
    aiD = 0L;
    fK = null;
    aiE = null;
    amU = null;
    amY = -1;
    return this;
  }
  
  public final a p(lz paramlz)
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
        aiD = paramlz.ny();
        break;
      case 18: 
        if (fK == null) {
          fK = new c.f();
        }
        paramlz.a(fK);
        break;
      case 26: 
        if (aiE == null) {
          aiE = new c.j();
        }
        paramlz.a(aiE);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lf.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */