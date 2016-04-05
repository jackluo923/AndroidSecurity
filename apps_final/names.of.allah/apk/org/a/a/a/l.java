package org.a.a.a;

import java.nio.ByteBuffer;
import org.a.a.a.c.d;
import org.a.a.a.c.e;
import org.a.a.a.c.f;
import org.a.a.a.c.g;
import org.a.a.a.c.h;
import org.a.a.a.c.j;
import org.a.a.a.c.k;
import org.a.a.a.c.m;
import org.a.a.a.c.o;

public final class l
  extends b
{
  private static final org.a.a.a.c.l f = new org.a.a.a.c.n();
  private static final org.a.a.a.c.l g = new g();
  private static final org.a.a.a.c.l h = new org.a.a.a.c.i();
  private static final org.a.a.a.c.l i = new k();
  private static final org.a.a.a.c.l j = new f();
  private static final org.a.a.a.c.l k = new e();
  private static final org.a.a.a.c.l l = new j();
  private static final org.a.a.a.c.l m = new o();
  private static final org.a.a.a.c.l n = new h();
  private static final org.a.a.a.c.l o = new m();
  private static final org.a.a.a.c.l p = new d();
  private c a;
  private b[] b = new b[13];
  private boolean[] c = new boolean[13];
  private int d;
  private int e;
  
  public l()
  {
    b[0] = new n(f);
    b[1] = new n(g);
    b[2] = new n(h);
    b[3] = new n(i);
    b[4] = new n(j);
    b[5] = new n(k);
    b[6] = new n(l);
    b[7] = new n(m);
    b[8] = new n(n);
    b[9] = new n(o);
    i locali = new i();
    b[10] = locali;
    b[11] = new n(p, false, locali);
    b[12] = new n(p, true, locali);
    b localb1 = b[11];
    b localb2 = b[12];
    a = localb1;
    b = localb2;
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
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramInt);
    int i3 = 0;
    int i5 = 0;
    int i4 = 0;
    if (i3 < paramInt + 0)
    {
      byte b1 = paramArrayOfByte[i3];
      int i2;
      int i1;
      if (!b.a(b1))
      {
        i2 = 1;
        i1 = i5;
      }
      for (;;)
      {
        i3 += 1;
        i5 = i1;
        i4 = i2;
        break;
        i1 = i5;
        i2 = i4;
        if (b.b(b1)) {
          if ((i4 != 0) && (i3 > i5))
          {
            localByteBuffer.put(paramArrayOfByte, i5, i3 - i5);
            localByteBuffer.put((byte)32);
            i1 = i3 + 1;
            i2 = 0;
          }
          else
          {
            i1 = i3 + 1;
            i2 = i4;
          }
        }
      }
    }
    if ((i4 != 0) && (i3 > i5)) {
      localByteBuffer.put(paramArrayOfByte, i5, i3 - i5);
    }
    if (localByteBuffer.position() != 0) {
      paramInt = 0;
    }
    for (;;)
    {
      if (paramInt < b.length)
      {
        if (c[paramInt] == 0) {
          break label272;
        }
        paramArrayOfByte = b[paramInt].a(localByteBuffer.array(), localByteBuffer.position());
        if (paramArrayOfByte != c.b) {
          break label231;
        }
        d = paramInt;
      }
      for (a = c.b;; a = c.c)
      {
        return a;
        label231:
        if (paramArrayOfByte != c.c) {
          break;
        }
        c[paramInt] = false;
        e -= 1;
        if (e > 0) {
          break;
        }
      }
      label272:
      paramInt += 1;
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
    int i1 = 0;
    for (;;)
    {
      f2 = f1;
      if (i1 >= b.length) {
        break;
      }
      f2 = f1;
      if (c[i1] != 0)
      {
        float f3 = b[i1].b();
        f2 = f1;
        if (f1 < f3)
        {
          d = i1;
          f2 = f3;
        }
      }
      i1 += 1;
      f1 = f2;
    }
  }
  
  public final c c()
  {
    return a;
  }
  
  public final void d()
  {
    int i1 = 0;
    e = 0;
    while (i1 < b.length)
    {
      b[i1].d();
      c[i1] = true;
      e += 1;
      i1 += 1;
    }
    d = -1;
    a = c.a;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */