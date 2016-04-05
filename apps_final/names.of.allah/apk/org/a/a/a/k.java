package org.a.a.a;

public final class k
  extends b
{
  private c a;
  private b[] b = new b[7];
  private boolean[] c = new boolean[7];
  private int d;
  private int e;
  
  public k()
  {
    b[0] = new o();
    b[1] = new m();
    b[2] = new d();
    b[3] = new h();
    b[4] = new e();
    b[5] = new a();
    b[6] = new f();
    d();
  }
  
  public final String a()
  {
    if (d == -1)
    {
      b();
      if (d == -1) {
        d = 0;
      }
    }
    return b[d].a();
  }
  
  public final c a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    int j = 1;
    int k = 0;
    int m;
    if (k < paramInt + 0) {
      if ((paramArrayOfByte[k] & 0x80) != 0)
      {
        m = i + 1;
        arrayOfByte[i] = paramArrayOfByte[k];
        j = 1;
        i = m;
      }
    }
    for (;;)
    {
      k += 1;
      break;
      if (j != 0)
      {
        j = i + 1;
        arrayOfByte[i] = paramArrayOfByte[k];
        m = 0;
        i = j;
        j = m;
        continue;
        paramInt = 0;
        for (;;)
        {
          if (paramInt < b.length)
          {
            if (c[paramInt] == 0) {
              break label193;
            }
            paramArrayOfByte = b[paramInt].a(arrayOfByte, i);
            if (paramArrayOfByte != c.b) {
              break label152;
            }
            d = paramInt;
          }
          for (a = c.b;; a = c.c)
          {
            return a;
            label152:
            if (paramArrayOfByte != c.c) {
              break;
            }
            c[paramInt] = false;
            e -= 1;
            if (e > 0) {
              break;
            }
          }
          label193:
          paramInt += 1;
        }
      }
    }
  }
  
  public final float b()
  {
    float f1 = 0.0F;
    float f2;
    if (a == c.b)
    {
      f2 = 0.99F;
      return f2;
    }
    if (a == c.c) {
      return 0.01F;
    }
    int i = 0;
    for (;;)
    {
      f2 = f1;
      if (i >= b.length) {
        break;
      }
      f2 = f1;
      if (c[i] != 0)
      {
        float f3 = b[i].b();
        f2 = f1;
        if (f1 < f3)
        {
          d = i;
          f2 = f3;
        }
      }
      i += 1;
      f1 = f2;
    }
  }
  
  public final c c()
  {
    return a;
  }
  
  public final void d()
  {
    int i = 0;
    e = 0;
    while (i < b.length)
    {
      b[i].d();
      c[i] = true;
      e += 1;
      i += 1;
    }
    d = -1;
    a = c.a;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */