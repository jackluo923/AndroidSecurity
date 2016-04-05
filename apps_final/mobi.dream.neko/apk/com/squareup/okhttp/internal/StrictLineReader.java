package com.squareup.okhttp.internal;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class StrictLineReader
  implements Closeable
{
  private static final byte CR = 13;
  private static final byte LF = 10;
  private byte[] buf;
  private final Charset charset;
  private int end;
  private final InputStream in;
  private int pos;
  
  public StrictLineReader(InputStream paramInputStream, int paramInt, Charset paramCharset)
  {
    if ((paramInputStream == null) || (paramCharset == null)) {
      throw new NullPointerException();
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("capacity <= 0");
    }
    if (!paramCharset.equals(Util.US_ASCII)) {
      throw new IllegalArgumentException("Unsupported encoding");
    }
    in = paramInputStream;
    charset = paramCharset;
    buf = new byte[paramInt];
  }
  
  public StrictLineReader(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, 8192, paramCharset);
  }
  
  private void fillBuf()
    throws IOException
  {
    int i = in.read(buf, 0, buf.length);
    if (i == -1) {
      throw new EOFException();
    }
    pos = 0;
    end = i;
  }
  
  public void close()
    throws IOException
  {
    synchronized (in)
    {
      if (buf != null)
      {
        buf = null;
        in.close();
      }
      return;
    }
  }
  
  public int readInt()
    throws IOException
  {
    String str = readLine();
    try
    {
      int i = Integer.parseInt(str);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new IOException("expected an int but was \"" + str + "\"");
    }
  }
  
  public String readLine()
    throws IOException
  {
    synchronized (in)
    {
      if (buf == null) {
        throw new IOException("LineReader is closed");
      }
    }
    if (pos >= end) {
      fillBuf();
    }
    int i = pos;
    for (;;)
    {
      if (i != end)
      {
        if (buf[i] != 10) {
          break label265;
        }
        if ((i == pos) || (buf[(i - 1)] != 13)) {
          break label259;
        }
      }
      label259:
      for (int j = i - 1;; j = i)
      {
        Object localObject2 = new String(buf, pos, j - pos, charset.name());
        pos = (i + 1);
        return (String)localObject2;
        localObject2 = new ByteArrayOutputStream(end - pos + 80)
        {
          public String toString()
          {
            if ((count > 0) && (buf[(count - 1)] == 13)) {}
            for (int i = count - 1;; i = count) {
              try
              {
                String str = new String(buf, 0, i, charset.name());
                return str;
              }
              catch (UnsupportedEncodingException localUnsupportedEncodingException)
              {
                throw new AssertionError(localUnsupportedEncodingException);
              }
            }
          }
        };
        for (;;)
        {
          ((ByteArrayOutputStream)localObject2).write(buf, pos, end - pos);
          end = -1;
          fillBuf();
          i = pos;
          while (i != end)
          {
            if (buf[i] == 10)
            {
              if (i != pos) {
                ((ByteArrayOutputStream)localObject2).write(buf, pos, i - pos);
              }
              pos = (i + 1);
              localObject2 = ((ByteArrayOutputStream)localObject2).toString();
              return (String)localObject2;
            }
            i += 1;
          }
        }
      }
      label265:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.StrictLineReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */