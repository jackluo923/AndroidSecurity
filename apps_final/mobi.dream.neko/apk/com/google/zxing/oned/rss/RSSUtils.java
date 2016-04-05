package com.google.zxing.oned.rss;

public final class RSSUtils
{
  private static int combins(int paramInt1, int paramInt2)
  {
    int i;
    if (paramInt1 - paramInt2 > paramInt2) {
      i = paramInt2;
    }
    int m;
    int n;
    for (int j = paramInt1 - paramInt2;; j = paramInt2)
    {
      paramInt2 = 1;
      m = 1;
      int k = paramInt1;
      for (paramInt1 = m;; paramInt1 = m)
      {
        m = paramInt1;
        n = paramInt2;
        if (k <= j) {
          break;
        }
        n = paramInt2 * k;
        m = paramInt1;
        paramInt2 = n;
        if (paramInt1 <= i)
        {
          paramInt2 = n / paramInt1;
          m = paramInt1 + 1;
        }
        k -= 1;
      }
      i = paramInt1 - paramInt2;
    }
    while (m <= i)
    {
      n /= m;
      m += 1;
    }
    return n;
  }
  
  static int[] elements(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[paramArrayOfInt.length + 2];
    int m = paramInt2 << 1;
    arrayOfInt[0] = 1;
    paramInt2 = 10;
    int k = 1;
    int i = 1;
    while (i < m - 2)
    {
      arrayOfInt[i] = (paramArrayOfInt[(i - 1)] - arrayOfInt[(i - 1)]);
      arrayOfInt[(i + 1)] = (paramArrayOfInt[i] - arrayOfInt[i]);
      k += arrayOfInt[i] + arrayOfInt[(i + 1)];
      int j = paramInt2;
      if (arrayOfInt[i] < paramInt2) {
        j = arrayOfInt[i];
      }
      i += 2;
      paramInt2 = j;
    }
    arrayOfInt[(m - 1)] = (paramInt1 - k);
    paramInt1 = paramInt2;
    if (arrayOfInt[(m - 1)] < paramInt2) {
      paramInt1 = arrayOfInt[(m - 1)];
    }
    if (paramInt1 > 1)
    {
      paramInt2 = 0;
      while (paramInt2 < m)
      {
        arrayOfInt[paramInt2] += paramInt1 - 1;
        i = paramInt2 + 1;
        arrayOfInt[i] -= paramInt1 - 1;
        paramInt2 += 2;
      }
    }
    return arrayOfInt;
  }
  
  public static int getRSSvalue(int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    int i4 = paramArrayOfInt.length;
    int i = 0;
    int k = paramArrayOfInt.length;
    int j = 0;
    while (j < k)
    {
      i += paramArrayOfInt[j];
      j += 1;
    }
    int i1 = 0;
    j = 0;
    int m = 0;
    int n = i;
    while (m < i4 - 1)
    {
      int i2 = 1;
      i = j | 1 << m;
      if (i2 < paramArrayOfInt[m])
      {
        k = combins(n - i2 - 1, i4 - m - 2);
        j = k;
        if (paramBoolean)
        {
          j = k;
          if (i == 0)
          {
            j = k;
            if (n - i2 - (i4 - m - 1) >= i4 - m - 1) {
              j = k - combins(n - i2 - (i4 - m), i4 - m - 2);
            }
          }
        }
        if (i4 - m - 1 > 1)
        {
          int i3 = 0;
          k = n - i2 - (i4 - m - 2);
          while (k > paramInt)
          {
            i3 += combins(n - i2 - k - 1, i4 - m - 3);
            k -= 1;
          }
          k = j - (i4 - 1 - m) * i3;
        }
        for (;;)
        {
          i1 += k;
          i2 += 1;
          i &= (1 << m ^ 0xFFFFFFFF);
          break;
          k = j;
          if (n - i2 > paramInt) {
            k = j - 1;
          }
        }
      }
      n -= i2;
      m += 1;
      j = i;
    }
    return i1;
  }
  
  static int[] getRSSwidths(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    int[] arrayOfInt = new int[paramInt3];
    int i = 0;
    int k = 0;
    int j = paramInt2;
    paramInt2 = i;
    if (k < paramInt3 - 1)
    {
      paramInt2 |= 1 << k;
      int m = 1;
      int n = paramInt1;
      paramInt1 = paramInt2;
      for (;;)
      {
        i = combins(j - m - 1, paramInt3 - k - 2);
        paramInt2 = i;
        if (paramBoolean)
        {
          paramInt2 = i;
          if (paramInt1 == 0)
          {
            paramInt2 = i;
            if (j - m - (paramInt3 - k - 1) >= paramInt3 - k - 1) {
              paramInt2 = i - combins(j - m - (paramInt3 - k), paramInt3 - k - 2);
            }
          }
        }
        if (paramInt3 - k - 1 > 1)
        {
          int i1 = 0;
          i = j - m - (paramInt3 - k - 2);
          while (i > paramInt4)
          {
            i1 += combins(j - m - i - 1, paramInt3 - k - 3);
            i -= 1;
          }
          i = paramInt2 - (paramInt3 - 1 - k) * i1;
        }
        for (;;)
        {
          n -= i;
          if (n >= 0) {
            break label266;
          }
          i = n + i;
          j -= m;
          arrayOfInt[k] = m;
          k += 1;
          paramInt2 = paramInt1;
          paramInt1 = i;
          break;
          i = paramInt2;
          if (j - m > paramInt4) {
            i = paramInt2 - 1;
          }
        }
        label266:
        m += 1;
        paramInt1 &= (1 << k ^ 0xFFFFFFFF);
      }
    }
    arrayOfInt[k] = j;
    return arrayOfInt;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.RSSUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */