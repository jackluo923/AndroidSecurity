package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Route;
import java.net.HttpURLConnection;
import java.net.SecureCacheResponse;
import java.net.URL;
import java.util.Set;

final class HttpsURLConnectionImpl$HttpUrlConnectionDelegate
  extends HttpURLConnectionImpl
{
  private HttpsURLConnectionImpl$HttpUrlConnectionDelegate(URL paramURL, OkHttpClient paramOkHttpClient, OkResponseCache paramOkResponseCache, Set<Route> paramSet)
  {
    super(paramOkHttpClient, paramOkResponseCache, paramSet, localSet);
  }
  
  protected HttpURLConnection getHttpConnectionToCache()
  {
    return this$0;
  }
  
  public SecureCacheResponse getSecureCacheResponse()
  {
    if ((httpEngine instanceof HttpsURLConnectionImpl.HttpsEngine)) {
      return (SecureCacheResponse)httpEngine.getCacheResponse();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpsURLConnectionImpl.HttpUrlConnectionDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */