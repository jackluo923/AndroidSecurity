package org.a.a.a;

import org.a.a.a.d.m;
import org.a.a.a.d.n;

public final class o
  extends b
{
  private static final m d = new n();
  private org.a.a.a.d.b a = new org.a.a.a.d.b(d);
  private c b;
  private int c = 0;
  
  public o()
  {
    d();
  }
  
  public final String a()
  {
    return org.a.a.b.u;
  }
  
  public final c a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    for (;;)
    {
      int j;
      if (i < paramInt + 0)
      {
        j = a.a(paramArrayOfByte[i]);
        if (j != 1) {
          break label66;
        }
      }
      for (b = c.c;; b = c.b)
      {
        if ((b == c.a) && (b() > 0.95F)) {
          b = c.b;
        }
        return b;
        label66:
        if (j != 2) {
          break;
        }
      }
      if ((j == 0) && (a.a() >= 2)) {
        c += 1;
      }
      i += 1;
    }
  }
  
  public final float b()
  {
    float f1 = 0.99F;
    float f2 = f1;
    if (c < 6)
    {
      int i = 0;
      while (i < c)
      {
        f1 *= 0.5F;
        i += 1;
      }
      f2 = 1.0F - f1;
    }
    return f2;
  }
  
  public final c c()
  {
    return b;
  }
  
  public final void d()
  {
    a.b();
    c = 0;
    b = c.a;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */