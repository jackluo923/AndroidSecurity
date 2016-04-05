package com.google.android.gms.internal;

import java.util.List;

public final class c$b
  extends mb<b>
{
  private static volatile b[] eG;
  public int[] eH;
  public int eI;
  public boolean eJ;
  public boolean eK;
  public int name;
  
  public c$b()
  {
    e();
  }
  
  public static b[] d()
  {
    if (eG == null) {}
    synchronized (md.amX)
    {
      if (eG == null) {
        eG = new b[0];
      }
      return eG;
    }
  }
  
  public final void a(ma paramma)
  {
    if (eK) {
      paramma.a(1, eK);
    }
    paramma.p(2, eI);
    if ((eH != null) && (eH.length > 0))
    {
      int i = 0;
      while (i < eH.length)
      {
        paramma.p(3, eH[i]);
        i += 1;
      }
    }
    if (name != 0) {
      paramma.p(4, name);
    }
    if (eJ) {
      paramma.a(6, eJ);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int j = 0;
    int k = super.c();
    int i = k;
    if (eK) {
      i = k + ma.b(1, eK);
    }
    k = ma.r(2, eI) + i;
    if ((eH != null) && (eH.length > 0))
    {
      i = 0;
      while (i < eH.length)
      {
        j += ma.eE(eH[i]);
        i += 1;
      }
    }
    for (j = k + j + eH.length * 1;; j = k)
    {
      i = j;
      if (name != 0) {
        i = j + ma.r(4, name);
      }
      j = i;
      if (eJ) {
        j = i + ma.b(6, eJ);
      }
      return j;
    }
  }
  
  public final b c(lz paramlz)
  {
    for (;;)
    {
      int i = paramlz.nw();
      int j;
      int[] arrayOfInt;
      switch (i)
      {
      default: 
        if (a(paramlz, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        eK = paramlz.nA();
        break;
      case 16: 
        eI = paramlz.nz();
        break;
      case 24: 
        j = mi.b(paramlz, 24);
        if (eH == null) {}
        for (i = 0;; i = eH.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eH, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length - 1)
          {
            arrayOfInt[j] = paramlz.nz();
            paramlz.nw();
            j += 1;
          }
        }
        arrayOfInt[j] = paramlz.nz();
        eH = arrayOfInt;
        break;
      case 26: 
        int k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (eH == null) {}
        for (i = 0;; i = eH.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eH, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        eH = arrayOfInt;
        paramlz.ey(k);
        break;
      case 32: 
        name = paramlz.nz();
        break;
      case 48: 
        eJ = paramlz.nA();
      }
    }
  }
  
  public final b e()
  {
    eH = mi.ana;
    eI = 0;
    name = 0;
    eJ = false;
    eK = false;
    amU = null;
    amY = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof b)) {
        return false;
      }
      paramObject = (b)paramObject;
      if (!md.equals(eH, eH)) {
        return false;
      }
      if (eI != eI) {
        return false;
      }
      if (name != name) {
        return false;
      }
      if (eJ != eJ) {
        return false;
      }
      if (eK != eK) {
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
    int j = 1231;
    int m = md.hashCode(eH);
    int n = eI;
    int i1 = name;
    int i;
    if (eJ)
    {
      i = 1231;
      if (!eK) {
        break label105;
      }
      label43:
      if ((amU != null) && (!amU.isEmpty())) {
        break label112;
      }
    }
    label105:
    label112:
    for (int k = 0;; k = amU.hashCode())
    {
      return k + ((i + (((m + 527) * 31 + n) * 31 + i1) * 31) * 31 + j) * 31;
      i = 1237;
      break;
      j = 1237;
      break label43;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */