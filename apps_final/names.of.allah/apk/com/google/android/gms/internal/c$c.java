package com.google.android.gms.internal;

import java.util.List;

public final class c$c
  extends mb<c>
{
  private static volatile c[] eL;
  public String eM;
  public long eN;
  public long eO;
  public boolean eP;
  public long eQ;
  
  public c$c()
  {
    g();
  }
  
  public static c[] f()
  {
    if (eL == null) {}
    synchronized (md.amX)
    {
      if (eL == null) {
        eL = new c[0];
      }
      return eL;
    }
  }
  
  public final void a(ma paramma)
  {
    if (!eM.equals("")) {
      paramma.b(1, eM);
    }
    if (eN != 0L) {
      paramma.b(2, eN);
    }
    if (eO != 2147483647L) {
      paramma.b(3, eO);
    }
    if (eP) {
      paramma.a(4, eP);
    }
    if (eQ != 0L) {
      paramma.b(5, eQ);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int j = super.c();
    int i = j;
    if (!eM.equals("")) {
      i = j + ma.h(1, eM);
    }
    j = i;
    if (eN != 0L) {
      j = i + ma.d(2, eN);
    }
    i = j;
    if (eO != 2147483647L) {
      i = j + ma.d(3, eO);
    }
    j = i;
    if (eP) {
      j = i + ma.b(4, eP);
    }
    i = j;
    if (eQ != 0L) {
      i = j + ma.d(5, eQ);
    }
    return i;
  }
  
  public final c d(lz paramlz)
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
        eM = paramlz.readString();
        break;
      case 16: 
        eN = paramlz.ny();
        break;
      case 24: 
        eO = paramlz.ny();
        break;
      case 32: 
        eP = paramlz.nA();
        break;
      case 40: 
        eQ = paramlz.ny();
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof c)) {
        return false;
      }
      paramObject = (c)paramObject;
      if (eM == null)
      {
        if (eM != null) {
          return false;
        }
      }
      else if (!eM.equals(eM)) {
        return false;
      }
      if (eN != eN) {
        return false;
      }
      if (eO != eO) {
        return false;
      }
      if (eP != eP) {
        return false;
      }
      if (eQ != eQ) {
        return false;
      }
      if ((amU != null) && (!amU.isEmpty())) {
        break;
      }
    } while ((amU == null) || (amU.isEmpty()));
    return false;
    return amU.equals(amU);
  }
  
  public final c g()
  {
    eM = "";
    eN = 0L;
    eO = 2147483647L;
    eP = false;
    eQ = 0L;
    amU = null;
    amY = -1;
    return this;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int i;
    int n;
    int i1;
    int j;
    label53:
    int i2;
    if (eM == null)
    {
      i = 0;
      n = (int)(eN ^ eN >>> 32);
      i1 = (int)(eO ^ eO >>> 32);
      if (!eP) {
        break label138;
      }
      j = 1231;
      i2 = (int)(eQ ^ eQ >>> 32);
      k = m;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label145;
        }
      }
    }
    label138:
    label145:
    for (int k = m;; k = amU.hashCode())
    {
      return ((j + (((i + 527) * 31 + n) * 31 + i1) * 31) * 31 + i2) * 31 + k;
      i = eM.hashCode();
      break;
      j = 1237;
      break label53;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */