package org.a.a.a;

import java.util.Arrays;
import org.a.a.a.d.m;

public final class f
  extends b
{
  private static final m e = new org.a.a.a.d.e();
  private org.a.a.a.d.b a = new org.a.a.a.d.b(e);
  private c b;
  private org.a.a.a.b.e c = new org.a.a.a.b.e();
  private byte[] d = new byte[2];
  
  public f()
  {
    d();
  }
  
  public final String a()
  {
    return org.a.a.b.k;
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
        break label92;
      }
    }
    for (b = c.c;; b = c.b)
    {
      d[0] = paramArrayOfByte[(i - 1)];
      if ((b == c.a) && (c.c()) && (c.a() > 0.95F)) {
        b = c.b;
      }
      return b;
      label92:
      if (j != 2) {
        break;
      }
    }
    if (j == 0)
    {
      j = a.a();
      if (paramInt != 0) {
        break label156;
      }
      d[1] = paramArrayOfByte[0];
      c.a(d, 0, j);
    }
    for (;;)
    {
      paramInt += 1;
      break;
      label156:
      c.a(paramArrayOfByte, paramInt - 1, j);
    }
  }
  
  public final float b()
  {
    return c.a();
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
    Arrays.fill(d, (byte)0);
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */