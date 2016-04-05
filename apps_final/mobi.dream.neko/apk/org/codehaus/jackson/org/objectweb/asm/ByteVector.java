package org.codehaus.jackson.org.objectweb.asm;

public class ByteVector
{
  byte[] a;
  int b;
  
  public ByteVector()
  {
    a = new byte[64];
  }
  
  public ByteVector(int paramInt)
  {
    a = new byte[paramInt];
  }
  
  private void a(int paramInt)
  {
    int i = a.length * 2;
    paramInt = b + paramInt;
    if (i > paramInt) {
      paramInt = i;
    }
    for (;;)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(a, 0, arrayOfByte, 0, b);
      a = arrayOfByte;
      return;
    }
  }
  
  ByteVector a(int paramInt1, int paramInt2)
  {
    int i = b;
    if (i + 2 > a.length) {
      a(2);
    }
    byte[] arrayOfByte = a;
    int j = i + 1;
    arrayOfByte[i] = ((byte)paramInt1);
    arrayOfByte[j] = ((byte)paramInt2);
    b = (j + 1);
    return this;
  }
  
  ByteVector b(int paramInt1, int paramInt2)
  {
    int j = b;
    if (j + 3 > a.length) {
      a(3);
    }
    byte[] arrayOfByte = a;
    int i = j + 1;
    arrayOfByte[j] = ((byte)paramInt1);
    paramInt1 = i + 1;
    arrayOfByte[i] = ((byte)(paramInt2 >>> 8));
    arrayOfByte[paramInt1] = ((byte)paramInt2);
    b = (paramInt1 + 1);
    return this;
  }
  
  public ByteVector putByte(int paramInt)
  {
    int i = b;
    if (i + 1 > a.length) {
      a(1);
    }
    a[i] = ((byte)paramInt);
    b = (i + 1);
    return this;
  }
  
  public ByteVector putByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (b + paramInt2 > a.length) {
      a(paramInt2);
    }
    if (paramArrayOfByte != null) {
      System.arraycopy(paramArrayOfByte, paramInt1, a, b, paramInt2);
    }
    b += paramInt2;
    return this;
  }
  
  public ByteVector putInt(int paramInt)
  {
    int j = b;
    if (j + 4 > a.length) {
      a(4);
    }
    byte[] arrayOfByte = a;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 24));
    j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 16));
    i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 8));
    arrayOfByte[i] = ((byte)paramInt);
    b = (i + 1);
    return this;
  }
  
  public ByteVector putLong(long paramLong)
  {
    int k = b;
    if (k + 8 > a.length) {
      a(8);
    }
    byte[] arrayOfByte = a;
    int i = (int)(paramLong >>> 32);
    int j = k + 1;
    arrayOfByte[k] = ((byte)(i >>> 24));
    k = j + 1;
    arrayOfByte[j] = ((byte)(i >>> 16));
    int m = k + 1;
    arrayOfByte[k] = ((byte)(i >>> 8));
    j = m + 1;
    arrayOfByte[m] = ((byte)i);
    i = (int)paramLong;
    k = j + 1;
    arrayOfByte[j] = ((byte)(i >>> 24));
    j = k + 1;
    arrayOfByte[k] = ((byte)(i >>> 16));
    k = j + 1;
    arrayOfByte[j] = ((byte)(i >>> 8));
    arrayOfByte[k] = ((byte)i);
    b = (k + 1);
    return this;
  }
  
  public ByteVector putShort(int paramInt)
  {
    int i = b;
    if (i + 2 > a.length) {
      a(2);
    }
    byte[] arrayOfByte = a;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8));
    arrayOfByte[j] = ((byte)paramInt);
    b = (j + 1);
    return this;
  }
  
  public ByteVector putUTF8(String paramString)
  {
    int n = paramString.length();
    int j = b;
    if (j + 2 + n > a.length) {
      a(n + 2);
    }
    byte[] arrayOfByte = a;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(n >>> 8));
    j = i + 1;
    arrayOfByte[i] = ((byte)n);
    i = 0;
    int k;
    for (;;)
    {
      if (i < n)
      {
        k = paramString.charAt(i);
        if ((k >= 1) && (k <= 127))
        {
          arrayOfByte[j] = ((byte)k);
          i += 1;
          j += 1;
        }
        else
        {
          int m = i;
          k = i;
          int i1;
          if (m < n)
          {
            i1 = paramString.charAt(m);
            if ((i1 >= 1) && (i1 <= 127)) {
              k += 1;
            }
            for (;;)
            {
              m += 1;
              break;
              if (i1 > 2047) {
                k += 3;
              } else {
                k += 2;
              }
            }
          }
          arrayOfByte[b] = ((byte)(k >>> 8));
          arrayOfByte[(b + 1)] = ((byte)k);
          if (b + 2 + k > arrayOfByte.length)
          {
            b = j;
            a(k + 2);
            arrayOfByte = a;
            k = i;
            if (k < n)
            {
              m = paramString.charAt(k);
              if ((m >= 1) && (m <= 127))
              {
                i = j + 1;
                arrayOfByte[j] = ((byte)m);
              }
              for (;;)
              {
                k += 1;
                j = i;
                break;
                if (m > 2047)
                {
                  i = j + 1;
                  arrayOfByte[j] = ((byte)(m >> 12 & 0xF | 0xE0));
                  j = i + 1;
                  arrayOfByte[i] = ((byte)(m >> 6 & 0x3F | 0x80));
                  i = j + 1;
                  arrayOfByte[j] = ((byte)(m & 0x3F | 0x80));
                }
                else
                {
                  i1 = j + 1;
                  arrayOfByte[j] = ((byte)(m >> 6 & 0x1F | 0xC0));
                  i = i1 + 1;
                  arrayOfByte[i1] = ((byte)(m & 0x3F | 0x80));
                }
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      b = j;
      return this;
      k = i;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.ByteVector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */