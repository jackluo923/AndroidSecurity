package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.net.CacheRequest;
import java.net.ProtocolException;

class HttpTransport$FixedLengthInputStream
  extends AbstractHttpInputStream
{
  private int bytesRemaining;
  
  public HttpTransport$FixedLengthInputStream(InputStream paramInputStream, CacheRequest paramCacheRequest, HttpEngine paramHttpEngine, int paramInt)
    throws IOException
  {
    super(paramInputStream, paramHttpEngine, paramCacheRequest);
    bytesRemaining = paramInt;
    if (bytesRemaining == 0) {
      endOfInput(false);
    }
  }
  
  public int available()
    throws IOException
  {
    checkNotClosed();
    if (bytesRemaining == 0) {
      return 0;
    }
    return Math.min(in.available(), bytesRemaining);
  }
  
  public void close()
    throws IOException
  {
    if (closed) {
      return;
    }
    if ((bytesRemaining != 0) && (!HttpTransport.access$200(httpEngine, this))) {
      unexpectedEndOfInput();
    }
    closed = true;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    checkNotClosed();
    if (bytesRemaining == 0) {
      paramInt1 = -1;
    }
    do
    {
      return paramInt1;
      paramInt2 = in.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, bytesRemaining));
      if (paramInt2 == -1)
      {
        unexpectedEndOfInput();
        throw new ProtocolException("unexpected end of stream");
      }
      bytesRemaining -= paramInt2;
      cacheWrite(paramArrayOfByte, paramInt1, paramInt2);
      paramInt1 = paramInt2;
    } while (bytesRemaining != 0);
    endOfInput(false);
    return paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpTransport.FixedLengthInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */