package com.google.android.gms.internal;

import java.util.List;

public final class d$a
  extends mb<a>
{
  private static volatile a[] fM;
  public String fN;
  public a[] fO;
  public a[] fP;
  public a[] fQ;
  public String fR;
  public String fS;
  public long fT;
  public boolean fU;
  public a[] fV;
  public int[] fW;
  public boolean fX;
  public int type;
  
  public d$a()
  {
    s();
  }
  
  public static a[] r()
  {
    if (fM == null) {}
    synchronized (md.amX)
    {
      if (fM == null) {
        fM = new a[0];
      }
      return fM;
    }
  }
  
  public final void a(ma paramma)
  {
    int j = 0;
    paramma.p(1, type);
    if (!fN.equals("")) {
      paramma.b(2, fN);
    }
    int i;
    a locala;
    if ((fO != null) && (fO.length > 0))
    {
      i = 0;
      while (i < fO.length)
      {
        locala = fO[i];
        if (locala != null) {
          paramma.a(3, locala);
        }
        i += 1;
      }
    }
    if ((fP != null) && (fP.length > 0))
    {
      i = 0;
      while (i < fP.length)
      {
        locala = fP[i];
        if (locala != null) {
          paramma.a(4, locala);
        }
        i += 1;
      }
    }
    if ((fQ != null) && (fQ.length > 0))
    {
      i = 0;
      while (i < fQ.length)
      {
        locala = fQ[i];
        if (locala != null) {
          paramma.a(5, locala);
        }
        i += 1;
      }
    }
    if (!fR.equals("")) {
      paramma.b(6, fR);
    }
    if (!fS.equals("")) {
      paramma.b(7, fS);
    }
    if (fT != 0L) {
      paramma.b(8, fT);
    }
    if (fX) {
      paramma.a(9, fX);
    }
    if ((fW != null) && (fW.length > 0))
    {
      i = 0;
      while (i < fW.length)
      {
        paramma.p(10, fW[i]);
        i += 1;
      }
    }
    if ((fV != null) && (fV.length > 0))
    {
      i = j;
      while (i < fV.length)
      {
        locala = fV[i];
        if (locala != null) {
          paramma.a(11, locala);
        }
        i += 1;
      }
    }
    if (fU) {
      paramma.a(12, fU);
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int m = 0;
    int j = super.c() + ma.r(1, type);
    int i = j;
    if (!fN.equals("")) {
      i = j + ma.h(2, fN);
    }
    j = i;
    a locala;
    int k;
    if (fO != null)
    {
      j = i;
      if (fO.length > 0)
      {
        j = 0;
        while (j < fO.length)
        {
          locala = fO[j];
          k = i;
          if (locala != null) {
            k = i + ma.b(3, locala);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (fP != null)
    {
      i = j;
      if (fP.length > 0)
      {
        i = j;
        j = 0;
        while (j < fP.length)
        {
          locala = fP[j];
          k = i;
          if (locala != null) {
            k = i + ma.b(4, locala);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (fQ != null)
    {
      j = i;
      if (fQ.length > 0)
      {
        j = 0;
        while (j < fQ.length)
        {
          locala = fQ[j];
          k = i;
          if (locala != null) {
            k = i + ma.b(5, locala);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (!fR.equals("")) {
      i = j + ma.h(6, fR);
    }
    j = i;
    if (!fS.equals("")) {
      j = i + ma.h(7, fS);
    }
    i = j;
    if (fT != 0L) {
      i = j + ma.d(8, fT);
    }
    j = i;
    if (fX) {
      j = i + ma.b(9, fX);
    }
    i = j;
    if (fW != null)
    {
      i = j;
      if (fW.length > 0)
      {
        i = 0;
        k = 0;
        while (i < fW.length)
        {
          k += ma.eE(fW[i]);
          i += 1;
        }
        i = j + k + fW.length * 1;
      }
    }
    j = i;
    if (fV != null)
    {
      j = i;
      if (fV.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= fV.length) {
            break;
          }
          locala = fV[k];
          j = i;
          if (locala != null) {
            j = i + ma.b(11, locala);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (fU) {
      i = j + ma.b(12, fU);
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
      if (type != type) {
        return false;
      }
      if (fN == null)
      {
        if (fN != null) {
          return false;
        }
      }
      else if (!fN.equals(fN)) {
        return false;
      }
      if (!md.equals(fO, fO)) {
        return false;
      }
      if (!md.equals(fP, fP)) {
        return false;
      }
      if (!md.equals(fQ, fQ)) {
        return false;
      }
      if (fR == null)
      {
        if (fR != null) {
          return false;
        }
      }
      else if (!fR.equals(fR)) {
        return false;
      }
      if (fS == null)
      {
        if (fS != null) {
          return false;
        }
      }
      else if (!fS.equals(fS)) {
        return false;
      }
      if (fT != fT) {
        return false;
      }
      if (fU != fU) {
        return false;
      }
      if (!md.equals(fV, fV)) {
        return false;
      }
      if (!md.equals(fW, fW)) {
        return false;
      }
      if (fX != fX) {
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
    int n = 1231;
    int i2 = 0;
    int i3 = type;
    int i;
    int i4;
    int i5;
    int i6;
    int j;
    label59:
    int k;
    label68:
    int i7;
    int m;
    label95:
    int i8;
    int i9;
    if (fN == null)
    {
      i = 0;
      i4 = md.hashCode(fO);
      i5 = md.hashCode(fP);
      i6 = md.hashCode(fQ);
      if (fR != null) {
        break label234;
      }
      j = 0;
      if (fS != null) {
        break label245;
      }
      k = 0;
      i7 = (int)(fT ^ fT >>> 32);
      if (!fU) {
        break label256;
      }
      m = 1231;
      i8 = md.hashCode(fV);
      i9 = md.hashCode(fW);
      if (!fX) {
        break label264;
      }
      label120:
      i1 = i2;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label272;
        }
      }
    }
    label234:
    label245:
    label256:
    label264:
    label272:
    for (int i1 = i2;; i1 = amU.hashCode())
    {
      return ((((m + ((k + (j + ((((i + (i3 + 527) * 31) * 31 + i4) * 31 + i5) * 31 + i6) * 31) * 31) * 31 + i7) * 31) * 31 + i8) * 31 + i9) * 31 + n) * 31 + i1;
      i = fN.hashCode();
      break;
      j = fR.hashCode();
      break label59;
      k = fS.hashCode();
      break label68;
      m = 1237;
      break label95;
      n = 1237;
      break label120;
    }
  }
  
  public final a l(lz paramlz)
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
      case 8: 
        i = paramlz.nz();
        switch (i)
        {
        default: 
          break;
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
          type = i;
        }
        break;
      case 18: 
        fN = paramlz.readString();
        break;
      case 26: 
        j = mi.b(paramlz, 26);
        if (fO == null) {}
        for (i = 0;; i = fO.length)
        {
          localObject = new a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fO, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new a();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new a();
        paramlz.a(localObject[j]);
        fO = ((a[])localObject);
        break;
      case 34: 
        j = mi.b(paramlz, 34);
        if (fP == null) {}
        for (i = 0;; i = fP.length)
        {
          localObject = new a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fP, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new a();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new a();
        paramlz.a(localObject[j]);
        fP = ((a[])localObject);
        break;
      case 42: 
        j = mi.b(paramlz, 42);
        if (fQ == null) {}
        for (i = 0;; i = fQ.length)
        {
          localObject = new a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fQ, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new a();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new a();
        paramlz.a(localObject[j]);
        fQ = ((a[])localObject);
        break;
      case 50: 
        fR = paramlz.readString();
        break;
      case 58: 
        fS = paramlz.readString();
        break;
      case 64: 
        fT = paramlz.ny();
        break;
      case 72: 
        fX = paramlz.nA();
        break;
      case 80: 
        int m = mi.b(paramlz, 80);
        localObject = new int[m];
        j = 0;
        i = 0;
        if (j < m)
        {
          if (j != 0) {
            paramlz.nw();
          }
          int n = paramlz.nz();
          switch (n)
          {
          }
          for (;;)
          {
            j += 1;
            break;
            k = i + 1;
            localObject[i] = n;
            i = k;
          }
        }
        if (i != 0)
        {
          if (fW == null) {}
          for (j = 0;; j = fW.length)
          {
            if ((j != 0) || (i != localObject.length)) {
              break label861;
            }
            fW = ((int[])localObject);
            break;
          }
          int[] arrayOfInt = new int[j + i];
          if (j != 0) {
            System.arraycopy(fW, 0, arrayOfInt, 0, j);
          }
          System.arraycopy(localObject, 0, arrayOfInt, j, i);
          fW = arrayOfInt;
        }
        break;
      case 82: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0) {
          switch (paramlz.nz())
          {
          default: 
            break;
          case 1: 
          case 2: 
          case 3: 
          case 4: 
          case 5: 
          case 6: 
          case 7: 
          case 8: 
          case 9: 
          case 10: 
          case 11: 
          case 12: 
          case 13: 
          case 14: 
          case 15: 
          case 16: 
          case 17: 
            j += 1;
          }
        }
        if (j != 0)
        {
          paramlz.ez(i);
          if (fW == null) {}
          for (i = 0;; i = fW.length)
          {
            localObject = new int[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(fW, 0, localObject, 0, i);
              j = i;
            }
            while (paramlz.nI() > 0)
            {
              i = paramlz.nz();
              switch (i)
              {
              default: 
                break;
              case 1: 
              case 2: 
              case 3: 
              case 4: 
              case 5: 
              case 6: 
              case 7: 
              case 8: 
              case 9: 
              case 10: 
              case 11: 
              case 12: 
              case 13: 
              case 14: 
              case 15: 
              case 16: 
              case 17: 
                localObject[j] = i;
                j += 1;
              }
            }
          }
          fW = ((int[])localObject);
        }
        paramlz.ey(k);
        break;
      case 90: 
        j = mi.b(paramlz, 90);
        if (fV == null) {}
        for (i = 0;; i = fV.length)
        {
          localObject = new a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fV, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new a();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new a();
        paramlz.a(localObject[j]);
        fV = ((a[])localObject);
        break;
      case 96: 
        label861:
        fU = paramlz.nA();
      }
    }
  }
  
  public final a s()
  {
    type = 1;
    fN = "";
    fO = r();
    fP = r();
    fQ = r();
    fR = "";
    fS = "";
    fT = 0L;
    fU = false;
    fV = r();
    fW = mi.ana;
    fX = false;
    amU = null;
    amY = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */