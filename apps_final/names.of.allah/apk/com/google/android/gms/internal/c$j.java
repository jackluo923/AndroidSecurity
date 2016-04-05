package com.google.android.gms.internal;

import java.util.List;

public final class c$j
  extends mb<j>
{
  public c.i[] fJ;
  public c.f fK;
  public String fL;
  
  public c$j()
  {
    q();
  }
  
  public static j b(byte[] paramArrayOfByte)
  {
    return (j)mf.a(new j(), paramArrayOfByte);
  }
  
  public final void a(ma paramma)
  {
    if ((fJ != null) && (fJ.length > 0))
    {
      int i = 0;
      while (i < fJ.length)
      {
        c.i locali = fJ[i];
        if (locali != null) {
          paramma.a(1, locali);
        }
        i += 1;
      }
    }
    if (fK != null) {
      paramma.a(2, fK);
    }
    if (!fL.equals("")) {
      paramma.b(3, fL);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int i = super.c();
    int j = i;
    if (fJ != null)
    {
      j = i;
      if (fJ.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= fJ.length) {
            break;
          }
          c.i locali = fJ[k];
          j = i;
          if (locali != null) {
            j = i + ma.b(1, locali);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (fK != null) {
      i = j + ma.b(2, fK);
    }
    j = i;
    if (!fL.equals("")) {
      j = i + ma.h(3, fL);
    }
    return j;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof j)) {
        return false;
      }
      paramObject = (j)paramObject;
      if (!md.equals(fJ, fJ)) {
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
      if (fL == null)
      {
        if (fL != null) {
          return false;
        }
      }
      else if (!fL.equals(fL)) {
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
    int n = md.hashCode(fJ);
    int i;
    int j;
    if (fK == null)
    {
      i = 0;
      if (fL != null) {
        break label88;
      }
      j = 0;
      label30:
      k = m;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label99;
        }
      }
    }
    label88:
    label99:
    for (int k = m;; k = amU.hashCode())
    {
      return (j + (i + (n + 527) * 31) * 31) * 31 + k;
      i = fK.hashCode();
      break;
      j = fL.hashCode();
      break label30;
    }
  }
  
  public final j k(lz paramlz)
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
        if (fJ == null) {}
        c.i[] arrayOfi;
        for (i = 0;; i = fJ.length)
        {
          arrayOfi = new c.i[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fJ, 0, arrayOfi, 0, i);
            j = i;
          }
          while (j < arrayOfi.length - 1)
          {
            arrayOfi[j] = new c.i();
            paramlz.a(arrayOfi[j]);
            paramlz.nw();
            j += 1;
          }
        }
        arrayOfi[j] = new c.i();
        paramlz.a(arrayOfi[j]);
        fJ = arrayOfi;
        break;
      case 18: 
        if (fK == null) {
          fK = new c.f();
        }
        paramlz.a(fK);
        break;
      case 26: 
        fL = paramlz.readString();
      }
    }
  }
  
  public final j q()
  {
    fJ = c.i.o();
    fK = null;
    fL = "";
    amU = null;
    amY = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */