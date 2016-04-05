package com.google.android.gms.internal;

import java.util.List;

public final class c$d
  extends mb<d>
{
  public d.a[] eR;
  public d.a[] eS;
  public c.c[] eT;
  
  public c$d()
  {
    h();
  }
  
  public final void a(ma paramma)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((eR != null) && (eR.length > 0))
    {
      i = 0;
      while (i < eR.length)
      {
        localObject = eR[i];
        if (localObject != null) {
          paramma.a(1, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((eS != null) && (eS.length > 0))
    {
      i = 0;
      while (i < eS.length)
      {
        localObject = eS[i];
        if (localObject != null) {
          paramma.a(2, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((eT != null) && (eT.length > 0))
    {
      i = j;
      while (i < eT.length)
      {
        localObject = eT[i];
        if (localObject != null) {
          paramma.a(3, (mf)localObject);
        }
        i += 1;
      }
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int m = 0;
    int i = super.c();
    int j = i;
    Object localObject;
    if (eR != null)
    {
      j = i;
      if (eR.length > 0)
      {
        j = 0;
        while (j < eR.length)
        {
          localObject = eR[j];
          k = i;
          if (localObject != null) {
            k = i + ma.b(1, (mf)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (eS != null)
    {
      i = j;
      if (eS.length > 0)
      {
        i = j;
        j = 0;
        while (j < eS.length)
        {
          localObject = eS[j];
          k = i;
          if (localObject != null) {
            k = i + ma.b(2, (mf)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (eT != null)
    {
      k = i;
      if (eT.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= eT.length) {
            break;
          }
          localObject = eT[j];
          k = i;
          if (localObject != null) {
            k = i + ma.b(3, (mf)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public final d e(lz paramlz)
  {
    for (;;)
    {
      int i = paramlz.nw();
      int j;
      Object localObject;
      switch (i)
      {
      default: 
        if (a(paramlz, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        j = mi.b(paramlz, 10);
        if (eR == null) {}
        for (i = 0;; i = eR.length)
        {
          localObject = new d.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eR, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new d.a();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new d.a();
        paramlz.a(localObject[j]);
        eR = ((d.a[])localObject);
        break;
      case 18: 
        j = mi.b(paramlz, 18);
        if (eS == null) {}
        for (i = 0;; i = eS.length)
        {
          localObject = new d.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eS, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new d.a();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new d.a();
        paramlz.a(localObject[j]);
        eS = ((d.a[])localObject);
        break;
      case 26: 
        j = mi.b(paramlz, 26);
        if (eT == null) {}
        for (i = 0;; i = eT.length)
        {
          localObject = new c.c[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eT, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.c();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new c.c();
        paramlz.a(localObject[j]);
        eT = ((c.c[])localObject);
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof d)) {
        return false;
      }
      paramObject = (d)paramObject;
      if (!md.equals(eR, eR)) {
        return false;
      }
      if (!md.equals(eS, eS)) {
        return false;
      }
      if (!md.equals(eT, eT)) {
        return false;
      }
      if ((amU != null) && (!amU.isEmpty())) {
        break;
      }
    } while ((amU == null) || (amU.isEmpty()));
    return false;
    return amU.equals(amU);
  }
  
  public final d h()
  {
    eR = d.a.r();
    eS = d.a.r();
    eT = c.c.f();
    amU = null;
    amY = -1;
    return this;
  }
  
  public final int hashCode()
  {
    int j = md.hashCode(eR);
    int k = md.hashCode(eS);
    int m = md.hashCode(eT);
    if ((amU == null) || (amU.isEmpty())) {}
    for (int i = 0;; i = amU.hashCode()) {
      return i + (((j + 527) * 31 + k) * 31 + m) * 31;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */