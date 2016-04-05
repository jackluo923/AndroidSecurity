package com.google.android.gms.internal;

import java.util.List;

public final class c$g
  extends mb<g>
{
  private static volatile g[] fm;
  public int[] fn;
  public int[] fo;
  public int[] fp;
  public int[] fq;
  public int[] fr;
  public int[] fs;
  public int[] ft;
  public int[] fu;
  public int[] fv;
  public int[] fw;
  
  public c$g()
  {
    m();
  }
  
  public static g[] l()
  {
    if (fm == null) {}
    synchronized (md.amX)
    {
      if (fm == null) {
        fm = new g[0];
      }
      return fm;
    }
  }
  
  public final void a(ma paramma)
  {
    int j = 0;
    int i;
    if ((fn != null) && (fn.length > 0))
    {
      i = 0;
      while (i < fn.length)
      {
        paramma.p(1, fn[i]);
        i += 1;
      }
    }
    if ((fo != null) && (fo.length > 0))
    {
      i = 0;
      while (i < fo.length)
      {
        paramma.p(2, fo[i]);
        i += 1;
      }
    }
    if ((fp != null) && (fp.length > 0))
    {
      i = 0;
      while (i < fp.length)
      {
        paramma.p(3, fp[i]);
        i += 1;
      }
    }
    if ((fq != null) && (fq.length > 0))
    {
      i = 0;
      while (i < fq.length)
      {
        paramma.p(4, fq[i]);
        i += 1;
      }
    }
    if ((fr != null) && (fr.length > 0))
    {
      i = 0;
      while (i < fr.length)
      {
        paramma.p(5, fr[i]);
        i += 1;
      }
    }
    if ((fs != null) && (fs.length > 0))
    {
      i = 0;
      while (i < fs.length)
      {
        paramma.p(6, fs[i]);
        i += 1;
      }
    }
    if ((ft != null) && (ft.length > 0))
    {
      i = 0;
      while (i < ft.length)
      {
        paramma.p(7, ft[i]);
        i += 1;
      }
    }
    if ((fu != null) && (fu.length > 0))
    {
      i = 0;
      while (i < fu.length)
      {
        paramma.p(8, fu[i]);
        i += 1;
      }
    }
    if ((fv != null) && (fv.length > 0))
    {
      i = 0;
      while (i < fv.length)
      {
        paramma.p(9, fv[i]);
        i += 1;
      }
    }
    if ((fw != null) && (fw.length > 0))
    {
      i = j;
      while (i < fw.length)
      {
        paramma.p(10, fw[i]);
        i += 1;
      }
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int m = 0;
    int k = super.c();
    int i;
    if ((fn != null) && (fn.length > 0))
    {
      i = 0;
      j = 0;
      while (i < fn.length)
      {
        j += ma.eE(fn[i]);
        i += 1;
      }
    }
    for (int j = k + j + fn.length * 1;; j = k)
    {
      i = j;
      if (fo != null)
      {
        i = j;
        if (fo.length > 0)
        {
          i = 0;
          k = 0;
          while (i < fo.length)
          {
            k += ma.eE(fo[i]);
            i += 1;
          }
          i = j + k + fo.length * 1;
        }
      }
      j = i;
      if (fp != null)
      {
        j = i;
        if (fp.length > 0)
        {
          j = 0;
          k = 0;
          while (j < fp.length)
          {
            k += ma.eE(fp[j]);
            j += 1;
          }
          j = i + k + fp.length * 1;
        }
      }
      i = j;
      if (fq != null)
      {
        i = j;
        if (fq.length > 0)
        {
          i = 0;
          k = 0;
          while (i < fq.length)
          {
            k += ma.eE(fq[i]);
            i += 1;
          }
          i = j + k + fq.length * 1;
        }
      }
      j = i;
      if (fr != null)
      {
        j = i;
        if (fr.length > 0)
        {
          j = 0;
          k = 0;
          while (j < fr.length)
          {
            k += ma.eE(fr[j]);
            j += 1;
          }
          j = i + k + fr.length * 1;
        }
      }
      i = j;
      if (fs != null)
      {
        i = j;
        if (fs.length > 0)
        {
          i = 0;
          k = 0;
          while (i < fs.length)
          {
            k += ma.eE(fs[i]);
            i += 1;
          }
          i = j + k + fs.length * 1;
        }
      }
      j = i;
      if (ft != null)
      {
        j = i;
        if (ft.length > 0)
        {
          j = 0;
          k = 0;
          while (j < ft.length)
          {
            k += ma.eE(ft[j]);
            j += 1;
          }
          j = i + k + ft.length * 1;
        }
      }
      i = j;
      if (fu != null)
      {
        i = j;
        if (fu.length > 0)
        {
          i = 0;
          k = 0;
          while (i < fu.length)
          {
            k += ma.eE(fu[i]);
            i += 1;
          }
          i = j + k + fu.length * 1;
        }
      }
      j = i;
      if (fv != null)
      {
        j = i;
        if (fv.length > 0)
        {
          j = 0;
          k = 0;
          while (j < fv.length)
          {
            k += ma.eE(fv[j]);
            j += 1;
          }
          j = i + k + fv.length * 1;
        }
      }
      i = j;
      if (fw != null)
      {
        i = j;
        if (fw.length > 0)
        {
          k = 0;
          i = m;
          while (i < fw.length)
          {
            k += ma.eE(fw[i]);
            i += 1;
          }
          i = j + k + fw.length * 1;
        }
      }
      return i;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof g)) {
        return false;
      }
      paramObject = (g)paramObject;
      if (!md.equals(fn, fn)) {
        return false;
      }
      if (!md.equals(fo, fo)) {
        return false;
      }
      if (!md.equals(fp, fp)) {
        return false;
      }
      if (!md.equals(fq, fq)) {
        return false;
      }
      if (!md.equals(fr, fr)) {
        return false;
      }
      if (!md.equals(fs, fs)) {
        return false;
      }
      if (!md.equals(ft, ft)) {
        return false;
      }
      if (!md.equals(fu, fu)) {
        return false;
      }
      if (!md.equals(fv, fv)) {
        return false;
      }
      if (!md.equals(fw, fw)) {
        return false;
      }
      if ((amU != null) && (!amU.isEmpty())) {
        break;
      }
    } while ((amU == null) || (amU.isEmpty()));
    return false;
    return amU.equals(amU);
  }
  
  public final g h(lz paramlz)
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
        if (fn == null) {}
        for (i = 0;; i = fn.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fn, 0, arrayOfInt, 0, i);
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
        fn = arrayOfInt;
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
        if (fn == null) {}
        for (i = 0;; i = fn.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fn, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fn = arrayOfInt;
        paramlz.ey(k);
        break;
      case 16: 
        j = mi.b(paramlz, 16);
        if (fo == null) {}
        for (i = 0;; i = fo.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fo, 0, arrayOfInt, 0, i);
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
        fo = arrayOfInt;
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
        if (fo == null) {}
        for (i = 0;; i = fo.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fo, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fo = arrayOfInt;
        paramlz.ey(k);
        break;
      case 24: 
        j = mi.b(paramlz, 24);
        if (fp == null) {}
        for (i = 0;; i = fp.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fp, 0, arrayOfInt, 0, i);
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
        fp = arrayOfInt;
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
        if (fp == null) {}
        for (i = 0;; i = fp.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fp, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fp = arrayOfInt;
        paramlz.ey(k);
        break;
      case 32: 
        j = mi.b(paramlz, 32);
        if (fq == null) {}
        for (i = 0;; i = fq.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fq, 0, arrayOfInt, 0, i);
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
        fq = arrayOfInt;
        break;
      case 34: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fq == null) {}
        for (i = 0;; i = fq.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fq, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fq = arrayOfInt;
        paramlz.ey(k);
        break;
      case 40: 
        j = mi.b(paramlz, 40);
        if (fr == null) {}
        for (i = 0;; i = fr.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fr, 0, arrayOfInt, 0, i);
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
        fr = arrayOfInt;
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
        if (fr == null) {}
        for (i = 0;; i = fr.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fr, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fr = arrayOfInt;
        paramlz.ey(k);
        break;
      case 48: 
        j = mi.b(paramlz, 48);
        if (fs == null) {}
        for (i = 0;; i = fs.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fs, 0, arrayOfInt, 0, i);
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
        fs = arrayOfInt;
        break;
      case 50: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fs == null) {}
        for (i = 0;; i = fs.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fs, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fs = arrayOfInt;
        paramlz.ey(k);
        break;
      case 56: 
        j = mi.b(paramlz, 56);
        if (ft == null) {}
        for (i = 0;; i = ft.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(ft, 0, arrayOfInt, 0, i);
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
        ft = arrayOfInt;
        break;
      case 58: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (ft == null) {}
        for (i = 0;; i = ft.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(ft, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        ft = arrayOfInt;
        paramlz.ey(k);
        break;
      case 64: 
        j = mi.b(paramlz, 64);
        if (fu == null) {}
        for (i = 0;; i = fu.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fu, 0, arrayOfInt, 0, i);
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
        fu = arrayOfInt;
        break;
      case 66: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fu == null) {}
        for (i = 0;; i = fu.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fu, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fu = arrayOfInt;
        paramlz.ey(k);
        break;
      case 72: 
        j = mi.b(paramlz, 72);
        if (fv == null) {}
        for (i = 0;; i = fv.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fv, 0, arrayOfInt, 0, i);
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
        fv = arrayOfInt;
        break;
      case 74: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fv == null) {}
        for (i = 0;; i = fv.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fv, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fv = arrayOfInt;
        paramlz.ey(k);
        break;
      case 80: 
        j = mi.b(paramlz, 80);
        if (fw == null) {}
        for (i = 0;; i = fw.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fw, 0, arrayOfInt, 0, i);
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
        fw = arrayOfInt;
        break;
      case 82: 
        k = paramlz.ex(paramlz.nD());
        i = paramlz.getPosition();
        j = 0;
        while (paramlz.nI() > 0)
        {
          paramlz.nz();
          j += 1;
        }
        paramlz.ez(i);
        if (fw == null) {}
        for (i = 0;; i = fw.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fw, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramlz.nz();
            j += 1;
          }
        }
        fw = arrayOfInt;
        paramlz.ey(k);
      }
    }
  }
  
  public final int hashCode()
  {
    int j = md.hashCode(fn);
    int k = md.hashCode(fo);
    int m = md.hashCode(fp);
    int n = md.hashCode(fq);
    int i1 = md.hashCode(fr);
    int i2 = md.hashCode(fs);
    int i3 = md.hashCode(ft);
    int i4 = md.hashCode(fu);
    int i5 = md.hashCode(fv);
    int i6 = md.hashCode(fw);
    if ((amU == null) || (amU.isEmpty())) {}
    for (int i = 0;; i = amU.hashCode()) {
      return i + ((((((((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i6) * 31;
    }
  }
  
  public final g m()
  {
    fn = mi.ana;
    fo = mi.ana;
    fp = mi.ana;
    fq = mi.ana;
    fr = mi.ana;
    fs = mi.ana;
    ft = mi.ana;
    fu = mi.ana;
    fv = mi.ana;
    fw = mi.ana;
    amU = null;
    amY = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */