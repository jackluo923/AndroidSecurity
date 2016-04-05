package org.a.a.a;

import org.a.a.a.c.l;

public final class n
  extends b
{
  private c a;
  private l b;
  private boolean c;
  private short d;
  private int e;
  private int[] f;
  private int g;
  private int h;
  private b i;
  
  public n(l paraml)
  {
    b = paraml;
    c = false;
    i = null;
    f = new int[4];
    d();
  }
  
  public n(l paraml, boolean paramBoolean, b paramb)
  {
    b = paraml;
    c = paramBoolean;
    i = paramb;
    f = new int[4];
    d();
  }
  
  public final String a()
  {
    if (i == null) {
      return b.b();
    }
    return i.a();
  }
  
  public final c a(byte[] paramArrayOfByte, int paramInt)
  {
    int k = 0;
    if (k < paramInt + 0)
    {
      int j = b.a(paramArrayOfByte[k]);
      if (j < 250) {
        g += 1;
      }
      int[] arrayOfInt;
      int m;
      if (j < 64)
      {
        h += 1;
        if (d < 64)
        {
          e += 1;
          if (c) {
            break label137;
          }
          arrayOfInt = f;
          m = b.a(d * 64 + j);
          arrayOfInt[m] += 1;
        }
      }
      for (;;)
      {
        d = j;
        k += 1;
        break;
        label137:
        arrayOfInt = f;
        m = b.a(j * 64 + d);
        arrayOfInt[m] += 1;
      }
    }
    float f1;
    if ((a == c.a) && (e > 1024))
    {
      f1 = b();
      if (f1 <= 0.95F) {
        break label221;
      }
      a = c.b;
    }
    for (;;)
    {
      return a;
      label221:
      if (f1 < 0.05F) {
        a = c.c;
      }
    }
  }
  
  public final float b()
  {
    if (e > 0)
    {
      float f2 = f[3] * 1.0F / e / b.a() * h / g;
      float f1 = f2;
      if (f2 >= 1.0F) {
        f1 = 0.99F;
      }
      return f1;
    }
    return 0.01F;
  }
  
  public final c c()
  {
    return a;
  }
  
  public final void d()
  {
    a = c.a;
    d = 255;
    int j = 0;
    while (j < 4)
    {
      f[j] = 0;
      j += 1;
    }
    e = 0;
    g = 0;
    h = 0;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */