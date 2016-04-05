package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;

abstract class AbstractHttpInputStream
  extends InputStream
{
  private final OutputStream cacheBody;
  private final CacheRequest cacheRequest;
  protected boolean closed;
  protected final HttpEngine httpEngine;
  protected final InputStream in;
  
  AbstractHttpInputStream(InputStream paramInputStream, HttpEngine paramHttpEngine, CacheRequest paramCacheRequest)
    throws IOException
  {
    in = paramInputStream;
    httpEngine = paramHttpEngine;
    if (paramCacheRequest != null) {}
    for (paramInputStream = paramCacheRequest.getBody();; paramInputStream = null)
    {
      if (paramInputStream == null) {
        paramCacheRequest = null;
      }
      cacheBody = paramInputStream;
      cacheRequest = paramCacheRequest;
      return;
    }
  }
  
  protected final void cacheWrite(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (cacheBody != null) {
      cacheBody.write(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
  
  protected final void checkNotClosed()
    throws IOException
  {
    if (closed) {
      throw new IOException("stream closed");
    }
  }
  
  protected final void endOfInput(boolean paramBoolean)
    throws IOException
  {
    if (cacheRequest != null) {
      cacheBody.close();
    }
    httpEngine.release(paramBoolean);
  }
  
  public final int read()
    throws IOException
  {
    return Util.readSingleByte(this);
  }
  
  protected final void unexpectedEndOfInput()
  {
    if (cacheRequest != null) {
      cacheRequest.abort();
    }
    httpEngine.release(true);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.AbstractHttpInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */