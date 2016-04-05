package com.google.android.gms.internal;

import java.util.List;

public final class c$i
  extends mb<i>
{
  private static volatile i[] fG;
  public d.a fH;
  public c.d fI;
  public String name;
  
  public c$i()
  {
    p();
  }
  
  public static i[] o()
  {
    if (fG == null) {}
    synchronized (md.amX)
    {
      if (fG == null) {
        fG = new i[0];
      }
      return fG;
    }
  }
  
  public final void a(ma paramma)
  {
    if (!name.equals("")) {
      paramma.b(1, name);
    }
    if (fH != null) {
      paramma.a(2, fH);
    }
    if (fI != null) {
      paramma.a(3, fI);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int j = super.c();
    int i = j;
    if (!name.equals("")) {
      i = j + ma.h(1, name);
    }
    j = i;
    if (fH != null) {
      j = i + ma.b(2, fH);
    }
    i = j;
    if (fI != null) {
      i = j + ma.b(3, fI);
    }
    return i;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof i)) {
        return false;
      }
      paramObject = (i)paramObject;
      if (name == null)
      {
        if (name != null) {
          return false;
        }
      }
      else if (!name.equals(name)) {
        return false;
      }
      if (fH == null)
      {
        if (fH != null) {
          return false;
        }
      }
      else if (!fH.equals(fH)) {
        return false;
      }
      if (fI == null)
      {
        if (fI != null) {
          return false;
        }
      }
      else if (!fI.equals(fI)) {
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
    int n = 0;
    int i;
    int j;
    label21:
    int k;
    if (name == null)
    {
      i = 0;
      if (fH != null) {
        break label90;
      }
      j = 0;
      if (fI != null) {
        break label101;
      }
      k = 0;
      label30:
      m = n;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label112;
        }
      }
    }
    label90:
    label101:
    label112:
    for (int m = n;; m = amU.hashCode())
    {
      return (k + (j + (i + 527) * 31) * 31) * 31 + m;
      i = name.hashCode();
      break;
      j = fH.hashCode();
      break label21;
      k = fI.hashCode();
      break label30;
    }
  }
  
  public final i j(lz paramlz)
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
        if (fH == null) {
          fH = new d.a();
        }
        paramlz.a(fH);
        break;
      case 26: 
        if (fI == null) {
          fI = new c.d();
        }
        paramlz.a(fI);
      }
    }
  }
  
  public final i p()
  {
    name = "";
    fH = null;
    fI = null;
    amU = null;
    amY = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */