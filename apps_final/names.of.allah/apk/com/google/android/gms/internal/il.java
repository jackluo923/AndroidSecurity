package com.google.android.gms.internal;

import android.database.CharArrayBuffer;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public final class il
{
  public static byte[] a(InputStream paramInputStream, boolean paramBoolean)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['✐'];
    try
    {
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      if (!paramBoolean) {
        break label56;
      }
    }
    catch (IOException paramInputStream)
    {
      throw new RuntimeException(paramInputStream);
    }
    paramInputStream.close();
    label56:
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static void b(String paramString, CharArrayBuffer paramCharArrayBuffer)
  {
    if ((data == null) || (data.length < paramString.length())) {
      data = paramString.toCharArray();
    }
    for (;;)
    {
      sizeCopied = paramString.length();
      return;
      paramString.getChars(0, paramString.length(), data, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.il
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */