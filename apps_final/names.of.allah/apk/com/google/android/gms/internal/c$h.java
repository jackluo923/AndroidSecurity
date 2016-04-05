package com.google.android.gms.internal;

import java.util.List;

public final class c$h
  extends mb<h>
{
  public static final mc<d.a, h> fx = mc.a(11, h.class, 810);
  private static final h[] fy = new h[0];
  public int[] fA;
  public int[] fB;
  public int fC;
  public int[] fD;
  public int fE;
  public int fF;
  public int[] fz;
  
  public c$h()
  {
    n();
  }
  
  public final void a(ma paramma)
  {
    int j = 0;
    int i;
    if ((fz != null) && (fz.length > 0))
    {
      i = 0;
      while (i < fz.length)
      {
        paramma.p(1, fz[i]);
        i += 1;
      }
    }
    if ((fA != null) && (fA.length > 0))
    {
      i = 0;
      while (i < fA.length)
      {
        paramma.p(2, fA[i]);
        i += 1;
      }
    }
    if ((fB != null) && (fB.length > 0))
    {
      i = 0;
      while (i < fB.length)
      {
        paramma.p(3, fB[i]);
        i += 1;
      }
    }
    if (fC != 0) {
      paramma.p(4, fC);
    }
    if ((fD != null) && (fD.length > 0))
    {
      i = j;
      while (i < fD.length)
      {
        paramma.p(5, fD[i]);
        i += 1;
      }
    }
    if (fE != 0) {
      paramma.p(6, fE);
    }
    if (fF != 0) {
      paramma.p(7, fF);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int m = 0;
    int k = super.c();
    int i;
    if ((fz != null) && (fz.length > 0))
    {
      i = 0;
      j = 0;
      while (i < fz.length)
      {
        j += ma.eE(fz[i]);
        i += 1;
      }
    }
    for (int j = k + j + fz.length * 1;; j = k)
    {
      i = j;
      if (fA != null)
      {
        i = j;
        if (fA.length > 0)
        {
          i = 0;
          k = 0;
          while (i < fA.length)
          {
            k += ma.eE(fA[i]);
            i += 1;
          }
          i = j + k + fA.length * 1;
        }
      }
      j = i;
      if (fB != null)
      {
        j = i;
        if (fB.length > 0)
        {
          j = 0;
          k = 0;
          while (j < fB.length)
          {
            k += ma.eE(fB[j]);
            j += 1;
          }
          j = i + k + fB.length * 1;
        }
      }
      i = j;
      if (fC != 0) {
        i = j + ma.r(4, fC);
      }
      j = i;
      if (fD != null)
      {
        j = i;
        if (fD.length > 0)
        {
          k = 0;
          j = m;
          while (j < fD.length)
          {
            k += ma.eE(fD[j]);
            j += 1;
          }
          j = i + k + fD.length * 1;
        }
      }
      i = j;
      if (fE != 0) {
        i = j + ma.r(6, fE);
      }
      j = i;
      if (fF != 0) {
        j = i + ma.r(7, fF);
      }
      return j;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof h)) {
        return false;
      }
      paramObject = (h)paramObject;
      if (!md.equals(fz, fz)) {
        return false;
      }
      if (!md.equals(fA, fA)) {
        return false;
      }
      if (!md.equals(fB, fB)) {
        return false;
      }
      if (fC != fC) {
        return false;
      }
      if (!md.equals(fD, fD)) {
        return false;
      }
      if (fE != fE) {
        return false;
      }
      if (fF != fF) {
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
    int j = md.hashCode(fz);
    int k = md.hashCode(fA);
    int m = md.hashCode(fB);
    int n = fC;
    int i1 = md.hashCode(fD);
    int i2 = fE;
    int i3 = fF;
    if ((amU == null) || (amU.isEmpty())) {}
    for (int i = 0;; i = amU.hashCode()) {
      return i + (((((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31 + i3) * 31;
    }
  }
  
  public final h i(lz paramlz)
  {
    for (;;)
    {
      int i = paramlz.nw();
      int j;
      int[] arrayOfInt;
      int k;
      switch (i)
      {
      default: 
        if (a(paramlz, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        j = mi.b(paramlz, 8);
        if (fz == null) {}
        for (i = 0;; i = fz.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fz, 0, arrayOfInt, 0, i);
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
        fz = arrayOfInt;
        break;
      case 10: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fz == null) {}
        for (i = 0;; i = fz.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fz, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fz = arrayOfInt;
        paramlz.ey(k);
        break;
      case 16: 
        j = mi.b(paramlz, 16);
        if (fA == null) {}
        for (i = 0;; i = fA.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fA, 0, arrayOfInt, 0, i);
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
        fA = arrayOfInt;
        break;
      case 18: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fA == null) {}
        for (i = 0;; i = fA.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fA, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fA = arrayOfInt;
        paramlz.ey(k);
        break;
      case 24: 
        j = mi.b(paramlz, 24);
        if (fB == null) {}
        for (i = 0;; i = fB.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fB, 0, arrayOfInt, 0, i);
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
        fB = arrayOfInt;
        break;
      case 26: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fB == null) {}
        for (i = 0;; i = fB.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fB, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fB = arrayOfInt;
        paramlz.ey(k);
        break;
      case 32: 
        fC = paramlz.nz();
        break;
      case 40: 
        j = mi.b(paramlz, 40);
        if (fD == null) {}
        for (i = 0;; i = fD.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fD, 0, arrayOfInt, 0, i);
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
        fD = arrayOfInt;
        break;
      case 42: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fD == null) {}
        for (i = 0;; i = fD.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fD, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fD = arrayOfInt;
        paramlz.ey(k);
        break;
      case 48: 
        fE = paramlz.nz();
        break;
      case 56: 
        fF = paramlz.nz();
      }
    }
  }
  
  public final h n()
  {
    fz = mi.ana;
    fA = mi.ana;
    fB = mi.ana;
    fC = 0;
    fD = mi.ana;
    fE = 0;
    fF = 0;
    amU = null;
    amY = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */