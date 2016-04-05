package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.TunnelRequest;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.CacheResponse;
import java.net.SecureCacheResponse;
import java.net.URL;
import javax.net.ssl.SSLSocket;

public final class HttpsURLConnectionImpl$HttpsEngine
  extends HttpEngine
{
  private SSLSocket sslSocket;
  
  public HttpsURLConnectionImpl$HttpsEngine(HttpURLConnectionImpl paramHttpURLConnectionImpl, String paramString, RawHeaders paramRawHeaders, Connection paramConnection, RetryableOutputStream paramRetryableOutputStream)
    throws IOException
  {
    super(paramHttpURLConnectionImpl, paramString, paramRawHeaders, paramConnection, paramRetryableOutputStream);
    if (paramConnection != null) {}
    for (paramHttpURLConnectionImpl = (SSLSocket)paramConnection.getSocket();; paramHttpURLConnectionImpl = null)
    {
      sslSocket = paramHttpURLConnectionImpl;
      return;
    }
  }
  
  protected boolean acceptCacheResponseType(CacheResponse paramCacheResponse)
  {
    return paramCacheResponse instanceof SecureCacheResponse;
  }
  
  protected void connected(Connection paramConnection)
  {
    sslSocket = ((SSLSocket)paramConnection.getSocket());
  }
  
  protected TunnelRequest getTunnelConfig()
  {
    Object localObject2 = requestHeaders.getUserAgent();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = getDefaultUserAgent();
    }
    localObject2 = policy.getURL();
    return new TunnelRequest(((URL)localObject2).getHost(), Util.getEffectivePort((URL)localObject2), (String)localObject1, requestHeaders.getProxyAuthorization());
  }
  
  protected boolean includeAuthorityInRequestLine()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpsURLConnectionImpl.HttpsEngine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */