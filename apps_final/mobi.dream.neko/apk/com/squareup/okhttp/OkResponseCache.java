package com.squareup.okhttp;

import java.io.IOException;
import java.net.CacheResponse;
import java.net.HttpURLConnection;

public abstract interface OkResponseCache
{
  public abstract void trackConditionalCacheHit();
  
  public abstract void trackResponse(ResponseSource paramResponseSource);
  
  public abstract void update(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection)
    throws IOException;
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.OkResponseCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */