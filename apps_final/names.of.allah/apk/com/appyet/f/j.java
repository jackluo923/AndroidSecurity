package com.appyet.f;

public final class j
{
  private static final String a;
  private static char[] b;
  private static byte[] c;
  
  static
  {
    int m = 0;
    a = System.getProperty("line.separator");
    b = new char[64];
    int i = 65;
    int j = 0;
    while (i <= 90)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    i = 97;
    while (i <= 122)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    i = 48;
    while (i <= 57)
    {
      b[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    b[j] = '+';
    b[(j + 1)] = '/';
    c = new byte[''];
    j = 0;
    int k;
    for (;;)
    {
      k = m;
      if (j >= c.length) {
        break;
      }
      c[j] = -1;
      j += 1;
    }
    while (k < 64)
    {
      c[b[k]] = ((byte)k);
      k += 1;
    }
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length;
    String str = a;
    int i = (j + 57 - 1) / 57;
    int k = (j + 2) / 3;
    StringBuilder localStringBuilder = new StringBuilder(i * str.length() + k * 4);
    i = 0;
    while (i < j)
    {
      k = Math.min(j - i, 57);
      localStringBuilder.append(a(paramArrayOfByte, i + 0, k));
      localStringBuilder.append(str);
      i += k;
    }
    return localStringBuilder.toString();
  }
  
  public static byte[] a(String paramString)
  {
    int n = 0;
    char[] arrayOfChar = new char[paramString.length()];
    int k = 0;
    int m;
    for (int j = 0; k < paramString.length(); j = m)
    {
      int i = paramString.charAt(k);
      m = j;
      if (i != 32)
      {
        m = j;
        if (i != 13)
        {
          m = j;
          if (i != 10)
          {
            m = j;
            if (i != 9)
            {
              arrayOfChar[j] = i;
              m = j + 1;
            }
          }
        }
      }
      k += 1;
    }
    k = j;
    if (j % 4 != 0) {
      throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    }
    while ((k > 0) && (arrayOfChar[(k + 0 - 1)] == '=')) {
      k -= 1;
    }
    int i1 = k * 3 / 4;
    paramString = new byte[i1];
    int i2 = k + 0;
    k = 0;
    j = n;
    int i3;
    if (j < i2)
    {
      m = j + 1;
      i3 = arrayOfChar[j];
      j = m + 1;
      int i4 = arrayOfChar[m];
      if (j < i2)
      {
        m = arrayOfChar[j];
        j += 1;
        if (j >= i2) {
          break label261;
        }
        n = arrayOfChar[j];
        j += 1;
      }
      for (;;)
      {
        if ((i3 <= 127) && (i4 <= 127) && (m <= 127) && (n <= 127)) {
          break label268;
        }
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
        m = 65;
        break;
        label261:
        n = 65;
      }
      label268:
      int i5 = c[i3];
      i4 = c[i4];
      i3 = c[m];
      n = c[n];
      if ((i5 < 0) || (i4 < 0) || (i3 < 0) || (n < 0)) {
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
      }
      m = k + 1;
      paramString[k] = ((byte)(i5 << 2 | i4 >>> 4));
      if (m >= i1) {
        break label420;
      }
      k = m + 1;
      paramString[m] = ((byte)((i4 & 0xF) << 4 | i3 >>> 2));
    }
    for (;;)
    {
      if (k < i1)
      {
        m = k + 1;
        paramString[k] = ((byte)((i3 & 0x3) << 6 | n));
        k = m;
      }
      for (;;)
      {
        break;
        return paramString;
      }
      label420:
      k = m;
    }
  }
  
  private static char[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int n = (paramInt2 * 4 + 2) / 3;
    char[] arrayOfChar = new char[(paramInt2 + 2) / 3 * 4];
    int i1 = paramInt1 + paramInt2;
    paramInt2 = 0;
    if (paramInt1 < i1)
    {
      int j = paramInt1 + 1;
      int i2 = paramArrayOfByte[paramInt1] & 0xFF;
      int k;
      if (j < i1)
      {
        paramInt1 = paramArrayOfByte[j] & 0xFF;
        k = j + 1;
        j = paramInt1;
        paramInt1 = k;
        label75:
        if (paramInt1 >= i1) {
          break label218;
        }
        k = paramInt1 + 1;
        int m = paramArrayOfByte[paramInt1] & 0xFF;
        paramInt1 = k;
        k = m;
        label102:
        m = paramInt2 + 1;
        arrayOfChar[paramInt2] = b[(i2 >>> 2)];
        paramInt2 = m + 1;
        arrayOfChar[m] = b[((i2 & 0x3) << 4 | j >>> 4)];
        if (paramInt2 >= n) {
          break label224;
        }
        i = b[((j & 0xF) << 2 | k >>> 6)];
        label168:
        arrayOfChar[paramInt2] = i;
        paramInt2 += 1;
        if (paramInt2 >= n) {
          break label230;
        }
      }
      label218:
      label224:
      label230:
      for (int i = b[(k & 0x3F)];; i = 61)
      {
        arrayOfChar[paramInt2] = i;
        paramInt2 += 1;
        break;
        k = 0;
        paramInt1 = j;
        j = k;
        break label75;
        k = 0;
        break label102;
        i = 61;
        break label168;
      }
    }
    return arrayOfChar;
  }
  
  public static String b(String paramString)
  {
    return new String(b(paramString.getBytes()));
  }
  
  private static char[] b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */