package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;

abstract interface Transport
{
  public abstract OutputStream createRequestBody()
    throws IOException;
  
  public abstract void flushRequest()
    throws IOException;
  
  public abstract InputStream getTransferStream(CacheRequest paramCacheRequest)
    throws IOException;
  
  public abstract boolean makeReusable(boolean paramBoolean, OutputStream paramOutputStream, InputStream paramInputStream);
  
  public abstract ResponseHeaders readResponseHeaders()
    throws IOException;
  
  public abstract void writeRequestBody(RetryableOutputStream paramRetryableOutputStream)
    throws IOException;
  
  public abstract void writeRequestHeaders()
    throws IOException;
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.Transport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */