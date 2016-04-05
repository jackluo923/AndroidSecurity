package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import com.squareup.okhttp.internal.spdy.SpdyStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.URI;
import java.net.URL;

public final class SpdyTransport
  implements Transport
{
  private final HttpEngine httpEngine;
  private final SpdyConnection spdyConnection;
  private SpdyStream stream;
  
  public SpdyTransport(HttpEngine paramHttpEngine, SpdyConnection paramSpdyConnection)
  {
    httpEngine = paramHttpEngine;
    spdyConnection = paramSpdyConnection;
  }
  
  public OutputStream createRequestBody()
    throws IOException
  {
    writeRequestHeaders();
    return stream.getOutputStream();
  }
  
  public void flushRequest()
    throws IOException
  {
    stream.getOutputStream().close();
  }
  
  public InputStream getTransferStream(CacheRequest paramCacheRequest)
    throws IOException
  {
    return new UnknownLengthHttpInputStream(stream.getInputStream(), paramCacheRequest, httpEngine);
  }
  
  public boolean makeReusable(boolean paramBoolean, OutputStream paramOutputStream, InputStream paramInputStream)
  {
    if (paramBoolean)
    {
      if (stream != null) {
        stream.closeLater(5);
      }
    }
    else {
      return true;
    }
    return false;
  }
  
  public ResponseHeaders readResponseHeaders()
    throws IOException
  {
    RawHeaders localRawHeaders = RawHeaders.fromNameValueBlock(stream.getResponseHeaders());
    localRawHeaders.computeResponseStatusLineFromSpdyHeaders();
    httpEngine.receiveHeaders(localRawHeaders);
    return new ResponseHeaders(httpEngine.uri, localRawHeaders);
  }
  
  public void writeRequestBody(RetryableOutputStream paramRetryableOutputStream)
    throws IOException
  {
    throw new UnsupportedOperationException();
  }
  
  public void writeRequestHeaders()
    throws IOException
  {
    if (stream != null) {
      return;
    }
    httpEngine.writingRequestHeaders();
    RawHeaders localRawHeaders = httpEngine.requestHeaders.getHeaders();
    if (httpEngine.connection.getHttpMinorVersion() == 1) {}
    for (String str = "HTTP/1.1";; str = "HTTP/1.0")
    {
      URL localURL = httpEngine.policy.getURL();
      localRawHeaders.addSpdyRequestHeaders(httpEngine.method, HttpEngine.requestPath(localURL), str, HttpEngine.getOriginAddress(localURL), httpEngine.uri.getScheme());
      boolean bool = httpEngine.hasRequestBody();
      stream = spdyConnection.newStream(localRawHeaders.toNameValueBlock(), bool, true);
      stream.setReadTimeout(httpEngine.policy.getReadTimeout());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.SpdyTransport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */