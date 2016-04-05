package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.ResponseSource;
import java.io.IOException;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

public final class OkResponseCacheAdapter
  implements OkResponseCache
{
  private final ResponseCache responseCache;
  
  public OkResponseCacheAdapter(ResponseCache paramResponseCache)
  {
    responseCache = paramResponseCache;
  }
  
  public CacheResponse get(URI paramURI, String paramString, Map<String, List<String>> paramMap)
    throws IOException
  {
    return responseCache.get(paramURI, paramString, paramMap);
  }
  
  public CacheRequest put(URI paramURI, URLConnection paramURLConnection)
    throws IOException
  {
    return responseCache.put(paramURI, paramURLConnection);
  }
  
  public void trackConditionalCacheHit() {}
  
  public void trackResponse(ResponseSource paramResponseSource) {}
  
  public void update(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection)
    throws IOException
  {}
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.OkResponseCacheAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */