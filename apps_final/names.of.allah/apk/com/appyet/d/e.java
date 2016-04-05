package com.appyet.d;

import java.security.MessageDigest;

public final class e
{
  public static String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes("iso-8859-1"), 0, paramString.length());
      paramString = b(localMessageDigest.digest());
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte, 0, paramArrayOfByte.length);
      paramArrayOfByte = b(localMessageDigest.digest());
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return null;
  }
  
  private static String b(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    int k;
    int j;
    if (i < paramArrayOfByte.length)
    {
      k = paramArrayOfByte[i] >>> 4 & 0xF;
      j = 0;
    }
    for (;;)
    {
      if ((k >= 0) && (k <= 9)) {
        localStringBuffer.append((char)(k + 48));
      }
      for (;;)
      {
        k = paramArrayOfByte[i];
        if (j <= 0) {
          break label89;
        }
        i += 1;
        break;
        localStringBuffer.append((char)(k - 10 + 97));
      }
      return localStringBuffer.toString();
      label89:
      j += 1;
      k &= 0xF;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */