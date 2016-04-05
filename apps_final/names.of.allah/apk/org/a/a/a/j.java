package org.a.a.a;

import java.nio.ByteBuffer;

public final class j
  extends b
{
  private static final byte[] d = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 0, 1, 7, 1, 1, 1, 1, 1, 1, 5, 1, 5, 0, 5, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 7, 0, 7, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 1, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 7, 7, 7 };
  private static final byte[] e = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 1, 2, 1, 2, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 1, 3, 1, 1, 1, 3, 0, 3, 1, 3, 1, 1, 3, 3 };
  private c a;
  private byte b;
  private int[] c = new int[4];
  
  public j()
  {
    d();
  }
  
  public final String a()
  {
    return org.a.a.b.r;
  }
  
  public final c a(byte[] paramArrayOfByte, int paramInt)
  {
    int i1 = 0;
    Object localObject = ByteBuffer.allocate(paramInt);
    int k = 0;
    int m = 0;
    int j = 0;
    int i;
    if (k < paramInt + 0)
    {
      i = paramArrayOfByte[k];
      if (i == 62) {
        j = 0;
      }
      for (;;)
      {
        int n = m;
        if (b.a(i))
        {
          n = m;
          if (b.b(i))
          {
            if ((k > m) && (j == 0))
            {
              ((ByteBuffer)localObject).put(paramArrayOfByte, m, k - m);
              ((ByteBuffer)localObject).put((byte)32);
            }
            n = k + 1;
          }
        }
        k += 1;
        m = n;
        break;
        if (i == 60) {
          j = 1;
        }
      }
    }
    if ((j == 0) && (k > m)) {
      ((ByteBuffer)localObject).put(paramArrayOfByte, m, k - m);
    }
    paramArrayOfByte = ((ByteBuffer)localObject).array();
    j = ((ByteBuffer)localObject).position();
    paramInt = i1;
    for (;;)
    {
      if (paramInt < j)
      {
        k = paramArrayOfByte[paramInt];
        i = d[(k & 0xFF)];
        k = e[(b * 8 + i)];
        if (k == 0) {
          a = c.c;
        }
      }
      else
      {
        return a;
      }
      localObject = c;
      localObject[k] += 1;
      b = i;
      paramInt += 1;
    }
  }
  
  public final float b()
  {
    int j = 0;
    if (a == c.c) {
      return 0.01F;
    }
    int i = 0;
    while (i < c.length)
    {
      j += c[i];
      i += 1;
    }
    if (j <= 0) {}
    for (float f1 = 0.0F;; f1 = c[3] * 1.0F / j - c[1] * 20.0F / j)
    {
      float f2 = f1;
      if (f1 < 0.0F) {
        f2 = 0.0F;
      }
      return f2 * 0.5F;
    }
  }
  
  public final c c()
  {
    return a;
  }
  
  public final void d()
  {
    a = c.a;
    b = 1;
    int i = 0;
    while (i < c.length)
    {
      c[i] = 0;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */