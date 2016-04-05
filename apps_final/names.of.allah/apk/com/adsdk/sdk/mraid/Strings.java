package com.adsdk.sdk.mraid;

import java.io.InputStream;

public class Strings
{
  public static String fromStream(InputStream paramInputStream)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    byte[] arrayOfByte = new byte['က'];
    for (int i = 0;; i = paramInputStream.read(arrayOfByte))
    {
      if (i == -1)
      {
        paramInputStream.close();
        return localStringBuffer.toString();
      }
      localStringBuffer.append(new String(arrayOfByte, 0, i));
    }
  }
  
  public static boolean isEmpty(String paramString)
  {
    if (paramString == null) {}
    while (paramString.length() != 0) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.Strings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */