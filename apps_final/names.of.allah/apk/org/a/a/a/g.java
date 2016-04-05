package org.a.a.a;

import org.a.a.a.d.h;
import org.a.a.a.d.i;
import org.a.a.a.d.j;

public final class g
  extends b
{
  private static final org.a.a.a.d.g e = new org.a.a.a.d.g();
  private static final h f = new h();
  private static final i g = new i();
  private static final j h = new j();
  private org.a.a.a.d.b[] a = new org.a.a.a.d.b[4];
  private int b;
  private c c;
  private String d;
  
  public g()
  {
    a[0] = new org.a.a.a.d.b(e);
    a[1] = new org.a.a.a.d.b(f);
    a[2] = new org.a.a.a.d.b(g);
    a[3] = new org.a.a.a.d.b(h);
    d();
  }
  
  public final String a()
  {
    return d;
  }
  
  public final c a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    while ((i < paramInt + 0) && (c == c.a))
    {
      int j = b - 1;
      if (j >= 0)
      {
        int k = a[j].a(paramArrayOfByte[i]);
        if (k == 1)
        {
          b -= 1;
          if (b <= 0)
          {
            c = c.c;
            return c;
          }
          if (j != b)
          {
            localb = a[b];
            a[b] = a[j];
            a[j] = localb;
          }
        }
        while (k != 2)
        {
          org.a.a.a.d.b localb;
          j -= 1;
          break;
        }
        c = c.b;
        d = a[j].c();
        return c;
      }
      i += 1;
    }
    return c;
  }
  
  public final float b()
  {
    return 0.99F;
  }
  
  public final c c()
  {
    return c;
  }
  
  public final void d()
  {
    c = c.a;
    int i = 0;
    while (i < a.length)
    {
      a[i].b();
      i += 1;
    }
    b = a.length;
    d = null;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */