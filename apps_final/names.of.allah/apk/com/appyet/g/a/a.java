package com.appyet.g.a;

import java.util.HashMap;

public final class a
{
  private static final char[] a = "=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
  private static final HashMap<Character, Byte> b = new HashMap();
  
  static
  {
    int i = 0;
    while (i < a.length)
    {
      b.put(Character.valueOf(a[i]), Byte.valueOf((byte)i));
      i += 1;
    }
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder((paramArrayOfByte.length + 2) / 3 * 4);
    paramArrayOfByte = b(paramArrayOfByte);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      localStringBuilder.append(a[(paramArrayOfByte[i] + 1)]);
      if (i % 72 == 71) {
        localStringBuilder.append("\n");
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String a(Byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = paramArrayOfByte[i].byteValue();
      i += 1;
    }
    return a(arrayOfByte);
  }
  
  public static byte[] a(String paramString)
  {
    Object localObject = paramString.replaceAll("\\r|\\n", "");
    if (((String)localObject).length() % 4 != 0) {
      throw new IllegalArgumentException("The length of the input string must be a multiple of four.");
    }
    if (!((String)localObject).matches("^[A-Za-z0-9+/]*[=]{0,3}$")) {
      throw new IllegalArgumentException("The argument contains illegal characters.");
    }
    paramString = new byte[((String)localObject).length() * 3 / 4];
    char[] arrayOfChar = ((String)localObject).toCharArray();
    int i = 0;
    int j = 0;
    while (i < arrayOfChar.length)
    {
      int i2 = ((Byte)b.get(Character.valueOf(arrayOfChar[i]))).byteValue();
      int n = ((Byte)b.get(Character.valueOf(arrayOfChar[(i + 1)]))).byteValue() - 1;
      int k = ((Byte)b.get(Character.valueOf(arrayOfChar[(i + 2)]))).byteValue() - 1;
      int m = ((Byte)b.get(Character.valueOf(arrayOfChar[(i + 3)]))).byteValue();
      int i1 = j + 1;
      paramString[j] = ((byte)(i2 - 1 << 2 | n >>> 4));
      i2 = i1 + 1;
      paramString[i1] = ((byte)((n & 0xF) << 4 | k >>> 2));
      j = i2 + 1;
      paramString[i2] = ((byte)(m - 1 & 0x3F | (k & 0x3) << 6));
      i += 4;
    }
    if (((String)localObject).endsWith("="))
    {
      localObject = new byte[paramString.length - (((String)localObject).length() - ((String)localObject).indexOf("="))];
      System.arraycopy(paramString, 0, localObject, 0, localObject.length);
      return (byte[])localObject;
    }
    return paramString;
  }
  
  public static String b(String paramString)
  {
    return a(paramString.getBytes());
  }
  
  private static byte[] b(byte[] paramArrayOfByte)
  {
    int i = 0;
    byte[] arrayOfByte1 = new byte[(paramArrayOfByte.length + 2) / 3 * 4];
    byte[] arrayOfByte2 = new byte[(paramArrayOfByte.length + 2) / 3 * 3];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, 0, paramArrayOfByte.length);
    int j = 0;
    while (i < arrayOfByte2.length)
    {
      int k = j + 1;
      arrayOfByte1[j] = ((byte)((arrayOfByte2[i] & 0xFF) >>> 2));
      j = k + 1;
      arrayOfByte1[k] = ((byte)((arrayOfByte2[i] & 0x3) << 4 | (arrayOfByte2[(i + 1)] & 0xFF) >>> 4));
      k = j + 1;
      arrayOfByte1[j] = ((byte)((arrayOfByte2[(i + 1)] & 0xF) << 2 | (arrayOfByte2[(i + 2)] & 0xFF) >>> 6));
      j = k + 1;
      arrayOfByte1[k] = ((byte)(arrayOfByte2[(i + 2)] & 0x3F));
      i += 3;
    }
    i = arrayOfByte2.length - paramArrayOfByte.length;
    while (i > 0)
    {
      arrayOfByte1[(arrayOfByte1.length - i)] = -1;
      i -= 1;
    }
    return arrayOfByte1;
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */