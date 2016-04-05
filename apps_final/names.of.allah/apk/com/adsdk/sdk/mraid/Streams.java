package com.adsdk.sdk.mraid;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Streams
{
  public static void closeStream(Closeable paramCloseable)
  {
    if (paramCloseable == null) {
      return;
    }
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void copyContent(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    if ((paramInputStream == null) || (paramOutputStream == null)) {
      throw new IOException("Unable to copy from or to a null stream.");
    }
    byte[] arrayOfByte = new byte[65536];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  public static void copyContent(InputStream paramInputStream, OutputStream paramOutputStream, long paramLong)
  {
    if ((paramInputStream == null) || (paramOutputStream == null)) {
      throw new IOException("Unable to copy from or to a null stream.");
    }
    byte[] arrayOfByte = new byte[65536];
    long l = 0L;
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return;
      }
      l += i;
      if (l >= paramLong) {
        throw new IOException("Error copying content: attempted to copy " + l + " bytes, with " + paramLong + " maximum.");
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.Streams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */