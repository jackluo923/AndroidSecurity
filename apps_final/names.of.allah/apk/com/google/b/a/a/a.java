package com.google.b.a.a;

public final class a
{
  final byte[] a;
  int b;
  int c;
  int d;
  int e = Integer.MAX_VALUE;
  private int f;
  private int g;
  private int h;
  private int i = 64;
  private int j = 67108864;
  
  private a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = paramInt1;
    c = (paramInt1 + paramInt2);
    d = paramInt1;
  }
  
  public static a a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new a(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private void d(int paramInt)
  {
    if (paramInt < 0) {
      throw g.b();
    }
    if (d + paramInt > e)
    {
      d(e - d);
      throw g.a();
    }
    if (paramInt <= c - d)
    {
      d += paramInt;
      return;
    }
    throw g.a();
  }
  
  private void j()
  {
    c += f;
    int k = c;
    if (k > e)
    {
      f = (k - e);
      c -= f;
      return;
    }
    f = 0;
  }
  
  private byte k()
  {
    if (d == c) {
      throw g.a();
    }
    byte[] arrayOfByte = a;
    int k = d;
    d = (k + 1);
    return arrayOfByte[k];
  }
  
  public final int a()
  {
    if (d == c) {}
    for (int k = 1; k != 0; k = 0)
    {
      g = 0;
      return 0;
    }
    g = f();
    if (g == 0) {
      throw g.d();
    }
    return g;
  }
  
  public final void a(int paramInt)
  {
    if (g != paramInt) {
      throw g.e();
    }
  }
  
  public final void a(h paramh)
  {
    int k = f();
    if (h >= i) {
      throw g.g();
    }
    if (k < 0) {
      throw g.b();
    }
    k += d;
    int m = e;
    if (k > m) {
      throw g.a();
    }
    e = k;
    j();
    h += 1;
    paramh.mergeFrom(this);
    a(0);
    h -= 1;
    e = m;
    j();
  }
  
  public final long b()
  {
    int k = 0;
    long l = 0L;
    while (k < 64)
    {
      int m = k();
      l |= (m & 0x7F) << k;
      if ((m & 0x80) == 0) {
        return l;
      }
      k += 7;
    }
    throw g.c();
  }
  
  public final boolean b(int paramInt)
  {
    switch (k.a(paramInt))
    {
    default: 
      throw g.f();
    case 0: 
      f();
      return true;
    case 1: 
      h();
      return true;
    case 2: 
      d(f());
      return true;
    case 3: 
      int k;
      do
      {
        k = a();
      } while ((k != 0) && (b(k)));
      a(k.a(k.b(paramInt), 4));
      return true;
    case 4: 
      return false;
    }
    g();
    return true;
  }
  
  public final int c()
  {
    return f();
  }
  
  public final byte[] c(int paramInt)
  {
    if (paramInt < 0) {
      throw g.b();
    }
    if (d + paramInt > e)
    {
      d(e - d);
      throw g.a();
    }
    if (paramInt <= c - d)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(a, d, arrayOfByte, 0, paramInt);
      d += paramInt;
      return arrayOfByte;
    }
    throw g.a();
  }
  
  public final boolean d()
  {
    return f() != 0;
  }
  
  public final String e()
  {
    int k = f();
    if ((k <= c - d) && (k > 0))
    {
      String str = new String(a, d, k, "UTF-8");
      d = (k + d);
      return str;
    }
    return new String(c(k), "UTF-8");
  }
  
  public final int f()
  {
    int k = k();
    if (k >= 0) {}
    int n;
    do
    {
      return k;
      k &= 0x7F;
      m = k();
      if (m >= 0) {
        return k | m << 7;
      }
      k |= (m & 0x7F) << 7;
      m = k();
      if (m >= 0) {
        return k | m << 14;
      }
      k |= (m & 0x7F) << 14;
      n = k();
      if (n >= 0) {
        return k | n << 21;
      }
      m = k();
      n = k | (n & 0x7F) << 21 | m << 28;
      k = n;
    } while (m >= 0);
    int m = 0;
    for (;;)
    {
      if (m >= 5) {
        break label133;
      }
      k = n;
      if (k() >= 0) {
        break;
      }
      m += 1;
    }
    label133:
    throw g.c();
  }
  
  public final int g()
  {
    return k() & 0xFF | (k() & 0xFF) << 8 | (k() & 0xFF) << 16 | (k() & 0xFF) << 24;
  }
  
  public final long h()
  {
    int k = k();
    int m = k();
    int n = k();
    int i1 = k();
    int i2 = k();
    int i3 = k();
    int i4 = k();
    int i5 = k();
    long l = k;
    return (m & 0xFF) << 8 | l & 0xFF | (n & 0xFF) << 16 | (i1 & 0xFF) << 24 | (i2 & 0xFF) << 32 | (i3 & 0xFF) << 40 | (i4 & 0xFF) << 48 | (i5 & 0xFF) << 56;
  }
  
  public final int i()
  {
    return d - b;
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */