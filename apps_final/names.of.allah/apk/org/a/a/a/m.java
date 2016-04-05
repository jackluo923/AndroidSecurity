package org.a.a.a;

import java.util.Arrays;
import org.a.a.a.a.d;
import org.a.a.a.b.h;
import org.a.a.a.d.l;

public final class m
  extends b
{
  private static final org.a.a.a.d.m f = new l();
  private org.a.a.a.d.b a = new org.a.a.a.d.b(f);
  private c b;
  private d c = new d();
  private h d = new h();
  private byte[] e = new byte[2];
  
  public m()
  {
    d();
  }
  
  public final String a()
  {
    return org.a.a.b.l;
  }
  
  public final c a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 0;
    paramInt = 0;
    int j;
    if (paramInt < i)
    {
      j = a.a(paramArrayOfByte[paramInt]);
      if (j != 1) {
        break label89;
      }
    }
    for (b = c.c;; b = c.b)
    {
      e[0] = paramArrayOfByte[(i - 1)];
      if ((b == c.a) && (c.c()) && (b() > 0.95F)) {
        b = c.b;
      }
      return b;
      label89:
      if (j != 2) {
        break;
      }
    }
    if (j == 0)
    {
      j = a.a();
      if (paramInt != 0) {
        break label170;
      }
      e[1] = paramArrayOfByte[0];
      c.a(e, 2 - j, j);
      d.a(e, 0, j);
    }
    for (;;)
    {
      paramInt += 1;
      break;
      label170:
      c.a(paramArrayOfByte, paramInt + 1 - j, j);
      d.a(paramArrayOfByte, paramInt - 1, j);
    }
  }
  
  public final float b()
  {
    return Math.max(c.a(), d.a());
  }
  
  public final c c()
  {
    return b;
  }
  
  public final void d()
  {
    a.b();
    b = c.a;
    c.b();
    d.b();
    Arrays.fill(e, (byte)0);
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */