package org.kobjects.io;

import java.io.IOException;
import java.io.InputStream;

public class BoundInputStream
  extends InputStream
{
  InputStream is;
  int remaining;
  
  public BoundInputStream(InputStream paramInputStream, int paramInt)
  {
    is = paramInputStream;
    remaining = paramInt;
  }
  
  public int available()
    throws IOException
  {
    InputStream localInputStream = is;
    int i = localInputStream.available();
    int j = remaining;
    if (i < j) {}
    for (j = i;; j = remaining) {
      return j;
    }
  }
  
  public void close()
  {
    try
    {
      InputStream localInputStream = is;
      localInputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public int read()
    throws IOException
  {
    int i = remaining;
    if (i <= 0) {}
    InputStream localInputStream;
    int j;
    for (i = -1;; j = localInputStream.read())
    {
      return i;
      i = remaining;
      int k = 1;
      i -= k;
      remaining = i;
      localInputStream = is;
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int j = remaining;
    if (paramInt2 > j) {
      paramInt2 = remaining;
    }
    InputStream localInputStream = is;
    int i = localInputStream.read(paramArrayOfByte, paramInt1, paramInt2);
    if (i > 0)
    {
      int k = remaining;
      k -= i;
      remaining = k;
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     org.kobjects.io.BoundInputStream
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */