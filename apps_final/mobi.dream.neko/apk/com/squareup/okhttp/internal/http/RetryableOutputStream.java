package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.AbstractOutputStream;
import com.squareup.okhttp.internal.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.ProtocolException;

final class RetryableOutputStream
  extends AbstractOutputStream
{
  private final ByteArrayOutputStream content;
  private final int limit;
  
  public RetryableOutputStream()
  {
    limit = -1;
    content = new ByteArrayOutputStream();
  }
  
  public RetryableOutputStream(int paramInt)
  {
    limit = paramInt;
    content = new ByteArrayOutputStream(paramInt);
  }
  
  public void close()
    throws IOException
  {
    try
    {
      boolean bool = closed;
      if (bool) {}
      do
      {
        return;
        closed = true;
      } while (content.size() >= limit);
      throw new ProtocolException("content-length promised " + limit + " bytes, but received " + content.size());
    }
    finally {}
  }
  
  public int contentLength()
    throws IOException
  {
    try
    {
      close();
      int i = content.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      checkNotClosed();
      Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
      if ((limit != -1) && (content.size() > limit - paramInt2)) {
        throw new ProtocolException("exceeded content-length limit of " + limit + " bytes");
      }
    }
    finally {}
    content.write(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void writeToSocket(OutputStream paramOutputStream)
    throws IOException
  {
    content.writeTo(paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.RetryableOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */