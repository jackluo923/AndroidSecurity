package com.google.b.a.a;

import java.util.Arrays;

public final class j
{
  final int a;
  final byte[] b;
  
  j(int paramInt, byte[] paramArrayOfByte)
  {
    a = paramInt;
    b = paramArrayOfByte;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof j)) {
        return false;
      }
      paramObject = (j)paramObject;
    } while ((a == a) && (Arrays.equals(b, b)));
    return false;
  }
  
  public final int hashCode()
  {
    int j = a + 527;
    int i = 0;
    while (i < b.length)
    {
      j = j * 31 + b[i];
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */