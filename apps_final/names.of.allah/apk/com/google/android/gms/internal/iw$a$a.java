package com.google.android.gms.internal;

import java.util.List;

public final class iw$a$a
  extends mb<a>
{
  private static volatile a[] Uw;
  public String Ux;
  public String Uy;
  public int viewId;
  
  public iw$a$a()
  {
    iN();
  }
  
  public static a[] iM()
  {
    if (Uw == null) {}
    synchronized (md.amX)
    {
      if (Uw == null) {
        Uw = new a[0];
      }
      return Uw;
    }
  }
  
  public final void a(ma paramma)
  {
    if (!Ux.equals("")) {
      paramma.b(1, Ux);
    }
    if (!Uy.equals("")) {
      paramma.b(2, Uy);
    }
    if (viewId != 0) {
      paramma.p(3, viewId);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int j = super.c();
    int i = j;
    if (!Ux.equals("")) {
      i = j + ma.h(1, Ux);
    }
    j = i;
    if (!Uy.equals("")) {
      j = i + ma.h(2, Uy);
    }
    i = j;
    if (viewId != 0) {
      i = j + ma.r(3, viewId);
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
      if (Ux == null)
      {
        if (Ux != null) {
          return false;
        }
      }
      else if (!Ux.equals(Ux)) {
        return false;
      }
      if (Uy == null)
      {
        if (Uy != null) {
          return false;
        }
      }
      else if (!Uy.equals(Uy)) {
        return false;
      }
      if (viewId != viewId) {
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
    label21:
    int n;
    if (Ux == null)
    {
      i = 0;
      if (Uy != null) {
        break label85;
      }
      j = 0;
      n = viewId;
      k = m;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label96;
        }
      }
    }
    label85:
    label96:
    for (int k = m;; k = amU.hashCode())
    {
      return ((j + (i + 527) * 31) * 31 + n) * 31 + k;
      i = Ux.hashCode();
      break;
      j = Uy.hashCode();
      break label21;
    }
  }
  
  public final a iN()
  {
    Ux = "";
    Uy = "";
    viewId = 0;
    amU = null;
    amY = -1;
    return this;
  }
  
  public final a o(lz paramlz)
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
        Ux = paramlz.readString();
        break;
      case 18: 
        Uy = paramlz.readString();
        break;
      case 24: 
        viewId = paramlz.nz();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iw.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */