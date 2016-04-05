package com.google.android.gms.internal;

import java.util.List;

public final class c$f
  extends mb<f>
{
  public String[] eV;
  public String[] eW;
  public d.a[] eX;
  public c.e[] eY;
  public c.b[] eZ;
  public c.b[] fa;
  public c.b[] fb;
  public c.g[] fc;
  public String fd;
  public String fe;
  public String ff;
  public String fg;
  public c.a fh;
  public float fi;
  public boolean fj;
  public String[] fk;
  public int fl;
  
  public c$f()
  {
    k();
  }
  
  public static f a(byte[] paramArrayOfByte)
  {
    return (f)mf.a(new f(), paramArrayOfByte);
  }
  
  public final void a(ma paramma)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((eW != null) && (eW.length > 0))
    {
      i = 0;
      while (i < eW.length)
      {
        localObject = eW[i];
        if (localObject != null) {
          paramma.b(1, (String)localObject);
        }
        i += 1;
      }
    }
    if ((eX != null) && (eX.length > 0))
    {
      i = 0;
      while (i < eX.length)
      {
        localObject = eX[i];
        if (localObject != null) {
          paramma.a(2, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((eY != null) && (eY.length > 0))
    {
      i = 0;
      while (i < eY.length)
      {
        localObject = eY[i];
        if (localObject != null) {
          paramma.a(3, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((eZ != null) && (eZ.length > 0))
    {
      i = 0;
      while (i < eZ.length)
      {
        localObject = eZ[i];
        if (localObject != null) {
          paramma.a(4, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((fa != null) && (fa.length > 0))
    {
      i = 0;
      while (i < fa.length)
      {
        localObject = fa[i];
        if (localObject != null) {
          paramma.a(5, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((fb != null) && (fb.length > 0))
    {
      i = 0;
      while (i < fb.length)
      {
        localObject = fb[i];
        if (localObject != null) {
          paramma.a(6, (mf)localObject);
        }
        i += 1;
      }
    }
    if ((fc != null) && (fc.length > 0))
    {
      i = 0;
      while (i < fc.length)
      {
        localObject = fc[i];
        if (localObject != null) {
          paramma.a(7, (mf)localObject);
        }
        i += 1;
      }
    }
    if (!fd.equals("")) {
      paramma.b(9, fd);
    }
    if (!fe.equals("")) {
      paramma.b(10, fe);
    }
    if (!ff.equals("0")) {
      paramma.b(12, ff);
    }
    if (!fg.equals("")) {
      paramma.b(13, fg);
    }
    if (fh != null) {
      paramma.a(14, fh);
    }
    if (Float.floatToIntBits(fi) != Float.floatToIntBits(0.0F)) {
      paramma.b(15, fi);
    }
    if ((fk != null) && (fk.length > 0))
    {
      i = 0;
      while (i < fk.length)
      {
        localObject = fk[i];
        if (localObject != null) {
          paramma.b(16, (String)localObject);
        }
        i += 1;
      }
    }
    if (fl != 0) {
      paramma.p(17, fl);
    }
    if (fj) {
      paramma.a(18, fj);
    }
    if ((eV != null) && (eV.length > 0))
    {
      i = j;
      while (i < eV.length)
      {
        localObject = eV[i];
        if (localObject != null) {
          paramma.b(19, (String)localObject);
        }
        i += 1;
      }
    }
    super.a(paramma);
  }
  
  protected final int c()
  {
    int i2 = 0;
    int i1 = super.c();
    int i;
    int k;
    Object localObject;
    int n;
    int m;
    if ((eW != null) && (eW.length > 0))
    {
      i = 0;
      j = 0;
      for (k = 0; i < eW.length; k = m)
      {
        localObject = eW[i];
        n = j;
        m = k;
        if (localObject != null)
        {
          m = k + 1;
          n = j + ma.cz((String)localObject);
        }
        i += 1;
        j = n;
      }
    }
    for (int j = i1 + j + k * 1;; j = i1)
    {
      i = j;
      if (eX != null)
      {
        i = j;
        if (eX.length > 0)
        {
          i = j;
          j = 0;
          while (j < eX.length)
          {
            localObject = eX[j];
            k = i;
            if (localObject != null) {
              k = i + ma.b(2, (mf)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      j = i;
      if (eY != null)
      {
        j = i;
        if (eY.length > 0)
        {
          j = 0;
          while (j < eY.length)
          {
            localObject = eY[j];
            k = i;
            if (localObject != null) {
              k = i + ma.b(3, (mf)localObject);
            }
            j += 1;
            i = k;
          }
          j = i;
        }
      }
      i = j;
      if (eZ != null)
      {
        i = j;
        if (eZ.length > 0)
        {
          i = j;
          j = 0;
          while (j < eZ.length)
          {
            localObject = eZ[j];
            k = i;
            if (localObject != null) {
              k = i + ma.b(4, (mf)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      j = i;
      if (fa != null)
      {
        j = i;
        if (fa.length > 0)
        {
          j = 0;
          while (j < fa.length)
          {
            localObject = fa[j];
            k = i;
            if (localObject != null) {
              k = i + ma.b(5, (mf)localObject);
            }
            j += 1;
            i = k;
          }
          j = i;
        }
      }
      i = j;
      if (fb != null)
      {
        i = j;
        if (fb.length > 0)
        {
          i = j;
          j = 0;
          while (j < fb.length)
          {
            localObject = fb[j];
            k = i;
            if (localObject != null) {
              k = i + ma.b(6, (mf)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      j = i;
      if (fc != null)
      {
        j = i;
        if (fc.length > 0)
        {
          j = 0;
          while (j < fc.length)
          {
            localObject = fc[j];
            k = i;
            if (localObject != null) {
              k = i + ma.b(7, (mf)localObject);
            }
            j += 1;
            i = k;
          }
          j = i;
        }
      }
      i = j;
      if (!fd.equals("")) {
        i = j + ma.h(9, fd);
      }
      j = i;
      if (!fe.equals("")) {
        j = i + ma.h(10, fe);
      }
      i = j;
      if (!ff.equals("0")) {
        i = j + ma.h(12, ff);
      }
      j = i;
      if (!fg.equals("")) {
        j = i + ma.h(13, fg);
      }
      k = j;
      if (fh != null) {
        k = j + ma.b(14, fh);
      }
      i = k;
      if (Float.floatToIntBits(fi) != Float.floatToIntBits(0.0F)) {
        i = k + ma.c(15, fi);
      }
      j = i;
      if (fk != null)
      {
        j = i;
        if (fk.length > 0)
        {
          j = 0;
          k = 0;
          for (m = 0; j < fk.length; m = n)
          {
            localObject = fk[j];
            i1 = k;
            n = m;
            if (localObject != null)
            {
              n = m + 1;
              i1 = k + ma.cz((String)localObject);
            }
            j += 1;
            k = i1;
          }
          j = i + k + m * 2;
        }
      }
      k = j;
      if (fl != 0) {
        k = j + ma.r(17, fl);
      }
      i = k;
      if (fj) {
        i = k + ma.b(18, fj);
      }
      j = i;
      if (eV != null)
      {
        j = i;
        if (eV.length > 0)
        {
          k = 0;
          m = 0;
          j = i2;
          while (j < eV.length)
          {
            localObject = eV[j];
            i1 = k;
            n = m;
            if (localObject != null)
            {
              n = m + 1;
              i1 = k + ma.cz((String)localObject);
            }
            j += 1;
            k = i1;
            m = n;
          }
          j = i + k + m * 2;
        }
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
      if (!(paramObject instanceof f)) {
        return false;
      }
      paramObject = (f)paramObject;
      if (!md.equals(eV, eV)) {
        return false;
      }
      if (!md.equals(eW, eW)) {
        return false;
      }
      if (!md.equals(eX, eX)) {
        return false;
      }
      if (!md.equals(eY, eY)) {
        return false;
      }
      if (!md.equals(eZ, eZ)) {
        return false;
      }
      if (!md.equals(fa, fa)) {
        return false;
      }
      if (!md.equals(fb, fb)) {
        return false;
      }
      if (!md.equals(fc, fc)) {
        return false;
      }
      if (fd == null)
      {
        if (fd != null) {
          return false;
        }
      }
      else if (!fd.equals(fd)) {
        return false;
      }
      if (fe == null)
      {
        if (fe != null) {
          return false;
        }
      }
      else if (!fe.equals(fe)) {
        return false;
      }
      if (ff == null)
      {
        if (ff != null) {
          return false;
        }
      }
      else if (!ff.equals(ff)) {
        return false;
      }
      if (fg == null)
      {
        if (fg != null) {
          return false;
        }
      }
      else if (!fg.equals(fg)) {
        return false;
      }
      if (fh == null)
      {
        if (fh != null) {
          return false;
        }
      }
      else if (!fh.equals(fh)) {
        return false;
      }
      if (Float.floatToIntBits(fi) != Float.floatToIntBits(fi)) {
        return false;
      }
      if (fj != fj) {
        return false;
      }
      if (!md.equals(fk, fk)) {
        return false;
      }
      if (fl != fl) {
        return false;
      }
      if ((amU != null) && (!amU.isEmpty())) {
        break;
      }
    } while ((amU == null) || (amU.isEmpty()));
    return false;
    return amU.equals(amU);
  }
  
  public final f g(lz paramlz)
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
        if (eW == null) {}
        for (i = 0;; i = eW.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eW, 0, localObject, 0, i);
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
        eW = ((String[])localObject);
        break;
      case 18: 
        j = mi.b(paramlz, 18);
        if (eX == null) {}
        for (i = 0;; i = eX.length)
        {
          localObject = new d.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eX, 0, localObject, 0, i);
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
        eX = ((d.a[])localObject);
        break;
      case 26: 
        j = mi.b(paramlz, 26);
        if (eY == null) {}
        for (i = 0;; i = eY.length)
        {
          localObject = new c.e[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eY, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.e();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new c.e();
        paramlz.a(localObject[j]);
        eY = ((c.e[])localObject);
        break;
      case 34: 
        j = mi.b(paramlz, 34);
        if (eZ == null) {}
        for (i = 0;; i = eZ.length)
        {
          localObject = new c.b[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eZ, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.b();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new c.b();
        paramlz.a(localObject[j]);
        eZ = ((c.b[])localObject);
        break;
      case 42: 
        j = mi.b(paramlz, 42);
        if (fa == null) {}
        for (i = 0;; i = fa.length)
        {
          localObject = new c.b[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fa, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.b();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new c.b();
        paramlz.a(localObject[j]);
        fa = ((c.b[])localObject);
        break;
      case 50: 
        j = mi.b(paramlz, 50);
        if (fb == null) {}
        for (i = 0;; i = fb.length)
        {
          localObject = new c.b[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fb, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.b();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new c.b();
        paramlz.a(localObject[j]);
        fb = ((c.b[])localObject);
        break;
      case 58: 
        j = mi.b(paramlz, 58);
        if (fc == null) {}
        for (i = 0;; i = fc.length)
        {
          localObject = new c.g[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fc, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.g();
            paramlz.a(localObject[j]);
            paramlz.nw();
            j += 1;
          }
        }
        localObject[j] = new c.g();
        paramlz.a(localObject[j]);
        fc = ((c.g[])localObject);
        break;
      case 74: 
        fd = paramlz.readString();
        break;
      case 82: 
        fe = paramlz.readString();
        break;
      case 98: 
        ff = paramlz.readString();
        break;
      case 106: 
        fg = paramlz.readString();
        break;
      case 114: 
        if (fh == null) {
          fh = new c.a();
        }
        paramlz.a(fh);
        break;
      case 125: 
        fi = paramlz.readFloat();
        break;
      case 130: 
        j = mi.b(paramlz, 130);
        if (fk == null) {}
        for (i = 0;; i = fk.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fk, 0, localObject, 0, i);
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
        fk = ((String[])localObject);
        break;
      case 136: 
        fl = paramlz.nz();
        break;
      case 144: 
        fj = paramlz.nA();
        break;
      case 154: 
        j = mi.b(paramlz, 154);
        if (eV == null) {}
        for (i = 0;; i = eV.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(eV, 0, localObject, 0, i);
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
        eV = ((String[])localObject);
      }
    }
  }
  
  public final int hashCode()
  {
    int i3 = 0;
    int i4 = md.hashCode(eV);
    int i5 = md.hashCode(eW);
    int i6 = md.hashCode(eX);
    int i7 = md.hashCode(eY);
    int i8 = md.hashCode(eZ);
    int i9 = md.hashCode(fa);
    int i10 = md.hashCode(fb);
    int i11 = md.hashCode(fc);
    int i;
    int j;
    label93:
    int k;
    label102:
    int m;
    label112:
    int n;
    label122:
    int i12;
    int i1;
    label143:
    int i13;
    int i14;
    if (fd == null)
    {
      i = 0;
      if (fe != null) {
        break label302;
      }
      j = 0;
      if (ff != null) {
        break label313;
      }
      k = 0;
      if (fg != null) {
        break label324;
      }
      m = 0;
      if (fh != null) {
        break label336;
      }
      n = 0;
      i12 = Float.floatToIntBits(fi);
      if (!fj) {
        break label348;
      }
      i1 = 1231;
      i13 = md.hashCode(fk);
      i14 = fl;
      i2 = i3;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label356;
        }
      }
    }
    label302:
    label313:
    label324:
    label336:
    label348:
    label356:
    for (int i2 = i3;; i2 = amU.hashCode())
    {
      return (((i1 + ((n + (m + (k + (j + (i + ((((((((i4 + 527) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i9) * 31 + i10) * 31 + i11) * 31) * 31) * 31) * 31) * 31) * 31 + i12) * 31) * 31 + i13) * 31 + i14) * 31 + i2;
      i = fd.hashCode();
      break;
      j = fe.hashCode();
      break label93;
      k = ff.hashCode();
      break label102;
      m = fg.hashCode();
      break label112;
      n = fh.hashCode();
      break label122;
      i1 = 1237;
      break label143;
    }
  }
  
  public final f k()
  {
    eV = mi.anf;
    eW = mi.anf;
    eX = d.a.r();
    eY = c.e.i();
    eZ = c.b.d();
    fa = c.b.d();
    fb = c.b.d();
    fc = c.g.l();
    fd = "";
    fe = "";
    ff = "0";
    fg = "";
    fh = null;
    fi = 0.0F;
    fj = false;
    fk = mi.anf;
    fl = 0;
    amU = null;
    amY = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */