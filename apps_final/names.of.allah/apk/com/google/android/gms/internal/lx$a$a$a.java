package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;

public final class lx$a$a$a
  extends mb<a>
{
  public boolean amA;
  public lx.a[] amB;
  public lx.a.a[] amC;
  public String[] amD;
  public long[] amE;
  public float[] amF;
  public long amG;
  public byte[] amt;
  public String amu;
  public double amv;
  public float amw;
  public long amx;
  public int amy;
  public int amz;
  
  public lx$a$a$a()
  {
    nv();
  }
  
  public final void a(ma paramma)
  {
    int j = 0;
    if (!Arrays.equals(amt, mi.anh)) {
      paramma.a(1, amt);
    }
    if (!amu.equals("")) {
      paramma.b(2, amu);
    }
    if (Double.doubleToLongBits(amv) != Double.doubleToLongBits(0.0D)) {
      paramma.a(3, amv);
    }
    if (Float.floatToIntBits(amw) != Float.floatToIntBits(0.0F)) {
      paramma.b(4, amw);
    }
    if (amx != 0L) {
      paramma.b(5, amx);
    }
    if (amy != 0) {
      paramma.p(6, amy);
    }
    if (amz != 0) {
      paramma.q(7, amz);
    }
    if (amA) {
      paramma.a(8, amA);
    }
    int i;
    Object localObject;
    if ((amB != null) && (amB.length > 0))
    {
      i = 0;
      while (i < amB.length)
      {
        localObject = amB[i];
        if (localObject != null) {
          paramma.a(9, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((amC != null) && (amC.length > 0))
    {
      i = 0;
      while (i < amC.length)
      {
        localObject = amC[i];
        if (localObject != null) {
          paramma.a(10, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((amD != null) && (amD.length > 0))
    {
      i = 0;
      while (i < amD.length)
      {
        localObject = amD[i];
        if (localObject != null) {
          paramma.b(11, (String)localObject);
        }
        i += 1;
      }
    }
    if ((amE != null) && (amE.length > 0))
    {
      i = 0;
      while (i < amE.length)
      {
        paramma.b(12, amE[i]);
        i += 1;
      }
    }
    if (amG != 0L) {
      paramma.b(13, amG);
    }
    if ((amF != null) && (amF.length > 0))
    {
      i = j;
      while (i < amF.length)
      {
        paramma.b(14, amF[i]);
        i += 1;
      }
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int i2 = 0;
    int j = super.c();
    int i = j;
    if (!Arrays.equals(amt, mi.anh)) {
      i = j + ma.b(1, amt);
    }
    j = i;
    if (!amu.equals("")) {
      j = i + ma.h(2, amu);
    }
    i = j;
    if (Double.doubleToLongBits(amv) != Double.doubleToLongBits(0.0D)) {
      i = j + ma.b(3, amv);
    }
    j = i;
    if (Float.floatToIntBits(amw) != Float.floatToIntBits(0.0F)) {
      j = i + ma.c(4, amw);
    }
    i = j;
    if (amx != 0L) {
      i = j + ma.d(5, amx);
    }
    j = i;
    if (amy != 0) {
      j = i + ma.r(6, amy);
    }
    int k = j;
    if (amz != 0) {
      k = j + ma.s(7, amz);
    }
    i = k;
    if (amA) {
      i = k + ma.b(8, amA);
    }
    j = i;
    Object localObject;
    if (amB != null)
    {
      j = i;
      if (amB.length > 0)
      {
        j = 0;
        while (j < amB.length)
        {
          localObject = amB[j];
          k = i;
          if (localObject != null) {
            k = i + ma.b(9, (mf)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (amC != null)
    {
      i = j;
      if (amC.length > 0)
      {
        i = j;
        j = 0;
        while (j < amC.length)
        {
          localObject = amC[j];
          k = i;
          if (localObject != null) {
            k = i + ma.b(10, (mf)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (amD != null)
    {
      j = i;
      if (amD.length > 0)
      {
        j = 0;
        k = 0;
        int n;
        for (int m = 0; j < amD.length; m = n)
        {
          localObject = amD[j];
          int i1 = k;
          n = m;
          if (localObject != null)
          {
            n = m + 1;
            i1 = k + ma.cz((String)localObject);
          }
          j += 1;
          k = i1;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (amE != null)
    {
      i = j;
      if (amE.length > 0)
      {
        k = 0;
        i = i2;
        while (i < amE.length)
        {
          k += ma.D(amE[i]);
          i += 1;
        }
        i = j + k + amE.length * 1;
      }
    }
    j = i;
    if (amG != 0L) {
      j = i + ma.d(13, amG);
    }
    i = j;
    if (amF != null)
    {
      i = j;
      if (amF.length > 0) {
        i = j + amF.length * 4 + amF.length * 1;
      }
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
      if (!Arrays.equals(amt, amt)) {
        return false;
      }
      if (amu == null)
      {
        if (amu != null) {
          return false;
        }
      }
      else if (!amu.equals(amu)) {
        return false;
      }
      if (Double.doubleToLongBits(amv) != Double.doubleToLongBits(amv)) {
        return false;
      }
      if (Float.floatToIntBits(amw) != Float.floatToIntBits(amw)) {
        return false;
      }
      if (amx != amx) {
        return false;
      }
      if (amy != amy) {
        return false;
      }
      if (amz != amz) {
        return false;
      }
      if (amA != amA) {
        return false;
      }
      if (!md.equals(amB, amB)) {
        return false;
      }
      if (!md.equals(amC, amC)) {
        return false;
      }
      if (!md.equals(amD, amD)) {
        return false;
      }
      if (!md.equals(amE, amE)) {
        return false;
      }
      if (!md.equals(amF, amF)) {
        return false;
      }
      if (amG != amG) {
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
    int n = Arrays.hashCode(amt);
    int i;
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int j;
    label88:
    int i6;
    int i7;
    int i8;
    int i9;
    int i10;
    int i11;
    if (amu == null)
    {
      i = 0;
      long l = Double.doubleToLongBits(amv);
      i1 = (int)(l ^ l >>> 32);
      i2 = Float.floatToIntBits(amw);
      i3 = (int)(amx ^ amx >>> 32);
      i4 = amy;
      i5 = amz;
      if (!amA) {
        break label272;
      }
      j = 1231;
      i6 = md.hashCode(amB);
      i7 = md.hashCode(amC);
      i8 = md.hashCode(amD);
      i9 = md.hashCode(amE);
      i10 = md.hashCode(amF);
      i11 = (int)(amG ^ amG >>> 32);
      k = m;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label279;
        }
      }
    }
    label272:
    label279:
    for (int k = m;; k = amU.hashCode())
    {
      return (((((((j + ((((((i + (n + 527) * 31) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i9) * 31 + i10) * 31 + i11) * 31 + k;
      i = amu.hashCode();
      break;
      j = 1237;
      break label88;
    }
  }
  
  public final a nv()
  {
    amt = mi.anh;
    amu = "";
    amv = 0.0D;
    amw = 0.0F;
    amx = 0L;
    amy = 0;
    amz = 0;
    amA = false;
    amB = lx.a.nr();
    amC = lx.a.a.nt();
    amD = mi.anf;
    amE = mi.anb;
    amF = mi.anc;
    amG = 0L;
    amU = null;
    amY = -1;
    return this;
  }
  
  public final a t(lz paramlz)
  {
    for (;;)
    {
      int i = paramlz.nw();
      int j;
      Object localObject;
      int k;
      switch (i)
      {
      default: 
        if (a(paramlz, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        amt = paramlz.readBytes();
        break;
      case 18: 
        amu = paramlz.readString();
        break;
      case 25: 
        amv = paramlz.readDouble();
        break;
      case 37: 
        amw = paramlz.readFloat();
        break;
      case 40: 
        amx = paramlz.ny();
        break;
      case 48: 
        amy = paramlz.nz();
        break;
      case 56: 
        amz = paramlz.nB();
        break;
      case 64: 
        amA = paramlz.nA();
        break;
      case 74: 
        j = mi.b(paramlz, 74);
        if (amB == null) {}
        for (i = 0;; i = amB.length)
        {
          localObject = new lx.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(amB, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new lx.a();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new lx.a();
        paramlz.a(localObject[j]);
        amB = ((lx.a[])localObject);
        break;
      case 82: 
        j = mi.b(paramlz, 82);
        if (amC == null) {}
        for (i = 0;; i = amC.length)
        {
          localObject = new lx.a.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(amC, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new lx.a.a();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new lx.a.a();
        paramlz.a(localObject[j]);
        amC = ((lx.a.a[])localObject);
        break;
      case 90: 
        j = mi.b(paramlz, 90);
        if (amD == null) {}
        for (i = 0;; i = amD.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(amD, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramlz.readString();
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = paramlz.readString();
        amD = ((String[])localObject);
        break;
      case 96: 
        j = mi.b(paramlz, 96);
        if (amE == null) {}
        for (i = 0;; i = amE.length)
        {
          localObject = new long[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(amE, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramlz.ny();
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = paramlz.ny();
        amE = ((long[])localObject);
        break;
      case 98: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.ny();
          j += 1;
        }
        paramlz.ez(i);
        if (amE == null) {}
        for (i = 0;; i = amE.length)
        {
          localObject = new long[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(amE, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length)
          {
            localObject[j] = paramlz.ny();
            j += 1;
          }
        }
        amE = ((long[])localObject);
        paramlz.ey(k);
        break;
      case 104: 
        amG = paramlz.ny();
        break;
      case 117: 
        j = mi.b(paramlz, 117);
        if (amF == null) {}
        for (i = 0;; i = amF.length)
        {
          localObject = new float[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(amF, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramlz.readFloat();
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = paramlz.readFloat();
        amF = ((float[])localObject);
        break;
      case 114: 
        i = paramlz.nD();
        k = paramlz.ex(i);
        j = i / 4;
        if (amF == null) {}
        for (i = 0;; i = amF.length)
        {
          localObject = new float[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(amF, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length)
          {
            localObject[j] = paramlz.readFloat();
            j += 1;
          }
        }
        amF = ((float[])localObject);
        paramlz.ey(k);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lx.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */