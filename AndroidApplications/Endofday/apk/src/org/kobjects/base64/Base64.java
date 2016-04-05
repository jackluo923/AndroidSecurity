package org.kobjects.base64;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class Base64
{
  static final char[] charTab;
  
  static
  {
    Object localObject = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    localObject = ((String)localObject).toCharArray();
    charTab = (char[])localObject;
  }
  
  static int decode(char paramChar)
  {
    char c4 = 'a';
    char c3 = 'A';
    char c2 = '0';
    char c1;
    if (paramChar >= c3)
    {
      c1 = 'Z';
      if (paramChar <= c1) {
        c1 = paramChar - c3;
      }
    }
    for (;;)
    {
      return c1;
      if (paramChar >= c4)
      {
        c1 = 'z';
        if (paramChar <= c1)
        {
          c1 = paramChar - c4;
          c1 += '\032';
          continue;
        }
      }
      if (paramChar >= c2)
      {
        c1 = '9';
        if (paramChar <= c1)
        {
          c1 = paramChar - c2;
          c1 += '\032';
          c1 += '\032';
          continue;
        }
      }
      int i;
      switch (paramChar)
      {
      default: 
        RuntimeException localRuntimeException = new java/lang/RuntimeException;
        Object localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        String str = "unexpected code: ";
        localObject = ((StringBuilder)localObject).append(str);
        localObject = ((StringBuilder)localObject).append(paramChar);
        localObject = ((StringBuilder)localObject).toString();
        localRuntimeException.<init>((String)localObject);
        throw localRuntimeException;
      case '+': 
        i = 62;
        break;
      case '/': 
        i = 63;
        break;
      case '=': 
        i = 0;
      }
    }
  }
  
  public static void decode(String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    int i4 = 61;
    int i = 0;
    int j = paramString.length();
    for (;;)
    {
      char c1;
      if (i < j)
      {
        c1 = paramString.charAt(i);
        char c2 = ' ';
        if (c1 <= c2)
        {
          i += 1;
          continue;
        }
      }
      if (i == j) {}
      int k;
      do
      {
        do
        {
          return;
          c1 = paramString.charAt(i);
          m = decode(c1);
          m <<= 18;
          int n = i + 1;
          n = paramString.charAt(n);
          int i1 = decode(n);
          i1 <<= 12;
          m += i1;
          i1 = i + 2;
          i1 = paramString.charAt(i1);
          int i2 = decode(i1);
          i2 <<= 6;
          m += i2;
          i2 = i + 3;
          i2 = paramString.charAt(i2);
          int i3 = decode(i2);
          k = m + i3;
          m = k >> 16;
          m += 255;
          paramOutputStream.write(m);
          m = i + 2;
          m = paramString.charAt(m);
        } while (m == i4);
        m = k >> 8;
        m += 255;
        paramOutputStream.write(m);
        m = i + 3;
        m = paramString.charAt(m);
      } while (m == i4);
      int m = k + 255;
      paramOutputStream.write(m);
      i += 4;
    }
  }
  
  public static byte[] decode(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new java/io/ByteArrayOutputStream;
    localByteArrayOutputStream.<init>();
    try
    {
      decode(paramString, localByteArrayOutputStream);
      localObject = localByteArrayOutputStream.toByteArray();
      return (byte[])localObject;
    }
    catch (IOException localIOException)
    {
      Object localObject = new java/lang/RuntimeException;
      ((RuntimeException)localObject).<init>();
      throw ((Throwable)localObject);
    }
  }
  
  public static String encode(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    StringBuffer localStringBuffer = null;
    Object localObject = encode(paramArrayOfByte, i, j, localStringBuffer);
    localObject = ((StringBuffer)localObject).toString();
    return (String)localObject;
  }
  
  public static StringBuffer encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null)
    {
      paramStringBuffer = new java/lang/StringBuffer;
      i1 = paramArrayOfByte.length;
      i1 *= 3;
      i1 /= 2;
      paramStringBuffer.<init>(i1);
    }
    int i1 = 3;
    int j = paramInt2 - i1;
    int k = paramInt1;
    int m = 0;
    int i;
    for (int n = m; k <= j; n = m)
    {
      i1 = paramArrayOfByte[k];
      i1 += 255;
      i1 <<= 16;
      i5 = k + 1;
      i5 = paramArrayOfByte[i5];
      i5 += 255;
      i5 <<= 8;
      i1 |= i5;
      i5 = k + 2;
      i5 = paramArrayOfByte[i5];
      i5 += 255;
      i = i1 | i5;
      char[] arrayOfChar1 = charTab;
      i5 = i >> 18;
      i5 &= 0x3F;
      char c1 = arrayOfChar1[i5];
      paramStringBuffer.append(c1);
      char[] arrayOfChar2 = charTab;
      i5 = i >> 12;
      i5 &= 0x3F;
      char c2 = arrayOfChar2[i5];
      paramStringBuffer.append(c2);
      char[] arrayOfChar3 = charTab;
      i5 = i >> 6;
      i5 &= 0x3F;
      char c3 = arrayOfChar3[i5];
      paramStringBuffer.append(c3);
      char[] arrayOfChar4 = charTab;
      i5 = i & 0x3F;
      int i2 = arrayOfChar4[i5];
      paramStringBuffer.append(i2);
      k += 3;
      m = n + 1;
      i2 = 14;
      if (n >= i2)
      {
        m = 0;
        String str1 = "\r\n";
        paramStringBuffer.append(str1);
      }
    }
    int i3 = paramInt1 + paramInt2;
    int i5 = 2;
    i3 -= i5;
    if (k == i3)
    {
      i3 = paramArrayOfByte[k];
      i3 += 255;
      i3 <<= 16;
      i5 = k + 1;
      i5 = paramArrayOfByte[i5];
      i5 += 255;
      i5 <<= 8;
      i = i3 | i5;
      char[] arrayOfChar5 = charTab;
      i5 = i >> 18;
      i5 &= 0x3F;
      char c4 = arrayOfChar5[i5];
      paramStringBuffer.append(c4);
      char[] arrayOfChar6 = charTab;
      i5 = i >> 12;
      i5 &= 0x3F;
      char c5 = arrayOfChar6[i5];
      paramStringBuffer.append(c5);
      char[] arrayOfChar7 = charTab;
      i5 = i >> 6;
      i5 &= 0x3F;
      char c6 = arrayOfChar7[i5];
      paramStringBuffer.append(c6);
      String str2 = "=";
      paramStringBuffer.append(str2);
    }
    for (;;)
    {
      return paramStringBuffer;
      int i4 = paramInt1 + paramInt2;
      i5 = 1;
      i4 -= i5;
      if (k == i4)
      {
        i4 = paramArrayOfByte[k];
        i4 += 255;
        i = i4 << 16;
        char[] arrayOfChar8 = charTab;
        i5 = i >> 18;
        i5 &= 0x3F;
        char c7 = arrayOfChar8[i5];
        paramStringBuffer.append(c7);
        char[] arrayOfChar9 = charTab;
        i5 = i >> 12;
        i5 &= 0x3F;
        char c8 = arrayOfChar9[i5];
        paramStringBuffer.append(c8);
        String str3 = "==";
        paramStringBuffer.append(str3);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.base64.Base64
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */