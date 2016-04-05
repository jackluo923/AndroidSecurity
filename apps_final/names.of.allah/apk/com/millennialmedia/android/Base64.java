package com.millennialmedia.android;

import java.util.Arrays;

class Base64
{
  private static final char[] CA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
  private static final int[] IA;
  
  static
  {
    int[] arrayOfInt = new int['Ā'];
    IA = arrayOfInt;
    Arrays.fill(arrayOfInt, -1);
    int j = CA.length;
    int i = 0;
    while (i < j)
    {
      IA[CA[i]] = i;
      i += 1;
    }
    IA[61] = 0;
  }
  
  public static final byte[] decode(String paramString)
  {
    if (paramString != null) {}
    for (int i = paramString.length(); i == 0; i = 0) {
      return new byte[0];
    }
    int k = 0;
    for (int j = 0; k < i; j = m)
    {
      m = j;
      if (IA[paramString.charAt(k)] < 0) {
        m = j + 1;
      }
      k += 1;
    }
    if ((i - j) % 4 != 0) {
      return null;
    }
    k = i;
    int m = 0;
    int n;
    while (k > 1)
    {
      localObject = IA;
      n = k - 1;
      if (localObject[paramString.charAt(n)] > 0) {
        break;
      }
      k = n;
      if (paramString.charAt(n) == '=')
      {
        m += 1;
        k = n;
      }
    }
    int i1 = ((i - j) * 6 >> 3) - m;
    Object localObject = new byte[i1];
    k = 0;
    i = 0;
    if (k < i1)
    {
      m = 0;
      n = 0;
      j = i;
      i = n;
      if (i < 4)
      {
        n = IA[paramString.charAt(j)];
        if (n >= 0) {
          m |= n << 18 - i * 6;
        }
        for (;;)
        {
          i += 1;
          j += 1;
          break;
          i -= 1;
        }
      }
      n = k + 1;
      localObject[k] = ((byte)(m >> 16));
      i = n;
      if (n < i1)
      {
        i = n + 1;
        localObject[n] = ((byte)(m >> 8));
        if (i >= i1) {
          break label303;
        }
        k = i + 1;
        localObject[i] = ((byte)m);
        i = k;
      }
    }
    label303:
    for (;;)
    {
      k = i;
      i = j;
      break;
      return (byte[])localObject;
    }
  }
  
  public static final byte[] decode(byte[] paramArrayOfByte)
  {
    int m = paramArrayOfByte.length;
    int j = 0;
    for (int i = 0; j < m; i = k)
    {
      k = i;
      if (IA[(paramArrayOfByte[j] & 0xFF)] < 0) {
        k = i + 1;
      }
      j += 1;
    }
    if ((m - i) % 4 != 0) {
      return null;
    }
    j = m;
    int k = 0;
    int n;
    while (j > 1)
    {
      localObject = IA;
      n = j - 1;
      if (localObject[(paramArrayOfByte[n] & 0xFF)] > 0) {
        break;
      }
      j = n;
      if (paramArrayOfByte[n] == 61)
      {
        k += 1;
        j = n;
      }
    }
    int i1 = ((m - i) * 6 >> 3) - k;
    Object localObject = new byte[i1];
    k = 0;
    i = 0;
    if (k < i1)
    {
      m = 0;
      n = 0;
      j = i;
      i = n;
      if (i < 4)
      {
        n = IA[(paramArrayOfByte[j] & 0xFF)];
        if (n >= 0) {
          m |= n << 18 - i * 6;
        }
        for (;;)
        {
          i += 1;
          j += 1;
          break;
          i -= 1;
        }
      }
      n = k + 1;
      localObject[k] = ((byte)(m >> 16));
      i = n;
      if (n < i1)
      {
        i = n + 1;
        localObject[n] = ((byte)(m >> 8));
        if (i >= i1) {
          break label283;
        }
        k = i + 1;
        localObject[i] = ((byte)m);
        i = k;
      }
    }
    label283:
    for (;;)
    {
      k = i;
      i = j;
      break;
      return (byte[])localObject;
    }
  }
  
  public static final char[] encodeToChar(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int i1 = 0;
    if (paramArrayOfByte != null) {}
    for (int m = paramArrayOfByte.length; m == 0; m = 0) {
      return new char[0];
    }
    int i5 = m / 3 * 3;
    int k = (m - 1) / 3 + 1 << 2;
    if (paramBoolean) {}
    int i6;
    char[] arrayOfChar;
    int n;
    for (int j = (k - 1) / 76 << 1;; j = 0)
    {
      i6 = k + j;
      arrayOfChar = new char[i6];
      j = 0;
      k = 0;
      n = 0;
      while (n < i5)
      {
        int i2 = n + 1;
        n = paramArrayOfByte[n];
        int i3 = i2 + 1;
        int i4 = paramArrayOfByte[i2];
        i2 = i3 + 1;
        n = (i4 & 0xFF) << 8 | (n & 0xFF) << 16 | paramArrayOfByte[i3] & 0xFF;
        i3 = k + 1;
        arrayOfChar[k] = CA[(n >>> 18 & 0x3F)];
        k = i3 + 1;
        arrayOfChar[i3] = CA[(n >>> 12 & 0x3F)];
        i4 = k + 1;
        arrayOfChar[k] = CA[(n >>> 6 & 0x3F)];
        i3 = i4 + 1;
        arrayOfChar[i4] = CA[(n & 0x3F)];
        k = i3;
        n = i2;
        if (paramBoolean)
        {
          i4 = j + 1;
          j = i4;
          k = i3;
          n = i2;
          if (i4 == 19)
          {
            j = i4;
            k = i3;
            n = i2;
            if (i3 < i6 - 2)
            {
              j = i3 + 1;
              arrayOfChar[i3] = '\r';
              arrayOfChar[j] = '\n';
              k = j + 1;
              j = 0;
              n = i2;
            }
          }
        }
      }
    }
    k = m - i5;
    if (k > 0)
    {
      n = paramArrayOfByte[i5];
      j = i1;
      if (k == 2) {
        j = (paramArrayOfByte[(m - 1)] & 0xFF) << 2;
      }
      j |= (n & 0xFF) << 10;
      arrayOfChar[(i6 - 4)] = CA[(j >> 12)];
      arrayOfChar[(i6 - 3)] = CA[(j >>> 6 & 0x3F)];
      if (k != 2) {
        break label454;
      }
    }
    label454:
    for (int i = CA[(j & 0x3F)];; i = 61)
    {
      arrayOfChar[(i6 - 2)] = i;
      arrayOfChar[(i6 - 1)] = '=';
      return arrayOfChar;
    }
  }
  
  public static final String encodeToString(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    return new String(encodeToChar(paramArrayOfByte, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.Base64
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */