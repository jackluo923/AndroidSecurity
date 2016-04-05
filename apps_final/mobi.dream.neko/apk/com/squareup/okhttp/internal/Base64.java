package com.squareup.okhttp.internal;

import java.io.UnsupportedEncodingException;

public final class Base64
{
  private static final byte[] MAP = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  
  public static byte[] decode(byte[] paramArrayOfByte)
  {
    return decode(paramArrayOfByte, paramArrayOfByte.length);
  }
  
  public static byte[] decode(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt / 4 * 3;
    if (i == 0) {
      return Util.EMPTY_BYTE_ARRAY;
    }
    byte[] arrayOfByte = new byte[i];
    int j = 0;
    int k = paramInt;
    i = paramArrayOfByte[(k - 1)];
    paramInt = j;
    if (i != 10)
    {
      paramInt = j;
      if (i != 13)
      {
        paramInt = j;
        if (i != 32) {
          if (i != 9) {
            break label79;
          }
        }
      }
    }
    for (paramInt = j;; paramInt = j + 1)
    {
      k -= 1;
      j = paramInt;
      break;
      label79:
      if (i != 61) {
        break label93;
      }
    }
    label93:
    int n = 0;
    int i1 = 0;
    int m = 0;
    paramInt = 0;
    if (m < k)
    {
      i = paramArrayOfByte[m];
      if ((i == 10) || (i == 13) || (i == 32)) {
        break label369;
      }
      if (i != 9) {}
    }
    label166:
    label366:
    label369:
    for (;;)
    {
      m += 1;
      break;
      if ((i >= 65) && (i <= 90))
      {
        i -= 65;
        i1 = i1 << 6 | (byte)i;
        if (n % 4 != 3) {
          break label366;
        }
        i = paramInt + 1;
        arrayOfByte[paramInt] = ((byte)(i1 >> 16));
        int i2 = i + 1;
        arrayOfByte[i] = ((byte)(i1 >> 8));
        paramInt = i2 + 1;
        arrayOfByte[i2] = ((byte)i1);
      }
      for (;;)
      {
        n += 1;
        break;
        if ((i >= 97) && (i <= 122))
        {
          i -= 71;
          break label166;
        }
        if ((i >= 48) && (i <= 57))
        {
          i += 4;
          break label166;
        }
        if (i == 43)
        {
          i = 62;
          break label166;
        }
        if (i == 47)
        {
          i = 63;
          break label166;
        }
        return null;
        i = paramInt;
        if (j > 0)
        {
          k = i1 << j * 6;
          i = paramInt + 1;
          arrayOfByte[paramInt] = ((byte)(k >> 16));
          paramInt = i;
          if (j == 1)
          {
            paramInt = i + 1;
            arrayOfByte[i] = ((byte)(k >> 8));
            i = paramInt;
          }
        }
        else
        {
          paramInt = i;
        }
        paramArrayOfByte = new byte[paramInt];
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, paramInt);
        return paramArrayOfByte;
      }
    }
  }
  
  public static String encode(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[(paramArrayOfByte.length + 2) * 4 / 3];
    int k = paramArrayOfByte.length - paramArrayOfByte.length % 3;
    int j = 0;
    int i = 0;
    while (j < k)
    {
      int m = i + 1;
      arrayOfByte[i] = MAP[((paramArrayOfByte[j] & 0xFF) >> 2)];
      i = m + 1;
      arrayOfByte[m] = MAP[((paramArrayOfByte[j] & 0x3) << 4 | (paramArrayOfByte[(j + 1)] & 0xFF) >> 4)];
      m = i + 1;
      arrayOfByte[i] = MAP[((paramArrayOfByte[(j + 1)] & 0xF) << 2 | (paramArrayOfByte[(j + 2)] & 0xFF) >> 6)];
      i = m + 1;
      arrayOfByte[m] = MAP[(paramArrayOfByte[(j + 2)] & 0x3F)];
      j += 3;
    }
    switch (paramArrayOfByte.length % 3)
    {
    }
    for (;;)
    {
      try
      {
        paramArrayOfByte = new String(arrayOfByte, 0, i, "US-ASCII");
        return paramArrayOfByte;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        throw new AssertionError(paramArrayOfByte);
      }
      j = i + 1;
      arrayOfByte[i] = MAP[((paramArrayOfByte[k] & 0xFF) >> 2)];
      i = j + 1;
      arrayOfByte[j] = MAP[((paramArrayOfByte[k] & 0x3) << 4)];
      j = i + 1;
      arrayOfByte[i] = 61;
      arrayOfByte[j] = 61;
      i = j + 1;
      continue;
      j = i + 1;
      arrayOfByte[i] = MAP[((paramArrayOfByte[k] & 0xFF) >> 2)];
      i = j + 1;
      arrayOfByte[j] = MAP[((paramArrayOfByte[k] & 0x3) << 4 | (paramArrayOfByte[(k + 1)] & 0xFF) >> 4)];
      j = i + 1;
      arrayOfByte[i] = MAP[((paramArrayOfByte[(k + 1)] & 0xF) << 2)];
      i = j + 1;
      arrayOfByte[j] = 61;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Base64
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */