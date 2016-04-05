package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.OkResponseCache;
import java.io.IOException;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

class HttpResponseCache$1
  implements OkResponseCache
{
  HttpResponseCache$1(HttpResponseCache paramHttpResponseCache) {}
  
  public CacheResponse get(URI paramURI, String paramString, Map<String, List<String>> paramMap)
    throws IOException
  {
    return this$0.get(paramURI, paramString, paramMap);
  }
  
  public CacheRequest put(URI paramURI, URLConnection paramURLConnection)
    throws IOException
  {
    return this$0.put(paramURI, paramURLConnection);
  }
  
  public void trackConditionalCacheHit()
  {
    HttpResponseCache.access$100(this$0);
  }
  
  public void trackResponse(ResponseSource paramResponseSource)
  {
    HttpResponseCache.access$200(this$0, paramResponseSource);
  }
  
  public void update(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    HttpResponseCache.access$000(this$0, paramCacheResponse, paramHttpURLConnection);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.HttpResponseCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */