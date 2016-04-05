package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c.b;
import com.google.android.gms.internal.c.e;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.c.g;
import com.google.android.gms.internal.c.h;
import com.google.android.gms.internal.d.a;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class cq
{
  private static d.a a(int paramInt, c.f paramf, d.a[] paramArrayOfa, Set<Integer> paramSet)
  {
    int k = 0;
    int m = 0;
    int j = 0;
    if (paramSet.contains(Integer.valueOf(paramInt))) {
      cd("Value cycle detected.  Current value reference: " + paramInt + ".  Previous value references: " + paramSet + ".");
    }
    d.a locala1 = (d.a)a(eX, paramInt, "values");
    if (paramArrayOfa[paramInt] != null) {
      return paramArrayOfa[paramInt];
    }
    Object localObject = null;
    paramSet.add(Integer.valueOf(paramInt));
    switch (type)
    {
    }
    for (;;)
    {
      if (localObject == null) {
        cd("Invalid value: " + locala1);
      }
      paramArrayOfa[paramInt] = localObject;
      paramSet.remove(Integer.valueOf(paramInt));
      return (d.a)localObject;
      localObject = h(locala1);
      d.a locala2 = g(locala1);
      fO = new d.a[fz.length];
      int[] arrayOfInt = fz;
      k = arrayOfInt.length;
      int i = 0;
      for (;;)
      {
        localObject = locala2;
        if (j >= k) {
          break;
        }
        m = arrayOfInt[j];
        fO[i] = a(m, paramf, paramArrayOfa, paramSet);
        j += 1;
        i += 1;
      }
      locala2 = g(locala1);
      localObject = h(locala1);
      if (fA.length != fB.length) {
        cd("Uneven map keys (" + fA.length + ") and map values (" + fB.length + ")");
      }
      fP = new d.a[fA.length];
      fQ = new d.a[fA.length];
      arrayOfInt = fA;
      m = arrayOfInt.length;
      j = 0;
      i = 0;
      while (j < m)
      {
        int n = arrayOfInt[j];
        fP[i] = a(n, paramf, paramArrayOfa, paramSet);
        j += 1;
        i += 1;
      }
      arrayOfInt = fB;
      m = arrayOfInt.length;
      i = 0;
      j = k;
      for (;;)
      {
        localObject = locala2;
        if (j >= m) {
          break;
        }
        k = arrayOfInt[j];
        fQ[i] = a(k, paramf, paramArrayOfa, paramSet);
        j += 1;
        i += 1;
      }
      localObject = g(locala1);
      fR = dh.j(a(hfE, paramf, paramArrayOfa, paramSet));
      continue;
      locala2 = g(locala1);
      localObject = h(locala1);
      fV = new d.a[fD.length];
      arrayOfInt = fD;
      k = arrayOfInt.length;
      i = 0;
      j = m;
      for (;;)
      {
        localObject = locala2;
        if (j >= k) {
          break;
        }
        m = arrayOfInt[j];
        fV[i] = a(m, paramf, paramArrayOfa, paramSet);
        j += 1;
        i += 1;
      }
      localObject = locala1;
    }
  }
  
  private static cq.a a(c.b paramb, c.f paramf, d.a[] paramArrayOfa, int paramInt)
  {
    cq.b localb = cq.a.mi();
    paramb = eH;
    int i = paramb.length;
    paramInt = 0;
    if (paramInt < i)
    {
      int j = paramb[paramInt];
      Object localObject = (c.e)a(eY, Integer.valueOf(j).intValue(), "properties");
      String str = (String)a(eW, key, "keys");
      localObject = (d.a)a(paramArrayOfa, value, "values");
      if (b.dB.toString().equals(str)) {
        localb.i((d.a)localObject);
      }
      for (;;)
      {
        paramInt += 1;
        break;
        localb.b(str, (d.a)localObject);
      }
    }
    return localb.ml();
  }
  
  private static cq.e a(c.g paramg, List<cq.a> paramList1, List<cq.a> paramList2, List<cq.a> paramList3, c.f paramf)
  {
    cq.f localf = cq.e.mq();
    int[] arrayOfInt = fn;
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      localf.b((cq.a)paramList3.get(Integer.valueOf(arrayOfInt[i]).intValue()));
      i += 1;
    }
    arrayOfInt = fo;
    j = arrayOfInt.length;
    i = 0;
    while (i < j)
    {
      localf.c((cq.a)paramList3.get(Integer.valueOf(arrayOfInt[i]).intValue()));
      i += 1;
    }
    paramList3 = fp;
    j = paramList3.length;
    i = 0;
    while (i < j)
    {
      localf.d((cq.a)paramList1.get(Integer.valueOf(paramList3[i]).intValue()));
      i += 1;
    }
    paramList3 = fr;
    j = paramList3.length;
    i = 0;
    int k;
    while (i < j)
    {
      k = paramList3[i];
      localf.cf(eX[Integer.valueOf(k).intValue()].fN);
      i += 1;
    }
    paramList3 = fq;
    j = paramList3.length;
    i = 0;
    while (i < j)
    {
      localf.e((cq.a)paramList1.get(Integer.valueOf(paramList3[i]).intValue()));
      i += 1;
    }
    paramList1 = fs;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      k = paramList1[i];
      localf.cg(eX[Integer.valueOf(k).intValue()].fN);
      i += 1;
    }
    paramList1 = ft;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      localf.f((cq.a)paramList2.get(Integer.valueOf(paramList1[i]).intValue()));
      i += 1;
    }
    paramList1 = fv;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      k = paramList1[i];
      localf.ch(eX[Integer.valueOf(k).intValue()].fN);
      i += 1;
    }
    paramList1 = fu;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      localf.g((cq.a)paramList2.get(Integer.valueOf(paramList1[i]).intValue()));
      i += 1;
    }
    paramg = fw;
    j = paramg.length;
    i = 0;
    while (i < j)
    {
      k = paramg[i];
      localf.ci(eX[Integer.valueOf(k).intValue()].fN);
      i += 1;
    }
    return localf.mB();
  }
  
  private static <T> T a(T[] paramArrayOfT, int paramInt, String paramString)
  {
    if ((paramInt < 0) || (paramInt >= paramArrayOfT.length)) {
      cd("Index out of bounds detected: " + paramInt + " in " + paramString);
    }
    return paramArrayOfT[paramInt];
  }
  
  public static cq.c b(c.f paramf)
  {
    int j = 0;
    Object localObject = new d.a[eX.length];
    int i = 0;
    while (i < eX.length)
    {
      a(i, paramf, (d.a[])localObject, new HashSet(0));
      i += 1;
    }
    cq.d locald = cq.c.mm();
    ArrayList localArrayList1 = new ArrayList();
    i = 0;
    while (i < fa.length)
    {
      localArrayList1.add(a(fa[i], paramf, (d.a[])localObject, i));
      i += 1;
    }
    ArrayList localArrayList2 = new ArrayList();
    i = 0;
    while (i < fb.length)
    {
      localArrayList2.add(a(fb[i], paramf, (d.a[])localObject, i));
      i += 1;
    }
    ArrayList localArrayList3 = new ArrayList();
    i = 0;
    while (i < eZ.length)
    {
      cq.a locala = a(eZ[i], paramf, (d.a[])localObject, i);
      locald.a(locala);
      localArrayList3.add(locala);
      i += 1;
    }
    localObject = fc;
    int k = localObject.length;
    i = j;
    while (i < k)
    {
      locald.a(a(localObject[i], localArrayList1, localArrayList3, localArrayList2, paramf));
      i += 1;
    }
    locald.ce(fg);
    locald.du(fl);
    return locald.mp();
  }
  
  public static void b(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private static void cd(String paramString)
  {
    bh.A(paramString);
    throw new cq.g(paramString);
  }
  
  public static d.a g(d.a parama)
  {
    d.a locala = new d.a();
    type = type;
    fW = ((int[])fW.clone());
    if (fX) {
      fX = fX;
    }
    return locala;
  }
  
  private static c.h h(d.a parama)
  {
    if ((c.h)parama.a(c.h.fx) == null) {
      cd("Expected a ServingValue and didn't get one. Value is: " + parama);
    }
    return (c.h)parama.a(c.h.fx);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */