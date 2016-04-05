package org.a.a.a;

import java.util.Arrays;
import org.a.a.a.a.a;
import org.a.a.a.d.m;

public final class d
  extends b
{
  private static final m f = new org.a.a.a.d.c();
  private org.a.a.a.d.b a = new org.a.a.a.d.b(f);
  private c b;
  private a c = new a();
  private org.a.a.a.b.c d = new org.a.a.a.b.c();
  private byte[] e = new byte[2];
  
  public d()
  {
    d();
  }
  
  public final String a()
  {
    return org.a.a.b.i;
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
        break label167;
      }
      e[1] = paramArrayOfByte[0];
      c.a(e, 0, j);
      d.a(e, 0, j);
    }
    for (;;)
    {
      paramInt += 1;
      break;
      label167:
      c.a(paramArrayOfByte, paramInt - 1, j);
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
 * Qualified Name:     org.a.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */