package com.a.a.c;

import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;

public final class c
{
  public static void a(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception paramCloseable) {}
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte[32768];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte, 0, 32768);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */