package com.google.android.gms.internal;

import java.util.List;

public final class iw$a
  extends mb<a>
{
  public iw.a.a[] Uv;
  
  public iw$a()
  {
    iL();
  }
  
  public final void a(ma paramma)
  {
    if ((Uv != null) && (Uv.length > 0))
    {
      int i = 0;
      while (i < Uv.length)
      {
        iw.a.a locala = Uv[i];
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
    if (Uv != null)
    {
      k = i;
      if (Uv.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= Uv.length) {
            break;
          }
          iw.a.a locala = Uv[j];
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
      if (!(paramObject instanceof a)) {
        return false;
      }
      paramObject = (a)paramObject;
      if (!md.equals(Uv, Uv)) {
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
    int j = md.hashCode(Uv);
    if ((amU == null) || (amU.isEmpty())) {}
    for (int i = 0;; i = amU.hashCode()) {
      return i + (j + 527) * 31;
    }
  }
  
  public final a iL()
  {
    Uv = iw.a.a.iM();
    amU = null;
    amY = -1;
    return this;
  }
  
  public final a n(lz paramlz)
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
        if (Uv == null) {}
        iw.a.a[] arrayOfa;
        for (i = 0;; i = Uv.length)
        {
          arrayOfa = new iw.a.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(Uv, 0, arrayOfa, 0, i);
            j = i;
          }
          while (j < arrayOfa.length - 1)
          {
            arrayOfa[j] = new iw.a.a();
            paramlz.a(arrayOfa[j]);
            paramlz.nw();
            j += 1;
          }
        }
        arrayOfa[j] = new iw.a.a();
        paramlz.a(arrayOfa[j]);
        Uv = arrayOfa;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */