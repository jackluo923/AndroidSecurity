package org.a.a.a;

public final class i
  extends b
{
  b a = null;
  b b = null;
  private int c;
  private int d;
  private byte e;
  private byte f;
  
  public i()
  {
    d();
  }
  
  private static boolean c(byte paramByte)
  {
    paramByte &= 0xFF;
    return (paramByte == 234) || (paramByte == 237) || (paramByte == 239) || (paramByte == 243) || (paramByte == 245);
  }
  
  public final String a()
  {
    int i = c - d;
    if (i >= 5) {
      return org.a.a.b.t;
    }
    if (i <= -5) {
      return org.a.a.b.f;
    }
    float f1 = a.b() - b.b();
    if (f1 > 0.01F) {
      return org.a.a.b.t;
    }
    if (f1 < -0.01F) {
      return org.a.a.b.f;
    }
    if (i < 0) {
      return org.a.a.b.f;
    }
    return org.a.a.b.t;
  }
  
  public final c a(byte[] paramArrayOfByte, int paramInt)
  {
    if (c() == c.c) {
      return c.c;
    }
    int i = 0;
    if (i < paramInt + 0)
    {
      byte b1 = paramArrayOfByte[i];
      if (b1 == 32) {
        if (f != 32)
        {
          if (!c(e)) {
            break label87;
          }
          c += 1;
        }
      }
      for (;;)
      {
        f = e;
        e = b1;
        i += 1;
        break;
        label87:
        int j = e & 0xFF;
        if ((j == 235) || (j == 238) || (j == 240) || (j == 244)) {}
        for (j = 1;; j = 0)
        {
          if (j == 0) {
            break label154;
          }
          d += 1;
          break;
        }
        label154:
        continue;
        if ((f == 32) && (c(e)) && (b1 != 32)) {
          d += 1;
        }
      }
    }
    return c.a;
  }
  
  public final float b()
  {
    return 0.0F;
  }
  
  public final c c()
  {
    if ((a.c() == c.c) && (b.c() == c.c)) {
      return c.c;
    }
    return c.a;
  }
  
  public final void d()
  {
    c = 0;
    d = 0;
    e = 32;
    f = 32;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */