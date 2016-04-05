package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.net.CacheRequest;

final class UnknownLengthHttpInputStream
  extends AbstractHttpInputStream
{
  private boolean inputExhausted;
  
  UnknownLengthHttpInputStream(InputStream paramInputStream, CacheRequest paramCacheRequest, HttpEngine paramHttpEngine)
    throws IOException
  {
    super(paramInputStream, paramHttpEngine, paramCacheRequest);
  }
  
  public int available()
    throws IOException
  {
    checkNotClosed();
    if (in == null) {
      return 0;
    }
    return in.available();
  }
  
  public void close()
    throws IOException
  {
    if (closed) {}
    do
    {
      return;
      closed = true;
    } while (inputExhausted);
    unexpectedEndOfInput();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    checkNotClosed();
    if ((in == null) || (inputExhausted)) {
      return -1;
    }
    paramInt2 = in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 == -1)
    {
      inputExhausted = true;
      endOfInput(false);
      return -1;
    }
    cacheWrite(paramArrayOfByte, paramInt1, paramInt2);
    return paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.UnknownLengthHttpInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */